"""Campaign terminals, with distinct statements; no stored boolean is proof.

PSD excludes strict D0. The cover excludes H+ only, unless both conjugate
boxes and the non-Tao guard are certified. All geometry is exact rational.
"""
import atexit, base64, importlib.util, math, os, resource, selectors, subprocess, sys, time, tempfile
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from geometry import HERE, ROOT

def module(name, path):
    spec=importlib.util.spec_from_file_location(name,path)
    m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m

@lru_cache(1)
def psd():
    return module('shoulder_signed_psd',ROOT/'ProvenResults/SignedCornerPSDPrune/predicate.py')

@lru_cache(1)
def psd_replay():
    directory=ROOT/'ProvenResults/SignedCornerPSDPrune'
    old={k:sys.modules.get(k) for k in ('predicate','exact_reference')}
    try:
        sys.modules['predicate']=psd()
        sys.modules['exact_reference']=module('psd_exact_reference',directory/'exact_reference.py')
        return module('shoulder_psd_verify',directory/'verify.py')
    finally:
        for k,v in old.items():
            if v is None:sys.modules.pop(k,None)
            else:sys.modules[k]=v

_psd_cache={}
_cover_cache={}
# Fresh replay results only. Never populated from a certificate or disk cache.
# The key is the complete outward-enclosing input geometry, including mode.
_replay_cover_cache={}

def replay_cover_key(c,r,cube=False):
    if cube:
        cc,h=enclosing_cube(c,r);rr=[h]*4
    else:cc,rr=enclosing_box(c,r)
    return (bool(cube),tuple(cc),tuple(rr))

def retain_fresh_cover(key,result):
    """Internal handoff from this replay's fresh isolated worker computation."""
    if result.get('ok') is not True:raise ValueError('fresh cover failed: '+str(result))
    if tuple(result.get('centers',[]))!=key[1] or tuple(result.get('radii',[]))!=key[2]:
        raise ValueError('fresh cover response geometry mismatch')
    _replay_cover_cache[key]=dict(result)

def replay_cover(c,r,nodes,seconds=300,cube=False):
    key=replay_cover_key(c,r,cube)
    if key in _replay_cover_cache:
        return dict(_replay_cover_cache[key],cpu_seconds=0,wall_seconds=0,replay_cached=True)
    result=cover(c,r,nodes,seconds,cube=cube)
    retain_fresh_cover(key,result)
    return result

def clear_root_cache():
    _psd_cache.clear();_cover_cache.clear()

def failure_key(result):
    """Diagnostic only: distinguish failed bounds from budgets/exceptions."""
    if result.get('ok'):return None
    failed=next((q for q in result.get('covers',[]) if not q.get('ok')),result)
    return result.get('method','terminal')+':'+failed.get('reason','no_certificate')

def try_psd(c,r):
    key=tuple(c+r)
    if key in _psd_cache:return dict(_psd_cache[key],cpu_seconds=0,cached=True)
    start=time.process_time()
    try:
        psd().iv.dps=35
        cert=psd().coupled_leaf(c,r,extra=float(max(r))<=0.0006)
        result=dict(ok=cert is not None,method='signed_corner_PSD',statement='outside_strict_D0',
                    certificate=cert,cpu_seconds=time.process_time()-start)
        _psd_cache[key]=result
        return result
    except Exception as ex:
        return dict(ok=False,method='signed_corner_PSD',reason='exception',detail=str(ex),cpu_seconds=time.process_time()-start)

def enclosing_box(c,r):
    cc=list(map(float,c));rr=[]
    if not all(map(math.isfinite,cc)):raise ValueError('nonfinite center')
    for x,y,z in zip(cc,c,r):
        need=abs(F(x)-y)+z;h=math.nextafter(float(need),math.inf)
        if not math.isfinite(h) or h<=0 or F(h)<need:raise ValueError('box range')
        rr.append(h)
    return cc,rr

def enclosing_cube(c,r):
    cc=list(map(float,c))
    if not all(map(math.isfinite,cc)):raise ValueError('nonfinite center')
    need=max(abs(F(x)-y)+z for x,y,z in zip(cc,c,r))
    h=math.nextafter(float(need),math.inf)
    if not math.isfinite(h) or h<=0 or F(h)<need:raise ValueError('cube range')
    assert all(abs(F(x)-y)+z<=F(h) for x,y,z in zip(cc,c,r))
    return cc,h

class CoverWorker:
    def __init__(self):
        self.owner_pid=os.getpid()
        from julia_environment import check,profile
        check()
        executable=os.environ.get('JULIA_BIN','julia')
        self.log=tempfile.TemporaryFile(mode='w+t');self.closed=False;self.reported_cpu=0.0
        usage=resource.getrusage(resource.RUSAGE_CHILDREN);self.child_cpu_base=usage.ru_utime+usage.ru_stime
        self.p=subprocess.Popen([executable,'--startup-file=no','--compiled-modules=existing',
            '--project='+str(ROOT/'NumericalCampaign/Certification/jlenv_cluster'),str(Path(__file__).with_name('cover_worker_anisotropic.jl'))],
            stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=self.log,text=True,bufsize=1,
            env=dict(os.environ,JULIA_NUM_THREADS='1',OPENBLAS_NUM_THREADS='1'))
        self.poll=selectors.DefaultSelector();self.poll.register(self.p.stdout,selectors.EVENT_READ)
        atexit.register(self.close)
        from multiprocessing.util import Finalize
        self.finalizer=Finalize(self,self.close,exitpriority=10)
        ready=self.line(120).split('\t')
        if len(ready)!=3 or ready[:2]!=['READY',profile()[1]]:self.close();raise RuntimeError('Julia worker runtime mismatch: '+str(ready))
        self.startup_cpu=float(ready[2]);self.reported_cpu=self.startup_cpu
    def line(self,seconds):
        if not self.poll.select(seconds):self.close();raise TimeoutError('cover worker timeout')
        s=self.p.stdout.readline().strip()
        if not s:
            self.log.seek(0); detail=self.log.read()[-16000:]
            raise RuntimeError('cover worker exited: '+detail)
        return s
    def close(self):
        global _COVER_CPU
        # A forked process must never terminate or reap its parent's worker.
        if os.getpid()!=self.owner_pid:return
        if self.closed:return
        self.closed=True
        if self.p.poll() is None:
            self.p.terminate()
            try:self.p.wait(timeout=5)
            except subprocess.TimeoutExpired:self.p.kill();self.p.wait()
        self.log.close()
        usage=resource.getrusage(resource.RUSAGE_CHILDREN)
        # Charge startup/failed/timed-out child CPU not already returned by
        # the Julia clock. A dead worker cannot silently evade root budgets.
        _COVER_CPU+=max(0,usage.ru_utime+usage.ru_stime-self.child_cpu_base-self.reported_cpu)
    def run(self,c,r,nodes,seconds,cube=False):
        # Responses contain no request ID. Sharing this connection after a
        # fork could bind a successful response to the wrong seed box.
        if os.getpid()!=self.owner_pid:raise RuntimeError('inherited Julia worker connection is forbidden')
        if cube:
            cc,h=enclosing_cube(c,r);rr=[h]*4
        else:cc,rr=enclosing_box(c,r)
        self.p.stdin.write(' '.join(map(repr,[*cc,*rr,int(nodes),float(seconds)]))+'\n');self.p.stdin.flush()
        fields=self.line(seconds+120).split('\t')
        if len(fields)!=7:raise RuntimeError('invalid cover response: '+repr(fields))
        ok,why,nt,cpu,wall,message,trace=fields
        if ok not in ('true','false'):raise RuntimeError('invalid cover boolean')
        detail='' if message=='-' else base64.b64decode(message,validate=True).decode('utf-8')
        backtrace='' if trace=='-' else base64.b64decode(trace,validate=True).decode('utf-8')
        self.reported_cpu+=float(cpu)
        return dict(ok=ok=='true',reason=why,nodes=int(nt),cpu_seconds=float(cpu),wall_seconds=float(wall),
                    centers=cc,radii=rr,node_budget=nodes,detail=detail,backtrace=backtrace)

_worker=None
_COVER_CPU=0.0
def external_cpu_total():return _COVER_CPU

def cover(c,r,nodes=500000,seconds=30,cube=False):
    global _worker,_COVER_CPU
    try:
        if _worker is None:
            _worker=CoverWorker();_COVER_CPU+=_worker.startup_cpu
        result=_worker.run(c,r,nodes,seconds,cube=cube)
        _COVER_CPU+=result.get('cpu_seconds',0)
        return result
    except Exception as ex:
        if _worker is not None:_worker.close();_worker=None
        return dict(ok=False,reason='exception',detail=f'{type(ex).__name__}: {ex}')

def try_cover(c,r,*,both=False,nodes=500000,seconds=30):
    key=(tuple(c+r),both,nodes)
    if key in _cover_cache:return dict(_cover_cache[key],cpu_seconds=0,wall_seconds=0,cached=True)
    start=time.monotonic();results=[]
    guard=psd().tao_absence(c,r) if both else None
    if both and guard is None:return dict(ok=False,method='accelerated_cover',reason='Tao_guard')
    for sign in ([1,-1] if both else [1]):
        q=cover([sign*x for x in c],r,nodes,seconds);results.append(q)
        if not q['ok']:break
    result=dict(ok=all(q['ok'] for q in results) and len(results)==(2 if both else 1),
                method='accelerated_cover',statement='both_matched_sheets_not_quartet_edges' if both else 'Hplus_not_quartet_edge',
                conjugate_checked=both,tao_absence=guard,covers=results,
                cpu_seconds=sum(q.get('cpu_seconds',0) for q in results),wall_seconds=time.monotonic()-start)
    _cover_cache[key]=result
    return result

def replay(c,r,terminal,require_both=False):
    if terminal.get('ok') is not True:raise ValueError('nonaccepting terminal')
    if terminal['method']=='FourierTransverseStability_v2':
        from transverse import replay as replay_transverse
        replay_transverse(c,r,terminal)
    elif terminal['method']=='signed_corner_PSD':
        if terminal['statement']!='outside_strict_D0':raise ValueError('PSD statement')
        psd().iv.dps=35
        psd_replay().replay_certificate(terminal['certificate'],c,r)
        # This is a whole-theta-box statement, independent of a tau slab.
        # A fresh independent replay therefore seeds the same per-root cache
        # used by search; no stored success is imported without verification.
        _psd_cache[tuple(c+r)]=dict(terminal,cpu_seconds=0,cached=True)
    elif terminal['method']=='accelerated_cover':
        both=terminal['conjugate_checked']
        if type(both)!=bool or require_both and not both:raise ValueError('both production sheets required')
        expected='both_matched_sheets_not_quartet_edges' if both else 'Hplus_not_quartet_edge'
        if terminal['statement']!=expected or len(terminal['covers'])!=(2 if both else 1):raise ValueError('cover statement')
        if both and psd().tao_absence(c,r) is None:raise ValueError('Tao guard')
        for sign,q in zip(([1,-1] if both else [1]),terminal['covers']):
            if 'radii' in q:
                cc,rr=enclosing_box([sign*x for x in c],r)
                if q['centers']!=cc or q['radii']!=rr:raise ValueError('cover geometry')
            else:
                cc,hh=enclosing_cube([sign*x for x in c],r)
                if q['centers']!=cc or q['radius']!=hh:raise ValueError('cover geometry')
            fresh=replay_cover([sign*x for x in c],r,max(q['node_budget'],q['nodes']+1024),300,cube='radii' not in q)
            if not fresh['ok']:raise ValueError('fresh cover failed: '+str(fresh))
        budget=max(q['node_budget'] for q in terminal['covers'])
        _cover_cache[(tuple(c+r),both,budget)]=dict(terminal,cpu_seconds=0,wall_seconds=0,cached=True)
    else:raise ValueError('unknown terminal')
    return True
