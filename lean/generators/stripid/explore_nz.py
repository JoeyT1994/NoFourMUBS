import sys,time
sys.path.insert(0,'/Users/jtindall/Files/NoFourMUBS/MinimalConstruction/Proofs')
import exact_rational as er
from exact_rational import F,CTX
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
need=sorted({p for key in tab for p in key})
mx=0
for p in need:
    a,b=m[p].a,m[p].b
    print(p,'a',len(a.n),a.n.degrees() if a.n else None,len(a.d),a.d.degrees(),'| b',len(b.n),b.n.degrees() if b.n else None, len(b.d),b.d.degrees())
terms=[]
for key,cc in tab.items():
    val=core.Quad(fmpq(str(cc)))
    for p in key: val=val*m[p]
    terms.append(val)
a=er.common_sum([t.a for t in terms]);b=er.common_sum([t.b for t in terms])
print('b zero',not b.n, time.time()-t0)
print('S num',len(a.n),a.n.degrees(),'den',len(a.d),a.d.degrees())
print(a.d.factor())
import pickle
open('/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/nzS.txt','w').write(str(a.n)+'\n'+str(a.d))
