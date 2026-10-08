"""Checkpointed outward whole-box certificates for the 1271 supplied leaves.

INWARD ADAPTER (NoFourMUBS, 6 Oct 2026): identical to certify_leaves.py except that the input list is a
pinned file given by INWARD_INPUT / INWARD_INPUT_SHA256 (environment) instead of inputs/remaining_1271.jsonl,
and up to 128 worker processes are allowed.  Acceptance, geometry, guards and replay are unchanged.

Native Taylor arithmetic is the pinned upstream implementation. Exact rational
Taylor enclosures replace only its transcendental input wrapper. Acceptance
remains conditional on the stated physical algebra; no Lean admission is made.
"""
from pathlib import Path
from fractions import Fraction as Q
from functools import lru_cache
from concurrent.futures import ProcessPoolExecutor, wait, FIRST_COMPLETED
from multiprocessing import get_context
import argparse
import collections
import ctypes
import fcntl
import gzip
import hashlib
import itertools
import json
import math
import os
import resource
import shutil
import subprocess
import sys
import tempfile
import time

HERE = Path(__file__).resolve().parent
MODULE = HERE / 'upstream/ProvenResults/Patch2442Region_v3'
_LIB = None
_ORDER = None
_BACKEND = None
_BINARY_SHA = None
_DRIVER_SHA = None
EXPECTED_INPUT_SHA256 = '794a881e0016eedb50966d2f4c94b2f50ed59459b383742bef5d407b51057ee2'


class Budget(Exception):
    pass


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def atomic_json(path, obj):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(path.name + '.tmp')
    if path.suffix == '.gz':
        with gzip.open(tmp, 'wt', compresslevel=3) as f:
            json.dump(obj, f, separators=(',', ':'), allow_nan=False)
    else:
        tmp.write_text(json.dumps(obj, indent=2, allow_nan=False) + '\n')
    os.replace(tmp, path)


def down(q):
    x = float(q)
    while Q(x) > q:
        x = math.nextafter(x, -math.inf)
    return x


def up(q):
    x = float(q)
    while Q(x) < q:
        x = math.nextafter(x, math.inf)
    return x


@lru_cache(maxsize=2048)
def phase(q):
    if abs(q) >= 4:
        raise ValueError('Phase input outside supported range')
    c, s, power, factorial = Q(0), Q(0), Q(1), 1
    for k in range(80):
        if k % 2:
            s += (-1) ** ((k - 1) // 2) * power / factorial
        else:
            c += (-1) ** (k // 2) * power / factorial
        power *= q
        factorial *= k + 1
    error = abs(power) / factorial
    return [down(c-error), up(c+error), down(s-error), up(s+error)]


def check_sources():
    for manifest, base in [('INPUTS.json', MODULE), ('PINNED_UPSTREAM.json', HERE/'upstream')]:
        for item in json.loads((MODULE/manifest).read_text())['files']:
            if sha(base/item['path']) != item['sha256']:
                raise ValueError('Upstream pin mismatch: ' + item['path'])
    read_inputs()


def read_inputs():
    """Hash and parse the same captured bytes, including under python -O."""
    raw = Path(os.environ['INWARD_INPUT']).read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != os.environ['INWARD_INPUT_SHA256']:
        raise ValueError('Pinned input-list hash mismatch')
    rows = [json.loads(line) for line in raw.splitlines()]
    if len({r['id'] for r in rows})!=len(rows):
        raise ValueError('Input uniqueness mismatch')
    for r in rows:
        if len(r['centers'])!=4 or len(r['radii'])!=4 or not all(type(x)==str for x in r['centers']+r['radii']):
            raise ValueError('Inputs require four exact rational strings')
    return rows,digest


def build(order, backend='mean', fresh=False, build_root=None):
    check_sources()
    if order not in (3, 4, 5):
        raise ValueError('Use upstream-supported order')
    source = MODULE/'mean_engine.cpp' if backend=='mean' else HERE/'signed_linear_engine.cpp'
    target = (Path(build_root) if build_root is not None else HERE/'build')/f'{backend}_order{order}.so'
    target.parent.mkdir(parents=True,exist_ok=True)
    if fresh or not target.exists():
        cmd = ['c++', '-O3', f'-DTM_ORDER={order}', '-std=c++17', '-fno-fast-math',
               '-ffp-contract=off', '-fPIC', '-shared', str(source),
               '-o', str(target)]
        subprocess.run(cmd, check=True, capture_output=True, text=True, timeout=60)
        atomic_json(target.with_suffix('.build.json'), {
            'command': cmd, 'binary_sha256': sha(target),
            'native_source_sha256': sha(source),
            'taylor_source_sha256': sha(MODULE/'taylor.hpp'),
            'interval_source_sha256': sha(MODULE.parent/'SignedCornerPSDPrune/engine.cpp'),
            'compiler': subprocess.check_output(['c++','--version'],text=True).splitlines()[0],
            'python':sys.version, 'order':order})
    receipt = json.loads(target.with_suffix('.build.json').read_text())
    if receipt['binary_sha256'] != sha(target) or receipt['order'] != order:
        raise ValueError('Native build receipt mismatch')
    for key, path in [('native_source_sha256', source),
                      ('taylor_source_sha256', MODULE/'taylor.hpp'),
                      ('interval_source_sha256', MODULE.parent/'SignedCornerPSDPrune/engine.cpp')]:
        if receipt[key] != sha(path):
            raise ValueError('Native source receipt mismatch: '+key)
    return target


def init(binary, order, backend='mean'):
    global _LIB, _ORDER, _BACKEND, _BINARY_SHA, _DRIVER_SHA
    _ORDER = order
    _BACKEND = backend
    _BINARY_SHA = sha(binary)
    _DRIVER_SHA = sha(__file__)
    _LIB = ctypes.CDLL(str(binary))
    if sha(binary)!=_BINARY_SHA:
        raise ValueError('Library changed during loading')
    dp = ctypes.POINTER(ctypes.c_double)
    fn = getattr(_LIB, 'mean_region' if backend=='mean' else 'linear_region')
    fn.argtypes = [dp, dp]
    fn.restype = ctypes.c_int
    _LIB.set_budget.argtypes = [ctypes.c_double]
    _LIB.set_budget.restype = None


def evaluate(c, r, transpose):
    perm = (0,2,1,3) if transpose else (0,1,2,3)
    data = sum((phase(c[k]) for k in perm), []) + [up(r[k]) for k in perm]
    count = 26 if _BACKEND=='mean' else 38
    out = (ctypes.c_double*count)()
    fn = getattr(_LIB, 'mean_region' if _BACKEND=='mean' else 'linear_region')
    code = fn((ctypes.c_double*20)(*data), out)
    if code == -2:
        raise Budget('native_cpu_budget')
    if code != count:
        raise ArithmeticError('Native arithmetic status '+str(code))
    values = list(out)
    if not all(math.isfinite(v) for v in values) or any(values[i]>values[i+1] for i in range(0,count-4,2)):
        raise ArithmeticError('Malformed native interval')
    return values


def signs(co):
    if co[1] <= 0:
        return {-1,1}, 'R_nonpositive'
    low, high = max(Q(0), Q(co[0])), Q(co[1])
    excluded = set()
    for j in range(3):
        k = 4+6*j
        c, f = Q(co[k]), Q(co[k+2])
        if c > 0 and f > 0:
            return {-1,1}, 'criterion_3_2'
        for sign in (-1,1):
            y = Q(co[k+4] if sign == 1 else -co[k+5])
            ok = False
            if c >= 0 and y >= 0:
                ok = c > 0 or (y > 0 and low > 0)
            elif c > 0 and y < 0:
                ok = c*c > y*y*high
            elif c < 0 and y > 0 and low > 0:
                ok = y*y*low > c*c
            if ok:
                excluded.add(sign)
    return excluded, 'signed_3_1' if excluded else 'unresolved_mean'


def linear_sign(a, y, h):
    """Prove the sign of A+y*q for q>0, H=A*A-y*y*q*q.

    These are sufficient tests from interval signs and a difference of squares;
    q>0 is the original physical strict-R hypothesis, not a sampled bound.
    """
    al, ah = a; yl, yh = y; hl, hh = h
    if ((al>=0 and yl>=0 and (al>0 or yl>0)) or
        (al>0 and hl>0) or (yl>0 and hh<0)):
        return 1
    if ((ah<=0 and yh<=0 and (ah<0 or yh<0)) or
        (ah<0 and hl>0) or (yh<0 and hh<0)):
        return -1
    return 0


def linear_signs(co):
    if co[1]<=0:
        return {-1,1}, 'R_nonpositive'
    excluded=set()
    for j in range(3):
        k=4+10*j
        a,km,kp,hm,hp=[co[k+i:k+i+2] for i in range(0,10,2)]
        # For sigma=+1, require A+(B-D)q<=0<=A+(B+D)q.
        # For sigma=-1, require A-(B+D)q<=0<=A-(B-D)q.
        # D=3 Delta>0 physically. The four linear forms are distinct.
        plus_upper=linear_sign(a,km,hm)
        plus_lower=linear_sign(a,kp,hp)
        minus_upper=linear_sign(a,[-kp[1],-kp[0]],hp)
        minus_lower=linear_sign(a,[-km[1],-km[0]],hm)
        if plus_upper==1 or plus_lower==-1: excluded.add(1)
        if minus_upper==1 or minus_lower==-1: excluded.add(-1)
    return excluded, 'factored_signed_mean' if excluded else 'unresolved_mean'


def terminal(c, r):
    providers, seen, scores = [], set(), [0.0]*4
    for tr in (False,True):
        co = evaluate(c,r,tr)
        sg, why = (signs(co) if _BACKEND=='mean' else linear_signs(co))
        nc=len(co)-4
        providers.append({'transpose':tr, 'coefficients':co[:nc],
                          'signs':sorted(sg), 'reason':why})
        if len(sg) == 2:
            return {'ok':True,'reason':why,'providers':providers,'order':_ORDER,'backend':_BACKEND}
        if co[1] < 243:
            seen.update(-s if tr else s for s in sg)
        if seen == {-1,1}:
            return {'ok':True,'reason':'coupled_signed_means_non_Tao',
                    'providers':providers,'order':_ORDER,'backend':_BACKEND}
        perm = (0,2,1,3) if tr else (0,1,2,3)
        for i,k in enumerate(perm):
            scores[k] += co[nc+i]
    axis = max(range(4),key=lambda k:(scores[k],r[k]))
    return {'ok':False,'reason':'unresolved_mean','axis':axis,'providers':providers}


def geometry(row, path, splits):
    c, r = list(map(Q,row['centers'])), list(map(Q,row['radii']))
    for k,bit in enumerate(path):
        axis = splits[path[:k]]
        r[axis] /= 2
        c[axis] += (1 if bit=='1' else -1)*r[axis]
    return c,r


def audit_partition(closed, pending, splits):
    paths = list(closed)+list(pending)
    if not paths or len(set(paths)) != len(paths):
        raise ValueError('Empty or duplicate terminal partition')
    present = set(paths)
    for p in paths:
        if any(b not in '01' for b in p) or any(p[:j] in present for j in range(len(p))):
            raise ValueError('Non-prefix-free partition')
    if sum((Q(1,2**len(p)) for p in paths),Q(0)) != 1:
        raise ValueError('Missing region in partition')
    needed = {p[:j] for p in paths for j in range(len(p))}
    if set(splits) != needed or any(type(v)!=int or not 0<=v<4 for v in splits.values()):
        raise ValueError('Invalid split ledger')


def guard():
    if shutil.disk_usage(HERE).free < 8*2**30:
        raise Budget('disk_reserve_8GiB')
    rss = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
    if sys.platform != 'darwin':
        rss *= 1024
    if rss > 512*2**20:
        raise Budget('worker_peak_rss_512MiB')


def run_one(task):
    row, opts = task
    start = time.process_time()
    path = HERE/opts['state_set']/f"{row['id']}.json.gz"
    lock_path = path.with_suffix('.lock')
    path.parent.mkdir(exist_ok=True)
    with lock_path.open('a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        if path.exists():
            with gzip.open(path,'rt') as f:
                state=json.load(f)
            if state['input']!=row:
                raise ValueError('Input changed')
        else:
            state={'id':row['id'],'input':row,'pending':[''],'closed':{},'splits':{},
                   'total_cpu_seconds':0.0,'total_nodes':0,'attempts':0,'formal_admissions':0}
        audit_partition(state['closed'],state['pending'],state['splits'])
        if any(q['order']!=_ORDER or q.get('backend','mean')!=_BACKEND for q in state['closed'].values()):
            raise ValueError('Use a separate state set for each Taylor order and backend')
        if not state['pending']:
            return {'id':row['id'],'ok':True,'reason':'already_closed','cpu_seconds':0,
                    'leaves':len(state['closed']),'total_cpu_seconds':state['total_cpu_seconds']}
        state['attempts']+=1
        deadline=start+opts['cpu']
        _LIB.set_budget(max(.001,deadline-time.process_time()))
        reason='whole_box_signed_mean_cover'
        nodes=0
        while state['pending']:
            if time.process_time()>=deadline:
                reason='cpu_budget';break
            if nodes>=opts['nodes']:
                reason='node_budget';break
            try:
                guard()
            except Budget as ex:
                reason=str(ex);break
            p=state['pending'].pop()
            c,r=geometry(row,p,state['splits'])
            try:
                q=terminal(c,r)
            except Budget:
                state['pending'].append(p);reason='cpu_budget';break
            except Exception as ex:
                state['pending'].append(p);reason='arithmetic_exception'
                state['last_exception']=str(ex);break
            nodes+=1
            if q['ok']:
                state['closed'][p]=q
            elif len(p)>=opts['depth']:
                state['pending'].append(p);reason='depth_budget'
                state['last_diagnostic']=q;break
            else:
                state['splits'][p]=q['axis']
                state['pending'].extend([p+'1',p+'0'])
        audit_partition(state['closed'],state['pending'],state['splits'])
        cpu=time.process_time()-start
        state['total_cpu_seconds']+=cpu;state['total_nodes']+=nodes
        state['last_reason']=reason;state['ok']=not state['pending']
        state['producer_sha256']=sha(__file__)
        atomic_json(path,state)
        return {'id':row['id'],'ok':state['ok'],'reason':reason,'cpu_seconds':cpu,
                'leaves':len(state['closed']),'pending_nodes':len(state['pending']),
                'nodes':nodes,'total_cpu_seconds':state['total_cpu_seconds'],
                'state_sha256':sha(path)}


def replay_one(task):
    row,opts=task
    start=time.process_time();path=HERE/opts['state_set']/f"{row['id']}.json.gz"
    raw=path.read_bytes()
    state_digest=hashlib.sha256(raw).hexdigest()
    state=json.loads(gzip.decompress(raw))
    if state['input']!=row or state['pending'] or state.get('ok') is not True:
        raise ValueError('Not a closed certificate')
    audit_partition(state['closed'],[],state['splits'])
    counts=collections.Counter()
    for p,old in state['closed'].items():
        guard()
        if old['order']!=_ORDER or old.get('backend','mean')!=_BACKEND:raise ValueError('Replay backend/order differs')
        c,r=geometry(row,p,state['splits']);_LIB.set_budget(opts['cpu'])
        fresh=terminal(c,r)
        if fresh['ok'] is not True:
            raise ValueError('Fresh arithmetic failed '+str(row['id'])+' '+p)
        counts[fresh['reason']]+=1
    if sha(__file__)!=_DRIVER_SHA:
        raise ValueError('Replay driver changed during verification')
    receipt={'id':row['id'],'status':'PASS_WHOLE_BOX_REPLAY','leaves':len(state['closed']),
             'methods':dict(counts),'cpu_seconds':time.process_time()-start,
             'input_sha256':hashlib.sha256(json.dumps(row,sort_keys=True).encode()).hexdigest(),
             'certificate_sha256':state_digest,'verifier_sha256':_DRIVER_SHA,
             'native_binary_sha256':_BINARY_SHA,
             'formal_admissions':0}
    atomic_json(HERE/'replay'/opts['state_set']/f"{row['id']}.json",receipt)
    return receipt


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--mode',choices=['certify','replay'],default='certify')
    ap.add_argument('--jobs',type=int,default=2)
    ap.add_argument('--cpu',type=float,default=10)
    ap.add_argument('--depth',type=int,default=32)
    ap.add_argument('--nodes',type=int,default=8191)
    ap.add_argument('--order',type=int,default=4,choices=[3,4,5])
    ap.add_argument('--limit',type=int,default=0)
    ap.add_argument('--spread',action='store_true')
    ap.add_argument('--ids',nargs='*',type=int)
    ap.add_argument('--tag',required=True)
    ap.add_argument('--state-set',default='states')
    ap.add_argument('--backend',choices=['mean','linear'],default='mean')
    args=ap.parse_args()
    if not 1<=args.jobs<=128 or not 0<args.cpu<=300 or not 1<=args.depth<=48 or not 1<=args.nodes<=65535:
        ap.error('Unsupported resource limits')
    if '/' in args.tag or '..' in args.tag:ap.error('Invalid tag')
    if '/' in args.state_set or '..' in args.state_set or not args.state_set.startswith('states'):
        ap.error('Invalid state set')
    if (HERE/args.state_set/'INVALIDATED.md').exists():
        ap.error('This historical state set was invalidated; do not resume or replay it')
    receipt_path=HERE/'passes'/f'{args.tag}.json'
    if receipt_path.exists():ap.error('Use a fresh pass tag')
    guard()
    if args.mode=='replay':
        (HERE/'build').mkdir(exist_ok=True)
        isolated=Path(tempfile.mkdtemp(prefix='replay-',dir=HERE/'build'))
        binary=build(args.order,args.backend,fresh=True,build_root=isolated)
        binary.chmod(0o444)
    else:
        binary=build(args.order,args.backend)
    rows,input_digest=read_inputs()
    if args.ids is not None:
        wanted=set(args.ids);rows=[r for r in rows if r['id'] in wanted]
        if {r['id'] for r in rows}!=wanted:ap.error('Unknown ID')
    if args.mode=='replay':
        rr=[]
        for row in rows:
            p=HERE/args.state_set/f"{row['id']}.json.gz"
            if p.exists():
                with gzip.open(p,'rt') as f:s=json.load(f)
                if s.get('ok') is True:rr.append(row)
        rows=rr
    if args.limit and len(rows)>args.limit:
        rows=([rows[i*(len(rows)-1)//(args.limit-1)] for i in range(args.limit)]
              if args.spread and args.limit>1 else rows[:args.limit])
    opts={'cpu':args.cpu,'depth':args.depth,'nodes':args.nodes,'state_set':args.state_set}
    counts=collections.Counter();results=[];wall=time.monotonic()
    print(json.dumps({'starting':args.mode,'rows':len(rows),'order':args.order,
                      'jobs':args.jobs,'cpu_per_task':args.cpu,'tag':args.tag}),flush=True)
    with ProcessPoolExecutor(max_workers=args.jobs,mp_context=get_context('spawn'),
                             initializer=init,initargs=(binary,args.order,args.backend)) as pool:
        iterator=iter(rows);pending=set()
        for row in itertools.islice(iterator,2*args.jobs):
            pending.add(pool.submit(replay_one if args.mode=='replay' else run_one,(row,opts)))
        while pending:
            done,pending=wait(pending,return_when=FIRST_COMPLETED)
            for future in done:
                result=future.result();results.append(result)
                counts[result.get('status','accepted' if result.get('ok') else result.get('reason'))]+=1
                nxt=next(iterator,None)
                if nxt is not None:pending.add(pool.submit(replay_one if args.mode=='replay' else run_one,(nxt,opts)))
                print(json.dumps(result),flush=True)
                atomic_json(HERE/'STATUS.json',{'mode':args.mode,'tag':args.tag,'finished':len(results),
                            'assigned':len(rows),'counts':dict(counts),'wall_seconds':time.monotonic()-wall,
                            'formal_admissions':0})
    summary={'mode':args.mode,'tag':args.tag,'order':args.order,'backend':args.backend,'state_set':args.state_set,'assigned':len(rows),
             'counts':dict(counts),'cpu_seconds':sum(x.get('cpu_seconds',0) for x in results),
             'wall_seconds':time.monotonic()-wall,'results':results,
             'input_sha256':input_digest,
             'producer_sha256':sha(__file__),'native_binary_sha256':sha(binary),
             'scope':'Conditional outward whole-box strict-D0 certificates; no Lean admission.'}
    atomic_json(receipt_path,summary)
    print(json.dumps({k:v for k,v in summary.items() if k!='results'}),flush=True)


if __name__=='__main__':
    main()
