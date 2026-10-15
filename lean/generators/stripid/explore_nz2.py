import time
import common
from common import QCTX, frac_data, poly_dict, to_dict
import exact_rational as er
from exact_rational import F, CTX
import critical_moment_core as core
from flint import fmpq
t0=time.time()
X,Y,c,_=[F(v) for v in CTX.gens()]
q=4/(1+c*c);J=8*c/(1+c*c)**2
zp=-2*(1+c)/(1+c*c);zm=-2*(1-c)/(1+c*c)
gp=3*q+J;gm=3*q-J
core.Z=9-q-X-Y;core.R2=-X*core.Z/Y;core.R1=J/Y
rr=core.Quad(0,1)
vals=[core.Quad(1),core.Quad(X),core.Quad(1),core.Quad(Y),rr,(core.Quad(J)-rr*Y)/X]
first=core.side(*vals,g=gp,zz=zp)
second=core.side(*[-v for v in vals],g=gm,zz=zm)
m={k:first[k]+second[k] for k in first}
tab=core.squared_corner_moment_coefficients()
Xp,Yp,k,_=QCTX.gens()
h=1+k*k
TABLE=[Xp,Yp,h,QCTX.constant(2),
  2+6*k*k-(1+k)*h*(Xp+Yp), 6*h+4*k-(1+k)*h*(9-Yp), 6*h+4*k-(1+k)*h*(9-Xp),
  2+6*k*k-(1-k)*h*(Xp+Yp), 6*h-4*k-(1-k)*h*(9-Yp), 6*h-4*k-(1-k)*h*(9-Xp)]
need=sorted({p for key in tab for p in key})
for p in need:
    for comp in (m[p].a,m[p].b):
        D,e=frac_data(comp,TABLE)
print('moments ok',time.time()-t0)
terms=[]
for key,cc in tab.items():
    val=core.Quad(fmpq(str(cc)))
    for p in key: val=val*m[p]
    terms.append(val)
a=er.common_sum([t.a for t in terms])
nD,ne=frac_data(a,TABLE)
print('n',len(nD),ne,time.time()-t0)
import pickle
pickle.dump((nD,ne),open('/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/nz_n.pkl','wb'))
