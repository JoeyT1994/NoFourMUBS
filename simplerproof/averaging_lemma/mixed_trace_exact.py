"""Exact scalar sums of three mixed-corner signed invariants.

Each actual side obeys |a_jk + sigma sqrt(R) b_jk| <= 3 sqrt(R).
This uses only the first-level side moments, with no optimizer.
"""
from pathlib import Path
import json,time
from strip_average_exact import C,F,CTX,Affine,primitive,side_moments
HERE=Path(__file__).resolve().parent

def traces(seeds):
    a,b,c,d=seeds;Affine.R=primitive(a,b,c,d)[-1]
    m=side_moments(a,b,c,d)
    m={k:Affine(v) for k,v in m.items()}
    powers=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    xx=[a**0,a,b];yy=[a**0,c,d];out=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        A=xx[k]/xx[j];B=yy[k]/yy[j];ai=A.conjugate();bi=B.conjugate()
        ds=[-(A-B)**2*(A+B)*ai**2*bi**2,(A-B)*(A+B)*(A*B-1)*ai**2*bi,
            (B-1)**2*(B+1)*ai*bi,-(A*A-B)*(B-1)*(B+1)*ai*bi**2,
            (A-1)**2*(A+1)*ai*bi,(A-1)*(A+1)*(A-B*B)*ai**2*bi]
        ds=[z*xx[j]**(-p)*yy[j]**(-q) for z,(p,q) in zip(ds,powers)]
        f=Affine(C(0) if isinstance(a,C) else 0)
        for z,(p,q) in zip(ds,powers):f+=(m[p,q]*z-m[-p,-q]*z.conjugate())*1j
        out.append(f)
    return out

def run():
    start=time.monotonic();vals=traces([C(v) for v in CTX.gens()]);out=[]
    for value in vals:
        assert not C(value.a).x.n and not C(value.b).y.n
        row=dict(a_div_i=C(value.a).y.record(),b=C(value.b).x.record())
        out.append(row)
        print([(len(v.n),len(v.d),v.n.degrees(),v.d.degrees()) for v in [C(value.a).y,C(value.b).x]],flush=True)
    (HERE/'mixed_trace_exact.json').write_text(json.dumps(dict(scope='Exact scalar trace algebra; no global cover claim',rows=out,seconds=time.monotonic()-start),indent=2)+'\n')

if __name__=='__main__':run()
