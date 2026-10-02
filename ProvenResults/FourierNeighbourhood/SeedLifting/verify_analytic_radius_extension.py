"""Exact constants and outward complete-cube checks for enlarged T2 radii."""
import json
from fractions import Fraction as Q
from itertools import combinations
from flint import arb,ctx
import analytic_radius_extension as ext
import near_f6
from residual_lift import sharp_R_cap
from verify_near_f6 import factorization_audit,algebra_audit
from fourier_max_R import maximum_corner_R

def constants():
    h=Q(1,2**39);lower_s=Q(1,2**20);upper_s=Q(99,70*2**20)
    assert lower_s**2<h<upper_s**2
    tau=60*upper_s;eps=1800*upper_s
    assert 2*h<Q(1,10) and 36*h<3 and tau<Q(1,1000)
    assert 97*tau<9 and 33*tau<3
    # Divide the required inequality by sqrt(h); its largest left side is at h0.
    assert 42*upper_s+28*60<1800 and eps<Q(1,27)
    assert Q(1,2**10)+576*eps<2 and 4<243
    bound=(1+4*Q(22,7))*eps+Q(22,7)/(144*2**10)
    assert bound==ext.DISTANCE_BOUND<Q(1,30)
    t=Q(1,2**43)
    assert 10*t<h and Q(5,2)*t<Q(1,10) and (41*t)**2<3
    assert 4*ext.UNIFORM_RADIUS==t
    assert ext.SMALL_M_REFERENCE_CAP==Q(1,2**43)**2
    assert Q(22,7)*Q(1,2**43)/36<ext.SMALL_M_SEED_RADIUS
    assert 2*ext.SMALL_M_SEED_RADIUS==ext.UNIFORM_RADIUS
    return str(bound)

def main():
    bound=constants();factorization_audit();algebra_audit();caps=[]
    for precision in (160,256):
        ctx.prec=precision
        assert arb.pi()<arb(22)/7
        for case in ext.CASES:
            centers=[arb(k)*arb.pi()/3 for k in case['numerators']]
            radii=[arb(2)**-case['power']]*4
            cap=sharp_R_cap(centers,radii)
            assert cap is not None and cap<arb(2)**-20
            caps.append(dict(precision=precision,cube=case['name'],R_cap=str(cap)))
            # Strict interior avoids symbolic-centre enclosure spilling across an exact boundary.
            assert ext.certify_box(centers,[h/2 for h in radii])['ok']
            assert not ext.certify_box(centers,[arb(1)]*4)['ok']
        assert not ext.certify_box([arb('nan')]*4,[arb(1)]*4)['ok']
        assert 0<maximum_corner_R(arb(2)**-49,0)<arb(2)**-86
    frames=[A for *_,A in near_f6.frame_matrices()]
    known=[(tuple(c['numerators']),Q(1,c['denominator'])) for c in near_f6.CUBES]
    known.append(((1,2,2,4),Q(1,2**16)))
    known.extend((tuple(c['numerators']),Q(1,2**c['power'])) for c in ext.CASES)
    checked=0
    for rr in combinations(range(6),3):
        for cc in combinations(range(6),3):
            seed=tuple((rr[i]-rr[0])*(cc[j]-cc[0])%6 for i,j in ((1,1),(1,2),(2,1),(2,2)))
            assert any(tuple(sum(a*x for a,x in zip(row,seed))%6 for row in A)==nn and
                all(ext.UNIFORM_RADIUS*sum(map(abs,row))<=h for row in A)
                for A in frames for nn,h in known)
            checked+=1
    print(json.dumps(dict(status='PASS',F3_phase_radius='1/549755813888',rank_one_phase_radius='1/8796093022208',
        uniform_radius=str(ext.UNIFORM_RADIUS),small_M_reference_cap=str(ext.SMALL_M_REFERENCE_CAP),
        small_M_seed_radius=str(ext.SMALL_M_SEED_RADIUS),distance_bound=bound,F6_corner_seeds=checked,R_caps=caps),indent=2))

if __name__=='__main__':main()
