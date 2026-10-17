"""Exact check (sympy): return K's xy-weighted signed sum (4) on two critical zero-J halves. Its numerator contains the
W-relation as a factor (resultant 0), so it vanishes identically on the zero-J stratum."""
import sys, sympy as sp
sys.path.insert(0,'/Users/jtindall/Projects/NoFourMUBs/proof/coverage/returns/K_nonzero_J/support')
from verify_full_weighted import weighted_coefficients, side_low
z,X,Y,r=sp.symbols('z X Y r')
p=9-z**2; Z=p-X-Y; g=3*z**2
q=-r*Y/X          # J = r*Y + X*q = 0 in gauge s=t=1, S=X, T=Y
M=side_low(sp.Integer(1),X,sp.Integer(1),Y,r,q,X,Y,Z,g,z)
N=side_low(sp.Integer(-1),-X,sp.Integer(-1),-Y,-r,-q,X,Y,Z,g,z)
Mt={ij:sp.together(M[ij]+N[ij]) for ij in M}
for ij in [(1,1),(2,-1),(-1,2)]:
    print(ij, sp.factor(Mt[ij]))
coeffs=weighted_coefficients()
Tw=sum(sp.Integer(c)*sp.prod([Mt[ij] for ij in pw]) for pw,c in coeffs.items())
num,den=sp.fraction(sp.together(Tw))
num=sp.expand(num)
# reduce r^2 -> -X Z / Y  (clear Y)
P=sp.Poly(num,r)
red0=0; red1=0
rr=-X*Z/Y
for (k,),c in P.terms():
    if k%2==0: red0+=c*rr**(k//2)
    else: red1+=c*rr**(k//2)
N0=sp.factor(sp.together(red0)); N1=sp.factor(sp.together(red1))
print("den factors:", sp.factor(den))
print("N0:", N0)
print("N1:", N1)
# W relation
Wrel=sp.expand(X*Y+X*Z+Y*Z-X*Y*Z - z**2*(z+3)**2)
print("Wrel:", sp.factor(Wrel))
for name,Nk in [("N0",N0),("N1",N1)]:
    n,_=sp.fraction(Nk)
    for f,m in sp.factor_list(n)[1]:
        if f.has(X) or f.has(Y):
            res=sp.factor(sp.resultant(f,Wrel,Y))
            print(name,"factor",f if len(str(f))<200 else str(f)[:200]+'...', " mult",m)
            print("   resultant wrt Y with Wrel:", res if len(str(res))<600 else str(res)[:600])
