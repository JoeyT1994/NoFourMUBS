"""Exact identities behind the unconditional strict-side guard theorem."""
import sympy as S

s,t,r,sb,tb,rb = S.symbols('s t r sb tb rb')
swap = {s:sb,t:tb,r:rb,sb:s,tb:t,rb:r}
bar = lambda f: S.sympify(f).subs(swap, simultaneous=True)
X,Y,Z = s*sb,t*tb,r*rb
p=X+Y+Z; J=s*r*tb+sb*rb*t; W=X*Y+X*Z+Y*Z-X*Y*Z
g=27-3*p+J; eta=9-p+J
chi=W-(p-9)*(p-18)+(p-15)*J
R=4*g*g*eta-chi*chi
P=[r*s*s+rb*t*t+(3-Z)*s*t,
   t*sb*sb+r*r*tb+(3-Y)*r*sb,
   s*tb*tb+rb*rb*sb+(3-X)*rb*tb]
c=[9-Z,9-Y,9-X]
G=S.Matrix([[3,sb,tb],[s,3,rb],[t,r,3]])
assert S.expand(G.det()-g)==0
for j in range(3):
    assert S.expand(P[j]*bar(P[j])-(g*g+c[j]*chi+c[j]**2*eta))==0
    assert S.expand(4*eta*P[j]*bar(P[j])-(2*eta*c[j]+chi)**2-R)==0
gg,ee,hh,cc,rr=S.symbols('g eta chi c R', real=True)
# The modulus identity uses sqrt(R)^2=R, then R=4g^2 eta-chi^2.
norm=(gg+cc*hh/(2*gg))**2+cc**2*rr/(4*gg**2)
assert S.cancel(norm.subs(rr,4*gg**2*ee-hh**2)-(gg**2+cc*hh+cc**2*ee))==0
print('PASS: determinant, three P norm identities, three square identities, z modulus identity')
