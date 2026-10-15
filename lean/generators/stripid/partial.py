import time
import common
from flint import fmpq
import exact_rational as er
import critical_moment_core as core
import gen_nonzero as G
t0=time.time()
tab=list(core.squared_corner_moment_coefficients().items())
terms=[]
for key,cc in tab:
    val=core.Quad(fmpq(str(cc)))
    for p in key: val=val*G.m[p]
    terms.append(val)
print('terms',len(terms),time.time()-t0,flush=True)
for ng in (2,4):
    sz=len(terms)//ng
    for g in range(ng):
        part=terms[g*sz:(g+1)*sz] if g<ng-1 else terms[g*sz:]
        a=er.common_sum([t.a for t in part])
        print(ng,g,'num',len(a.n),a.n.degrees(),'den',a.d.degrees(),time.time()-t0,flush=True)
