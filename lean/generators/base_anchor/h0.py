import mpmath as mp, sympy as sp, itertools, json
mp.mp.dps=80
import sys; sys.path.insert(0,'.')
from model import Model
q=(1+mp.sqrt(15)*1j)/4
M=Model((q**2,q,q**-2,q**-1),1)
H=M.hadamard()
r3,r5,r7=sp.sqrt(3),sp.sqrt(5),sp.sqrt(7)
basis=[1,r3,r5,r7,r3*r5,r3*r7,r5*r7,r3*r5*r7]
bnum=[mp.mpf(1),mp.sqrt(3),mp.sqrt(5),mp.sqrt(7),mp.sqrt(15),mp.sqrt(21),mp.sqrt(35),mp.sqrt(105)]
def ident(x):
    if abs(x)<mp.mpf(10)**-60: return sp.Integer(0)
    v=mp.pslq([x]+bnum,maxcoeff=10**6,maxsteps=10**6)
    d=-v[0]
    return sum(sp.Rational(int(v[k+1]),int(d))*basis[k] for k in range(8))
Hs=sp.Matrix(6,6,lambda i,j: ident(mp.re(H[i,j]))+sp.I*ident(mp.im(H[i,j])))
G=sp.simplify(sp.expand(Hs*Hs.H))
print('HH* = 6I:', G==6*sp.eye(6))
print('flat:', all(sp.simplify(sp.expand(Hs[i,j]*sp.conjugate(Hs[i,j])))==1 for i in range(6) for j in range(6)))
B=Hs[0:3,3:6]; C=Hs[3:6,0:3]
def T(X):
    perm=sum(sp.prod([X[i,s[i]] for i in range(3)]) for s in itertools.permutations(range(3)))
    return sp.simplify(sp.expand(-perm*X.det()**2*sp.prod([sp.conjugate(X[i,j]) for i in range(3) for j in range(3)])))
TB,TC=T(B),T(C)
print('2T(B)=',sp.nsimplify(sp.expand(2*TB)),' 2T(C)=',sp.nsimplify(sp.expand(2*TC)))
print('chi',M.R, mp.nstr((M.R),20))
json.dump([[str(Hs[i,j]) for j in range(6)] for i in range(6)],open(__import__('os').path.join(__import__('os').path.dirname(__import__('os').path.abspath(__file__)), 'h0.json'),'w'))
