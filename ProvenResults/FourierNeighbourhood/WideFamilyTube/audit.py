"""Independent exact matrix-convention, physicality and radius audit."""
from fractions import Fraction as F
from flint import fmpz_poly

# Affine phases are (coefficient of a, coefficient of b, constant in turns).
def add(*terms):return tuple(sum(t[i] for t in terms) for i in range(3))
def scale(c,t):return tuple(c*x for x in t)
def equal(u,v):return u[:2]==v[:2] and (u[2]-v[2]).denominator==1
p=(F(1),F(0),F(1,6));q=(F(0),F(1),F(1,3));zero=(F(0),)*3
for i in range(6):
    for j in range(6):
        source=j//2+3*(j%2);s,r=divmod(source,3);t,k=divmod(i,3)
        N=add((0,0,F(r*k,3)+F(s*t,2)),scale(s,[zero,p,q][k]))
        target=(F(int(i%3==1)*(j%2)),F(int(i%3==2)*(j%2)),F(i*j,6))
        assert equal(N,target)
print('PASS: 36 exact affine identities identify the covered orientation with N(z,w) transpose')
# Physicality for every a,b, independently of numerical phase evaluation.
phi=fmpz_poly([1,-1,1]);x=fmpz_poly([0,1]);roots=[x**k%phi for k in range(6)]
for i in range(6):
    for k in range(6):
        d=i-k
        even=sum((roots[(2*j*d)%6] for j in range(3)),fmpz_poly([]))%phi
        odd=sum((roots[((2*j+1)*d)%6] for j in range(3)),fmpz_poly([]))%phi
        if d%3:
            assert even==0 and odd==0
        else:
            assert i%3==k%3
            assert even+odd==fmpz_poly([6 if i==k else 0])
print('PASS: exact generic row orthogonality, for all family parameters')
assert F(31,32)**2<F(63,64)
assert F(12)/(1+F(31,32))<F(5,2)**2
assert F(5,2)**2>6 and F(11,2)**2>30
assert F(5,2)/8+F(11,2)<6
for t in (8,16):
    assert F(1,6*t)<F(1,8)
    assert 6*F(1,6*t)==F(1,t)
    assert 15*F(1,16*t)<F(1,t)
print('PASS: direct and transposed projector-to-amplitude constants; radii 1/48,1/96 and 1/128,1/256')
