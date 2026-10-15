import sys,time,re
sys.path.insert(0,'/Users/jtindall/Files/NoFourMUBS/MinimalConstruction/Proofs')
import exact_rational as er
from exact_rational import F,CTX
import critical_moment_core as core
from flint import fmpq
t0=time.time()
X,Y,z,K=[F(v) for v in CTX.gens()]
q=z*z;J=F(0)
core.Z=9-q-X-Y;core.R2=-X*core.Z/Y;core.R1=J/Y
rr=core.Quad(0,1)
vals=[core.Quad(1),core.Quad(X),core.Quad(1),core.Quad(Y),rr,(core.Quad(J)-rr*Y)/X]
first=core.side(*vals,g=3*q,zz=z)
second=core.side(*[-v for v in vals],g=3*q,zz=z)
m={k:first[k]+second[k] for k in first}
tab=core.squared_corner_moment_coefficients()
need=sorted({p for key in tab for p in key})
for p in need:
    a,b=m[p].a,m[p].b
    print(p,'a',len(a.n),a.n.degrees(),len(a.d),a.d.degrees(),'| b',len(b.n),b.n.degrees() if b.n else None, len(b.d))
print(time.time()-t0)
terms=[]
for key,c in tab.items():
    val=core.Quad(fmpq(str(c)))
    for p in key: val=val*m[p]
    terms.append(val)
a=er.common_sum([t.a for t in terms]);b=er.common_sum([t.b for t in terms])
print('b zero',not b.n)
print('S num',len(a.n),a.n.degrees(),'den',len(a.d),a.d.degrees(), time.time()-t0)
print(a.d.factor())
Xp,Yp,zp,Kp=CTX.gens()
Zp=9-zp**2-Xp-Yp
Kx=Xp*Yp*Zp
G=Xp*Yp+Xp*Zp+Yp*Zp-Xp*Yp*Zp - zp**2*(zp+3)**2
A=3*zp*(zp+3)**4+(3*zp+8)*Kx
B=zp*zp*(zp+3)**4+(zp+2)**2*Kx
T=-3888*zp*(zp+2)**2*(zp+3)**2*(Kx+(zp-1)*(zp+3)**3)*B*B
E=a.n*A**3-T*a.d
print('E',len(E),E.degrees())
qq,rem=divmod(E,G)
print('q',len(qq),qq.degrees(),'rem',len(rem))
import math
def info(P,name):
    cs=[abs(int(c)) if c.denominator==1 else None for e,c in P.terms()]
    dens=set(c.denominator for e,c in P.terms())
    mx=max(abs(c.numerator) for e,c in P.terms())
    print(name,len(P),'maxbits',int(mx).bit_length(),'dens',list(dens)[:5], 'l1 bits', int(sum(abs(c.numerator) for e,c in P.terms())).bit_length())
info(a.n,'n');info(qq,'q');info(a.d,'d')
e0=Xp+Yp+zp**2+3*zp; e1=3*zp+9-Yp; e2=3*zp+9-Xp
E=e0*e1*e2
print('A-E divisible by G:', divmod(A-E,G)[1]==0, divmod(A-E,G)[0])
print('d == z^12 E^5', a.d==zp**12*E**5)
E2=a.n-T*zp**12*E**2
q2,rem2=divmod(E2,G)
print('E2',len(E2),E2.degrees(),'q2',len(q2),q2.degrees(),'rem',len(rem2))
info(q2,'q2')
