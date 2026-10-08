"""Exact algebra and rational constants supporting the two lifting lemmas.

The geometric triangle-classification and norm proofs are in PROOF.md.
No numerical sample or D0 branch-selection claim is used here.
"""
from fractions import Fraction as Q
import sympy as s

z,w=s.symbols('z w',nonzero=True)
o=(-1+s.sqrt(3)*s.I)/2

def clean(v):return s.cancel(s.expand(v),extension=(s.I,s.sqrt(3)))
def star(v):return clean(s.conjugate(v).subs({s.conjugate(z):1/z,s.conjugate(w):1/w}))
def adj(M):return M.applyfunc(star).T
S=1+z+w;T=1+o**2*z+o*w;U=1+o*z+o**2*w
den=clean(star(S)*T);an=clean(S*star(T));gn=clean(-S*T)
E=s.Matrix([[1,1,1],[1,o,o**2],[1,z,w]])
BF=s.Matrix([[1,1,1],[1,o,o**2],[-1,-z,-w]])
BA_scaled=s.Matrix([[den,den,den],[an,an*o,an*o**2],[gn,gn/w,gn/z]])
for B,d in [(BF,s.Integer(1)),(BA_scaled,den)]:
 for v in B*adj(B)-d*star(d)*(6*s.eye(3)-E*adj(E)):assert clean(v)==0
 for v in B:assert clean(v*star(v)-d*star(d))==0
# Fourier coefficients and the triangle closing identity.
e=[S/3,T/3,U/3]
A,B,C=[e[j]*star(e[(j+1)%3])for j in range(3)]
assert clean(A+B+C)==0
assert clean(A*den-star(A)*an)==0
for j,r in enumerate([1,z,w]):assert clean(sum(e[k]*o**(k*j)for k in range(3))-r)==0
R=-9*(z*z-w)**2*(w*w-z)**2*(z*w-1)**2/(z**4*w**4)
for zz,ww in [(1,1),(o,o**2),(o**2,o)]:assert clean(R.subs({z:zz,w:ww}))==0
print('PASS: both exact flat side blocks, Gram identities, Fourier coefficients and exceptional points',flush=True)
# A strict BF side fixes all three missing flat row directions.
for eps in (-1,1):
 for sign in (-1,1):
  for zz,ww in [(eps*o,sign*o**2),(s.Integer(eps),s.Integer(sign))]:
   assert clean((zz*zz-ww)*(ww*ww-zz)*(zz*ww-1))==0
Nzw=s.Matrix(6,6,lambda i,j:o**((i%3)*(j%3))*
              ([1,z,w][j%3] if i>=3 else 1)*(-1)**int(bool(i>=3 and j>=3)))
for value in Nzw*adj(Nzw)-6*s.eye(6):assert clean(value)==0
for value in Nzw[[0,1,3],:]-E.row_join(BF):assert clean(value)==0
print('PASS: all eight signed-equilateral exceptions have R=0; exact unique BF completion N(z,w)',flush=True)
# Explicit Fourier reference, with the ordering already used in CornerBounds.
N=s.Matrix(6,6,lambda i,j:o**((i%3)*(j%3))*(-1)**int(bool(i>=3 and j>=3)))
H=N[[3,1,0,2,4,5],[0,2,4,1,3,5]]
H=s.Matrix(6,6,lambda i,j:H[i,j]/H[0,j]).applyfunc(clean)
E0=s.Matrix([[1,1,1],[1,o**2,-o],[1,1,-1]])
assert all(clean(v)==0 for v in H[:3,:3]-E0)
assert all(clean(v)==0 for v in H*adj(H)-6*s.eye(6))
G=(6*s.eye(3)-E0*adj(E0)).applyfunc(clean)
x=s.symbols('x')
assert clean(G.charpoly(x).as_expr()-(x-3)*((x-3)**2-5))==0
assert Q(9,4)**2>5 # 3-sqrt(5)>3/4
eta=Q(1,196608)
assert Q(3,4)-10*eta>Q(1,2)
assert Q(11,3)+128<144
assert 12*eta==Q(1,16384)
print('PASS: physical Fourier reference, exact Gram spectrum, completion/tube rational constants')
print('PASS: exact side/completion lemmas; production-scale D0 lifting through R=0 remains open')
