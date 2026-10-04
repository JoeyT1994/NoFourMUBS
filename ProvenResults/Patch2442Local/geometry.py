"""Certified circular seed-box containment and exact seed-frame changes."""
from fractions import Fraction as Q
from itertools import permutations
from intervals import IV,SCALE
from cones import RADIUS
from build_cones import EPSILON

def atan_inverse(q,n=80):
    s=sum((Q((-1)**k,(2*k+1)*q**(2*k+1)) for k in range(n)),Q(0))
    t=Q((-1)**n,(2*n+1)*q**(2*n+1))
    return IV(min(s,s+t),max(s,s+t))
PI=16*atan_inverse(5)-4*atan_inverse(239)
SEEDS=((2,4,4,2),(4,2,2,4))
PERMS=tuple(permutations(range(3)))

def rational(x):
    if isinstance(x,bool) or not isinstance(x,(int,str)):
        raise ValueError('exact rational strings or integers required')
    return Q(x)

def parse_box(rec):
    c=list(map(rational,rec['centers']));r=list(map(rational,rec['radii']))
    if len(c)!=4 or len(r)!=4 or any(x<0 for x in r):raise ValueError('four centers and nonnegative radii required')
    return c,r

def local_offsets(c,r,seed):
    out=[]
    for cc,rr,n in zip(c,r,seed):
        z=IV(cc)-PI*Q(n,3)
        # This is merely a proposal for an integer winding. The inequalities
        # below, not this nearest-integer choice, authorize containment.
        proposal=Q(z.lo+z.hi,2)/Q(PI.lo+PI.hi)
        k=int((proposal+Q(1,2))//1)
        out.append(IV(cc-rr,cc+rr)-PI*(Q(n,3)+2*k))
    return out

def in_punctured_ball(u):
    bound=IV(RADIUS)
    outer=all(z.lo>=-bound.lo and z.hi<=bound.lo for z in u)
    away=any(z.lo>0 or z.hi<0 for z in u)
    return outer and away

def cone_contains(u):
    # Whole-box sufficient conditions for min(|u1|,|u4|)>=(1-eps)rho
    # and |u2|,|u3|<=eps*rho, with u1,u4 of the same sign.
    for sign in (-1,1):
        a=u[0]*sign;d=u[3]*sign
        if min(a.lo,d.lo)<=0:continue
        low=max(a.lo,d.lo);high=max(a.hi,d.hi)
        if min(a.lo,d.lo)*EPSILON.denominator < (EPSILON.denominator-EPSILON.numerator)*high:continue
        if any(max(abs(u[k].lo),abs(u[k].hi))*EPSILON.denominator>EPSILON.numerator*low for k in (1,2)):continue
        return sign
    return None

def reframe(u,rows,cols):
    U=[[IV(0),IV(0),IV(0)],[IV(0),u[0],u[1]],[IV(0),u[2],u[3]]]
    r0,c0=rows[0],cols[0]
    return [U[i][j]-U[i][c0]-U[r0][j]+U[r0][c0] for i in rows[1:] for j in cols[1:]]

def classify(rec,frames=True):
    ident=rec.get('id')
    base={'id':ident,'ok':False,'reason':'whole_box_ball_membership_not_certified','statement':'Inconclusive; no exclusion claimed.'}
    try:c,r=parse_box(rec)
    except Exception as ex:
        base['reason']='invalid_input: '+str(ex);return base
    found_ball=False
    for seed in SEEDS:
        u=local_offsets(c,r,seed)
        if not in_punctured_ball(u):continue
        found_ball=True
        if cone_contains(u) is not None:
            return {'id':ident,'ok':True,'reason':'certified_directional_radius_cap','statement':'No physical order-six Hadamard has this corner in strict D0 anywhere in the whole closed input box.'}
        if frames:
            for rows in PERMS:
                for cols in PERMS:
                    v=reframe(u,rows,cols)
                    if in_punctured_ball(v) and cone_contains(v) is not None:
                        return {'id':ident,'ok':True,'reason':'certified_directional_radius_cap_after_exact_seed_reframing','statement':'No physical order-six Hadamard has this corner in strict D0 anywhere in the whole closed input box.'}
    if found_ball:base['reason']='inside_ball_but_outside_certified_angular_domain'
    return base
