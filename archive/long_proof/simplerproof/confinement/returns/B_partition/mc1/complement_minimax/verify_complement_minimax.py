#!/usr/bin/env python3
"""Exact standard-library replay for the complementary-corner minimax barrier.
All polynomial coefficients and algebraic comparisons are rational/exact.
"""
from fractions import Fraction as F
from collections import defaultdict

class Poly:
    def __init__(self, terms=None):
        if isinstance(terms,Poly):self.d=dict(terms.d)
        elif isinstance(terms,dict):self.d={e:F(c) for e,c in terms.items() if c}
        elif terms:self.d={(0,0,0):F(terms)}
        else:self.d={}
    def __add__(self,other):
        other=Poly(other);d=defaultdict(F,self.d)
        for e,c in other.d.items():d[e]+=c
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({e:-c for e,c in self.d.items()})
    def __sub__(self,other):return self+-Poly(other)
    def __rsub__(self,other):return Poly(other)+-self
    def __mul__(self,other):
        other=Poly(other);d=defaultdict(F)
        for e,c in self.d.items():
            for f,b in other.d.items():d[tuple(x+y for x,y in zip(e,f))]+=c*b
        return Poly(d)
    __rmul__=__mul__
    def __truediv__(self,n):return self*F(1,n)
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        out=Poly(1)
        for _ in range(n):out=out*self
        return out
    def derivative(self,j):
        d={}
        for e,c in self.d.items():
            if e[j]:
                f=list(e);f[j]-=1;d[tuple(f)]=c*e[j]
        return Poly(d)
    def substitute(self,values):
        out=Poly()
        for e,c in self.d.items():
            term=Poly(c)
            for i,n in enumerate(e):term=term*(Poly(values[i])**n)
            out=out+term
        return out
    def evaluate(self,x):
        out=0
        for e,c in self.d.items():
            assert e[1:]==(0,0)
            out=out+c*x**e[0]
        return out
    def __eq__(self,other):return self.d==Poly(other).d

def check(a,b,label):
    assert a==b,(label,(a-b).d)
    print('PASS',label)

U=Poly({(1,0,0):1});W=Poly({(0,1,0):1});K=Poly({(0,0,1):1})
A=W-U**2-9*U
B=-U**2+16*U-36
E=36*U**3-A**2+B*K
T=2*K+(U+6)*W-U*(U-6)*(U-9)
# R_+/- = E +/- 2 J T, with K=J^2; the odd square relation is checked
# by separating its coefficients before the subsequent stationary reduction.
even_from_definition=36*U**3+28*U*K-A**2-(U+6)**2*K
odd_over_2J=30*U**2+2*K+A*(U+6)
check(E,even_from_definition,'even part of R(+J),R(-J)')
check(T,odd_over_2J,'odd part divided by 2J')
mu=-B/2
FW=E.derivative(1)+mu*T.derivative(1)
FU=E.derivative(0)+mu*T.derivative(0)
check(E.derivative(2)+mu*T.derivative(2),0,'J stationarity when mu=-B/2')
check(FW,(-4*W+U**3-6*U**2-24*U+216)/2,'mixture W coefficient')

# Exceptional mixture coefficient FW=0.
W0=(U**3-6*U**2-24*U+216)/4
K0=-(U**4-4*U**3-144*U+1296)/8
check(T.substitute((U,W0,K0)),0,'tie equation on FW=0')
check(FW.substitute((U,W0,K0)),0,'vanishing FW parametrization')
check(FU.substitute((U,W0,K0)),
      (U-6)*(U**2-4*U+36)*(3*U**2-20*U+60)/8,
      'coefficient-zero branch factorization')
assert K0.evaluate(F(6))==-108
# The two remaining quadratic factors are positive on the real line.
check(U**2-4*U+36,(U-2)**2+32,'first positive quadratic')
check(3*U**2-20*U+60,3*(U-F(10,3))**2+F(80,3),'second positive quadratic')

# J!=0 tie branch, X=Y=Z.
WE=U*(U-9)**2/27
KE=-U*(U-9)*(U**2-30*U+108)/54
check(T.substitute((U,WE,KE)),0,'equal-X tie equation')
check(E.substitute((U,WE,KE)),
      U*(U-18)**2*(U-9)*(5*U-18)**2/1458,
      'equal-X common value is nonpositive for 0<=u<=9')

# J!=0 tie branch, X=Y=1, Z=7-u.
W1=8-U
K1=(U-4)*(U**2-10*U+12)/2
R1=-(U-10)**2*(U-4)*(U-2)**2/2
Q1=(U-10)*(U-2)*(5*U**2-52*U+116)/2
check(T.substitute((U,W1,K1)),0,'two-unit tie equation')
check(E.substitute((U,W1,K1)),R1,'two-unit common value')
check((-FU+FW).substitute((U,W1,K1)),Q1,'two-unit stationary polynomial')
check(R1.derivative(0),-Q1,'derivative along the exact tie curve')

# J=0 branch, with the variable U now denoting x or z as indicated.
x=U
FE=-x**2*(x-3)**2*(x**2+18*x-27)
PE=x**3+13*x**2-45*x+27
check(E.substitute((9-3*x,3*x**2-x**3,0)),FE,'J=0 equal-X value')
check(FE.derivative(0),-6*x*(x-3)*PE,'J=0 equal-X stationary polynomial')
assert PE.evaluate(F(79,100))>0 and PE.evaluate(F(4,5))<0
assert PE.derivative(0).evaluate(F(7,5))==F(-68,25)
assert F(79,100)**2*F(11,5)**2*F(299,25)==F(225793139,6250000)>36
# The positive-R interval lies below7/5 because x²+18x-27 increases on x>=0.
assert (x*x+18*x-27).evaluate(F(7,5))>0
z=U
F1=-(z-3)**2*(z*z-6*z-3)
check(E.substitute((7-z,1+z,0)),F1,'J=0 two-unit value')
check(F1.derivative(0),-4*(z-3)*(z*z-6*z+3),'J=0 two-unit stationary polynomial')

class Q6:
    """The real quadratic field Q(sqrt(6)), with exact order comparisons."""
    def __init__(self,a=0,b=0):
        if isinstance(a,Q6):self.a,self.b=a.a,a.b
        else:self.a,self.b=F(a),F(b)
    def __add__(self,v):v=Q6(v);return Q6(self.a+v.a,self.b+v.b)
    __radd__=__add__
    def __neg__(self):return Q6(-self.a,-self.b)
    def __sub__(self,v):return self+-Q6(v)
    def __rsub__(self,v):return Q6(v)+-self
    def __mul__(self,v):
        v=Q6(v);return Q6(self.a*v.a+6*self.b*v.b,self.a*v.b+self.b*v.a)
    __rmul__=__mul__
    def __pow__(self,n):
        out=Q6(1)
        for _ in range(n):out=out*self
        return out
    def __eq__(self,v):v=Q6(v);return(self.a,self.b)==(v.a,v.b)
    def sign(self):
        a,b=self.a,self.b
        if not b:return (a>0)-(a<0)
        if not a:return (b>0)-(b<0)
        if a>0 and b>0:return 1
        if a<0 and b<0:return -1
        if a>0:return (a*a>6*b*b)-(a*a<6*b*b)
        return (6*b*b>a*a)-(6*b*b<a*a)
    def __lt__(self,v):return(self-Q6(v)).sign()<0
    def __gt__(self,v):return(self-Q6(v)).sign()>0

ustar=Q6(F(26,5),F(-4,5))
kappa=Q6(F(-488448,3125),F(233472,3125))
assert 3<ustar<4
assert Q1.evaluate(ustar)==0
assert R1.evaluate(ustar)==kappa
assert 26<kappa<36
assert K1.evaluate(ustar)==Q6(F(-588,125),F(432,125))>0
assert K1.evaluate(ustar)<4
assert 3<7-ustar<4
assert (16*K1-B**2).evaluate(ustar)==Q6(F(-288768,625),F(125952,625))>0
assert (U**2-K1).evaluate(ustar)>0
assert (4*(7-U)-K1).evaluate(ustar)>0
assert R1.derivative(0).evaluate(ustar)==0
assert R1.derivative(0).derivative(0).evaluate(ustar)<0
for root in (Q6(3,1),Q6(3,-1)):
    assert F1.evaluate(root)==36
    assert F1.derivative(0).derivative(0).evaluate(root)==-48
print('PASS algebraic candidate, physical Gram inequalities, and mixture weight range')
print('PASS exact barrier 26 < (233472 sqrt(6)-488448)/3125 < 36')
print('PASS negative second derivative along the positive stationary tie curve')
print('COMPLEMENT MINIMAX PASS')
