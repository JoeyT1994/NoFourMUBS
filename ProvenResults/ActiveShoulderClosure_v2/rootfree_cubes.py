"""Independent root-free production-cube lemmas and exact isometric lookup.

These finite primitive covers never call the side-root kernel. Thus their
use as fast whole-box lemmas in that kernel has no circular dependency.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
import json,time,math
from geometry import HERE,pi_bounds,path_audit,split_box
from production import build,apply,isometry
from production_cover import isometries

@lru_cache(1)
def data():
    d=json.loads((HERE/'data/rootfree_cubes.json').read_text());canonical=build();ids=[]
    if d['status']!='PASS':raise ValueError('root-free cube inventory')
    for cert in d['certificates']:
        rid=cert['representative_id'];ids.append(rid)
        if type(rid)!=int or not 0<=rid<9 or cert['root']!=canonical['roots'][rid]:raise ValueError('guarded cube geometry binding')
        path_audit(w['path'] for w in cert['leaves'])
    if len(ids)!=len(set(ids)):raise ValueError('duplicate cube')
    return d

def replay_leaf(task):
    root,w=task
    from flint import ctx
    from fallback import certify
    ctx.prec=160;beg=time.process_time();c=list(map(F,root['centers']));r=list(map(F,root['radii']))
    for d,b in enumerate(w['path']):c,r=split_box(c,r,d%4,int(b))
    result=certify(c,r,w['reference'],w['options'])
    if not result['ok'] or result['reason'] not in ('residual_tube','outside_D0','outside_strict_D0'):raise ValueError('primitive root-free cube leaf failed: '+str(result))
    return dict(seed=root['seed'],path=w['path'],status='PASS',reason=result['reason'],cpu_seconds=time.process_time()-beg)

def run(output,jobs=1):
    out=Path(output);out.mkdir(parents=True,exist_ok=False);tasks=[(c['root'],w) for c in data()['certificates'] for w in c['leaves']];rr=[];beg=time.monotonic()
    with (out/'leaves.jsonl').open('w') as f:
        with ProcessPoolExecutor(max_workers=jobs,mp_context=get_context("spawn")) as pool:
            for future in as_completed([pool.submit(replay_leaf,t) for t in tasks]):
                r=future.result();rr.append(r);f.write(json.dumps(r,sort_keys=True)+'\n')
    result=dict(status='PASS',representatives=[c['representative_id'] for c in data()['certificates']],leaves=len(rr),cpu_seconds=sum(r['cpu_seconds'] for r in rr),wall_seconds=time.monotonic()-beg)
    (out/'summary.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n');return result

@lru_cache(1)
def lookup():
    out={};lo,hi=pi_bounds();scale=2**128;lo=F((lo*scale).__floor__(),scale);hi=F((hi*scale).__ceil__(),scale)
    for cert in data()['certificates']:
        root=cert['root'];c=list(map(F,root['centers']));r=list(map(F,root['radii']));seed=tuple(root['seed'])
        for frame in isometries():
            M=frame['matrix']
            if not isometry(M):raise ValueError('nonisometric cube transport')
            inverse=list(map(list,zip(*M)));key=tuple(v%6 for v in apply(inverse,seed))
            out.setdefault(key,[]).append((cert['representative_id'],c,r,frame))
    return out,(lo+hi)/2,(hi-lo)/2

def contains_box(c,r):
    tables,pc,pr=lookup()
    try:nearest=tuple(round(float(x)*3/math.pi)%6 for x in c)
    except (ValueError,OverflowError):return dict(ok=False)
    for rid,target,half,frame in tables.get(nearest,[]):
        M=frame['matrix'];cc=apply(M,c);rr=[sum(abs(a)*h for a,h in zip(row,r)) for row in M]
        try:winding=[round(float((x-y)/(2*pc))) for x,y in zip(cc,target)]
        except (ValueError,OverflowError):continue
        if all(abs(x-y-2*n*pc)+2*abs(n)*pr+h<=bound for x,y,n,h,bound in zip(cc,target,winding,rr,half)):
            return dict(ok=True,reason='root_free_production_cube',representative_id=rid,frame=frame,period_shifts=winding)
    return dict(ok=False)

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--output-dir',required=True);p.add_argument('--jobs',type=int,default=1);a=p.parse_args();print(run(a.output_dir,a.jobs))
