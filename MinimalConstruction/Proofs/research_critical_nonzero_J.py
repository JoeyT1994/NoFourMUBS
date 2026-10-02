"""Exploratory exact mixed-corner square sum on the nonzero-J curve."""
import json,signal,time
from pathlib import Path
import research_critical_moments as m
from research_nonmatched_residual import F,CTX,common_sum
from flint import fmpq

if __name__=='__main__':
    signal.alarm(180);start=time.process_time()
    def mark(s):print(f'{time.process_time()-start:.2f}s {s}',flush=True)
    X,Y,k,_=[F(v) for v in CTX.gens()]
    q=4/(1+k*k);J=8*k/(1+k*k)**2
    Z=9-q-X-Y
    m.Z=Z;m.R2=-X*Z/Y;m.R1=J/Y
    rr=m.Quad(0,1)
    values=[m.Quad(1),m.Quad(X),m.Quad(1),m.Quad(Y),rr,(m.Quad(J)-rr*Y)/X]
    m0=m.side(*values,g=3*q+J,zz=-2*(1+k)/(1+k*k))
    m1=m.side(*[-v for v in values],g=3*q-J,zz=-2*(1-k)/(1+k*k))
    mm={key:m0[key]+m1[key] for key in m0};mark('total six-column moments')
    co=m.squared_corner_moment_coefficients();terms=[]
    for key,c in co.items():
        val=m.Quad(fmpq(str(c)))
        for p in key:val=val*mm[p]
        terms.append(val)
    a=common_sum([t.a for t in terms]);b=common_sum([t.b for t in terms])
    mark(f'sum numerator terms {len(a.n)}, quadratic coefficient terms {len(b.n)}')
    out={'status':'RESEARCH_ONLY','a':a.record(),'b':b.record()}
    Path(__file__).with_name('Research').joinpath('critical_nonzero_J_moments.json').write_text(json.dumps(out,indent=2)+'\n')
    for label,f in [('a',a),('b',b)]:
        u,fac=f.n.factor() if f.n else (0,[])
        print(label,'unit',u,'factors',[(str(p) if len(p)<50 else f'{len(p)} terms',e) for p,e in fac],flush=True)
