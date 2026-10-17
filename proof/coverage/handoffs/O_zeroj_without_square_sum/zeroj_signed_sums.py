"""Exact check (sympy): column-weighted signed corner sums sum_C (sum_{j in C} x_j^m y_j^n) D_C on two critical
zero-J halves (gauge s=t=1), reduced modulo r^2=-XZ/Y and the W-relation, vanish identically. Prints the r^0 and r^1
parts of the reduced numerator for each weight (0 means identically zero). Uses return K's support code."""
import sys, itertools, collections, sympy as sp
sys.path.insert(0,'/Users/jtindall/Projects/NoFourMUBs/proof/coverage/returns/K_nonzero_J/support')
from verify_full_weighted import _add,_mul
from fractions import Fraction
from itertools import permutations
def Dpoly():
    one={(0,0,0,0):1}
    a,b,c,d=[{tuple(int(i==j) for j in range(4)):1} for i in range(4)]
    E=[[one,one,one],[one,a,b],[one,c,d]]
    det={};per={}
    for p in permutations(range(3)):
        term=_mul(_mul(E[0][p[0]],E[1][p[1]]),E[2][p[2]])
        per=_add(per,term)
        inv=sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
        det=_add(det,term,(-1)**inv)
    t={tuple(i-1 for i in e):v for e,v in _mul(per,_mul(det,det)).items()}
    return _add(t,{tuple(-i for i in e):v for e,v in t.items()},-1)
DP=Dpoly()
zeros={(1,0),(-1,0),(0,1),(0,-1),(1,-1),(-1,1)}
def wcoeffs(m,n):
    ans=collections.defaultdict(Fraction)
    for (a,b,c,d),co in DP.items():
        points=[(-a-b,-c-d),(a,c),(b,d)]
        for j in range(3):
            sh=points[:]; sh[j]=(sh[j][0]+m,sh[j][1]+n)
            if any(t in zeros for t in sh):continue
            ans[tuple(sorted(t for t in sh if t!=(0,0)))]+=Fraction(co,6)*6**sh.count((0,0))
    return {p:c for p,c in ans.items() if c}
# moment builder (from critical_moment_core.newton_moments)
def newton_moments(s,S,t,T,r,Q,u,v,w,U,V,W,pi,PI,up,vp,UP,VP):
    def half(s,S,t,T,r,Q,u,v,w,wb,pi,up,vp):
        m={(0,0):3,(1,0):s,(0,1):t,(1,-1):Q,(2,0):s*s-2*u*S,(0,2):t*t-2*v*T,
           (2,-2):Q*Q-2*w*r,(1,1):s*t-pi,(2,-1):s*Q-up,(-1,2):t*r-vp}
        m[3,0]=s**3-3*s*u*S+3*u; m[0,3]=t**3-3*t*v*T+3*v; m[3,-3]=Q**3-3*Q*w*r+3*w
        m[2,1]=s*m[1,1]-t*u*S+u*r; m[1,2]=t*m[1,1]-s*v*T+v*Q
        m[3,-1]=s*m[2,-1]-Q*u*S+u*T; m[3,-2]=Q*m[2,-1]-s*w*r+w*t
        m[-1,3]=t*m[-1,2]-r*v*T+v*S; m[-2,3]=r*m[-1,2]-t*wb*Q+wb*s
        return m
    m=half(s,S,t,T,r,Q,u,v,w,W,pi,up,vp)
    bar=half(S,s,T,t,Q,r,U,V,W,w,PI,UP,VP)
    m[2,2]=m[1,1]**2-2*u*v*bar[1,1]; bar[2,2]=bar[1,1]**2-2*U*V*m[1,1]
    m[4,-2]=m[2,-1]**2-2*u*w*bar[2,-1]; bar[4,-2]=bar[2,-1]**2-2*U*W*m[2,-1]
    m[-2,4]=m[-1,2]**2-2*v*W*bar[-1,2]; bar[-2,4]=bar[-1,2]**2-2*V*w*m[-1,2]
    for (i,j),val in bar.items(): m[-i,-j]=val
    return m
z,X,Y,r=sp.symbols('z X Y r')
Z=9-z**2-X-Y; g=3*z**2
def side(s,S,t,T,r,Q):
    P0=r*s*s+Q*t*t+s*t*(3-Z); P1=t*S*S+r*r*T+r*S*(3-Y); P2=s*T*T+Q*Q*S+Q*T*(3-X)
    B0=Q*S*S+r*T*T+S*T*(3-Z); B1=T*s*s+Q*Q*t+Q*s*(3-Y); B2=S*t*t+r*r*s+r*t*(3-X)
    L0=g+(9-Z)*z;L1=g+(9-Y)*z;L2=g+(9-X)*z
    la,lb,lc=P0/L0,P1/L1,P2/L2; ba,bb,bc=B0/L0,B1/L1,B2/L2
    u,v,w=la*bb,la*bc,lc*bb; U,V,W=lb*ba,lc*ba,lb*bc
    return newton_moments(s,S,t,T,r,Q,u,v,w,U,V,W,la*z,ba*z,bb*z,bc*z,lb*z,lc*z)
q=-r*Y/X
M1=side(1,X,1,Y,r,q); M2=side(-1,-X,-1,-Y,-r,-q)
M={k:M1[k]+M2[k] for k in M1}
Wrel=sp.expand(X*Y+X*Z+Y*Z-X*Y*Z - z**2*(z+3)**2)
def reduce(expr):
    num,den=sp.fraction(sp.together(expr)); num=sp.expand(num)
    P=sp.Poly(num,r); r0=0; r1=0
    for (k,),c in P.terms():
        if k%2==0: r0+=c*(-X*Z/Y)**(k//2)
        else: r1+=c*(-X*Z/Y)**(k//2)
    out=[]
    for part in (r0,r1):
        n,_=sp.fraction(sp.together(part)); n=sp.expand(n)
        if n==0: out.append(0); continue
        rem=sp.prem(n,Wrel,Y)   # pseudo-remainder modulo W relation (deg 2 in Y)
        out.append(sp.factor(rem))
    return out
for (m,n) in [(0,0),(1,0),(0,1),(1,-1),(-1,1),(2,0),(0,2),(1,1),(2,-1),(-1,2),(2,-2),(1,-2),(-2,1),(-1,-1)]:
    co=wcoeffs(m,n)
    need=set(p for k in co for p in k)
    if not need<=set(M): print((m,n),"missing",need-set(M)); continue
    expr=sum(sp.Integer(c.numerator)/c.denominator*sp.prod([M[p] for p in k]) for k,c in co.items())
    red=reduce(expr)
    print((m,n),"terms",len(co))
    for i,rr in enumerate(red):
        s=str(rr); print("   r^%d part:"%i, s if len(s)<400 else s[:400]+'...')
