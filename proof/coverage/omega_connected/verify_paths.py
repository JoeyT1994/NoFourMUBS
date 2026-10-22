"""Exact check that the strict seed region Omega = {R > 0} is connected (PROOF.md Theorem 2, step 2).
The eighteen maxima (Theorem 1) are joined by explicit paths inside R > 0: the diagonal s = -t, on which R is an
explicit polynomial in x = cos t positive on [0, 1/4], and the circle s = t + pi, on which R = 256; the nine
placements meet at (0, pi) and (pi, 0)."""
import sympy as sp, itertools, numpy as np
t=sp.symbols('t',real=True)
def Rseed(a,b,c,d,conj):
    s=-(1+a+b); tt=-(1+c+d); r=-(1+c*conj(a)+d*conj(b))
    X=s*conj(s); Y=tt*conj(tt); Z=r*conj(r); p=X+Y+Z
    J=s*r*conj(tt)+conj(s)*conj(r)*tt
    W0=X*Y+X*Z+Y*Z-X*Y*Z; g=27-3*p+J; eta=9-p+J; chi=W0-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi**2
z,w=sp.symbols('z w')   # z=e^{it}, w=e^{is}; conj = inverse on the unit circle
cj=lambda e: e.subs({z:1/z,w:1/w},simultaneous=True)
def triple(u,k):
    v=[u,u,u]; v[k]=u**-2; return v
def seed(ke,ko):
    e=triple(z,ke); o=triple(w,ko)
    return (e[0]/o[1], o[0]/e[2], o[0]/e[1], e[0]/o[2])
x=sp.symbols('x')
claim=256*(1-2*x)*(1+2*x)**5*(1+2*x**2)**2*(4*x**3-2*x+1)**2
ok_diag=ok_circ=True
for ke,ko in itertools.product(range(3),range(3)):
    Rzw=sp.together(sp.expand(Rseed(*seed(ke,ko),cj)))
    # path s=-t : w=1/z ; express via x=cos t: compare numerically at many t then symbolically
    Rd=sp.simplify(sp.expand(Rzw.subs(w,1/z)))
    Rd_t=sp.simplify(sp.expand_complex(Rd.subs(z,sp.exp(sp.I*t))).rewrite(sp.cos))
    diff=sp.simplify(sp.expand_trig(Rd_t - claim.subs(x,sp.cos(t))))
    ok_diag &= (diff==0)
    # circle s=t+pi : w=-z
    Rc=sp.simplify(sp.expand(Rzw.subs(w,-z)))
    ok_circ &= sp.simplify(Rc-256)==0
assert ok_diag; print('diagonal formula matches for all 9 placements: True')
assert ok_circ; print('R = 256 on s = t + pi for all 9 placements: True')
# maxima at (alpha,-alpha) and (-alpha,alpha)
al=np.arccos(0.25); pts=[]
for ke,ko in itertools.product(range(3),range(3)):
    for (tt,ss) in [(al,-al),(-al,al)]:
        sd=[complex(sp.N(v.subs({z:sp.exp(sp.I*tt),w:sp.exp(sp.I*ss)}))) for v in seed(ke,ko)]
        pts.append(tuple(np.round(((np.angle(sd)+np.pi)%(2*np.pi)-np.pi)/al,3)))
assert len(set(pts))==18; print('distinct seeds at the 18 points: 18')
# coincidences at (0,pi) and (pi,0)
def num(ke,ko,tt,ss): return tuple(np.round([complex(sp.N(v.subs({z:sp.exp(sp.I*tt),w:sp.exp(sp.I*ss)}))) for v in seed(ke,ko)],12))
c1=(all(len({num(ke,ko,0,np.pi) for ke in range(3)})==1 for ko in range(3))); assert c1; print('at (0,pi) the even placements coincide: True')
c2=(all(len({num(ke,ko,np.pi,0) for ko in range(3)})==1 for ke in range(3))); assert c2; print('at (pi,0) the odd placements coincide: True')
# positivity of claim on [0,1/4]
bad=([r for f in [1-2*x,1+2*x,1+2*x**2,4*x**3-2*x+1] for r in sp.real_roots(sp.Poly(f,x)) if 0<=r<=sp.Rational(1,4)]); assert not bad; print('no factor of the diagonal formula vanishes on [0,1/4]: True')
print('PASS: the strict seed region Omega is path connected (all 18 maxima joined inside R > 0)')
