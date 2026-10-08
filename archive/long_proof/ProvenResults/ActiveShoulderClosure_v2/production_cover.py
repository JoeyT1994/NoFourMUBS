"""Replay a larger guarded production cube using the root-free side cover."""
from pathlib import Path
from fractions import Fraction as F
import sys,json,time,math
from functools import lru_cache
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import HERE,ROOT,pi_bounds,path_audit
from production import frames,isometry,apply
TARGET=(4,5,0,3)
# Extra rational collar makes the rational production-region enclosure fit
# strictly inside this symbolic theorem, without equality/rounding issues.
EXTRA=F(1,2**80)

def data():return json.loads((HERE/'data/production_cover.json').read_text())

def replay_leaf(w):
    sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
    from residual_lift import certify_f6
    from flint import ctx,arb
    ctx.prec=160;start=time.process_time()
    c=[arb.pi()*k/3 for k in TARGET];r=[arb.pi()/512+arb(2)**-40+arb(2)**-80]*4
    for d,b in enumerate(w['path']):
        a=d%4;r[a]/=2;c[a]+=(-1 if b=='0' else 1)*r[a]
    report=certify_f6(c,r,depth=w['phase_depth'])
    if not report['ok'] or report['reason'] not in ('residual_tube','outside_D0','outside_strict_D0'):raise ValueError('guarded cube replay failed: '+str(report))
    return dict(path=w['path'],phase_depth=w['phase_depth'],report=report,cpu_seconds=time.process_time()-start)

def run(output,jobs=1):
    d=data();leaves=d['leaves'];path_audit(w['path'] for w in leaves)
    if len(leaves)!=227 or d['seed']!=list(TARGET) or d['half_width']!='pi/512 + 2^-40 + 2^-80':raise ValueError('cover geometry')
    out=Path(output);out.parent.mkdir(parents=True,exist_ok=True);start=time.monotonic();rr=[]
    with ProcessPoolExecutor(max_workers=jobs,mp_context=get_context("spawn")) as pool:
        for f in as_completed([pool.submit(replay_leaf,w) for w in leaves]):
            rr.append(f.result())
            if len(rr)%25==0:print('production cover replay',len(rr),'/',len(leaves),flush=True)
    report=dict(status='PASS',scope='guarded cube, all side choices; physical maximal D0, R=0 uses A1/F6',leaves=sorted(rr,key=lambda x:x['path']),cpu_seconds=sum(w['cpu_seconds'] for w in rr),wall_seconds=time.monotonic()-start)
    out.write_text(json.dumps(report,indent=2,sort_keys=True)+'\n');return report

@lru_cache(1)
def isometries():
    out={}
    for f in frames():
        M=f['matrix']
        if isometry(M):out.setdefault(tuple(map(tuple,M)),f)
    return list(out.values())

@lru_cache(1)
def candidate_seeds():
    return {tuple(v%6 for v in apply(f['matrix'],TARGET)) for f in isometries()}

def contains_box(c,r):
    """Sufficient rational containment; only exactly isometric transports."""
    # Floating gate only rejects; every successful containment is rational.
    try:
        nn=[round(float(x)*3/math.pi) for x in c]
        if tuple(k%6 for k in nn) not in candidate_seeds() or any(abs(float(x)-k*math.pi/3)>.02 for x,k in zip(c,nn)):
            return dict(ok=False,reason='outside_guarded_production_cover')
    except (ValueError,OverflowError):return dict(ok=False,reason='proposal_overflow')
    lo,hi=pi_bounds();scale=2**128
    lo=F((lo*scale).__floor__(),scale);hi=F((hi*scale).__ceil__(),scale)
    pc=(lo+hi)/2;pr=(hi-lo)/2;hlo=lo/512+F(1,2**40)+EXTRA
    for f in isometries():
        M=f['matrix']
        if not isometry(M):continue
        cc=apply(M,c);rr=[sum(abs(a)*v for a,v in zip(row,r)) for row in M]
        # The proposed winding number is checked by a rational inequality.
        winding=[round(float((x-F(k,3)*pc)/(2*pc))) for x,k in zip(cc,TARGET)]
        if all(abs(x-(F(k,3)+2*n)*pc)+rad+abs(F(k,3)+2*n)*pr<=hlo for x,rad,k,n in zip(cc,rr,TARGET,winding)):
            return dict(ok=True,reason='guarded_production_cover',frame=f,period_shifts=winding)
    return dict(ok=False,reason='outside_guarded_production_cover')

if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True,type=Path);ap.add_argument('--jobs',type=int,default=1);a=ap.parse_args();r=run(a.output,a.jobs);print({k:v for k,v in r.items() if k!='leaves'})
