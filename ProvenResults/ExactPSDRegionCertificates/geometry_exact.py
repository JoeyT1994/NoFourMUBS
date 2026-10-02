"""Exact source-box decoding and coverage bounds; no subdivision."""
from fractions import Fraction as F
from exact_core import I,C,S,HJ

def leaf_box(root,path):
    c=[F(2*k+1,512) for k in root];r=[F(1,512)]*4
    for depth,b in enumerate(path):
        if b not in '01':raise ValueError('invalid path')
        j=depth%4;r[j]/=2;c[j]+=(1 if b=='1' else -1)*r[j]
    return c,r

def small_trig(x):
    x=F(x)
    if abs(x)>F(1,32):raise ValueError('small-angle range')
    xx=I(x);x2=xx*xx;co=I(1);si=xx;tc=I(1);ts=xx
    for k in range(1,6):
        tc=-tc*x2/F((2*k-1)*(2*k));ts=-ts*x2/F((2*k)*(2*k+1))
        co+=tc;si+=ts
    # Both errors <= (1/32)^12/12! < 2^-70; use a simpler checked dyadic.
    from math import factorial
    e=max(abs(x)**12/F(factorial(12)),abs(x)**13/F(factorial(13)))
    return C(co+I(-e,e),si+I(-e,e))

def cayley_leaf_interval(base,delta_lo,delta_hi):
    bounds=[]
    for d in [delta_lo,delta_hi]:
        z=base*small_trig(d);den=1+z.re
        if den.lo<=0:raise ValueError('Cayley pole')
        bounds.append(z.im/den)
    return I.raw(bounds[0].lo,bounds[1].hi)

def r_bound(cj,bj,uis):
    val=cj.v.re
    for u,d in zip(uis,cj.d):val+=u*d.re
    err=I()
    for k,(i,j) in enumerate(HJ):
        err+=uis[i].mag()*uis[j].mag()*bj.h[k].re.mag()*(F(1,2) if i==j else 1)
    return val+I.raw(-err.hi,err.hi)
