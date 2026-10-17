"""Independent static/input certificate for the frozen native-128 tube code.

This is not a replay of the branch-and-bound search and cannot certify its
completion. It binds the reviewed code and checks the exact input and the
numerical inequalities used in the accompanying arithmetic proof.
"""
import sys
if not __debug__ or sys.flags.optimize:
    raise RuntimeError("Run without Python optimization")
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
from math import factorial
import json
import re
from exact_core import Q,I
from verify_dita_rays import ROOT,sha,validate_atlas

PINNED={
    '../cover/d0_tube_cover.cpp':'520dfcb7213bf3a7f73ab09ad8f3f8ea151d4e7ff9c23649febe42d0b42625f8',
    '../cover/tube_inputs.h':'4760aa52c74ce697491edaece7ae1bfd10a19c5fe8f7b5b1a005ecf4b0c2ec30',
    '../cover/ARITHMETIC_AND_COVER_SOUNDNESS.md':'9a2ee211aff05b51c4e5fea79f46a4f69354a7acab92515e0c465f875e1f0354',
}

def atan_interval(x,n=40):
    s=sum(((-1)**k*x**(2*k+1)/F(2*k+1) for k in range(n)),F(0))
    next_term=(-1)**n*x**(2*n+1)/F(2*n+1)
    return min(s,s+next_term),max(s,s+next_term)

def parse_array(text,name):
    body=re.search(re.escape(name)+r'\s*=\s*\{(.*?)\};',text,re.S).group(1)
    return [[int(x) for x in row.split(',')] for row in re.findall(r'\{([^{}]+)\}',body)]

def main():
    for name,digest in PINNED.items():assert sha(ROOT/name)==digest
    cover=ROOT.parent/'cover'
    data=json.loads((cover/'D0_TUBE_INPUT.json').read_text())
    header=(cover/'tube_inputs.h').read_text()
    assert data['source_cpp_sha256']==PINNED['../cover/d0_tube_cover.cpp']
    grid=2**44
    assert data['Q']==grid
    pilo,pihi=data['pi_lo'],data['pi_hi']
    assert pihi==pilo+1 and 3*grid<pilo<pihi<4*grid
    aa,bb=atan_interval(F(1,5)),atan_interval(F(1,239))
    true_lo,true_hi=16*aa[0]-4*bb[1],16*aa[1]-4*bb[0]
    assert F(pilo,grid)<true_lo<true_hi<F(pihi,grid)
    assert re.search(r'PI_LO=(\d+)LL',header).group(1)==str(pilo)
    assert re.search(r'PI_HI=(\d+)LL',header).group(1)==str(pihi)
    coefficients=parse_array(header,'fixed_coefficients[75]')
    centers=parse_array(header,'fixed_centers[120][5]')
    assert coefficients==data['coefficients'] and centers==data['centers']
    assert len(centers)==120 and all(len(c)==5 for c in centers)
    D,_,_=validate_atlas()
    pairs=list(combinations(range(6),2))
    for k,(r,s,lo,hi) in enumerate(coefficients):
        assert (r,s)==pairs[k%15]
        value=D[r][k//15].conj()*D[s][k//15]
        if value==1:a=b=F(0)
        elif value==-1:a,b=true_lo,true_hi
        elif value==I:a,b=true_lo/2,true_hi/2
        else:
            assert value==-I
            a,b=-true_hi/2,-true_lo/2
        assert F(lo,grid)<=a<=b<=F(hi,grid)
    eps=F(1,data['source_radius_den'])
    assert eps==F(1,10000)
    eta=30*eps+36*eps**2
    assert eta==F(75009,25000000)
    eta_grid=-(-eta.numerator*grid//eta.denominator)
    assert eta_grid==data['residual_tolerance_numerator']==52782891321
    assert re.search(r'RESIDUAL_TOLERANCE=(\d+)LL',header).group(1)==str(eta_grid)
    halfwidth=-(-grid//data['tube_radius_den'])
    assert halfwidth==175921860445
    assert F(halfwidth,grid)+F(1,10**9)<F(10001,10**6)
    shift=data['cube_shift']
    assert shift==grid//8 and 2*pihi<7*grid<2**47
    # Every search interval stays in this cube by intersection/splitting.
    # Including theta0=0, pair differences plus gamma remain below10 radians.
    assert -pihi+shift<0<pihi+shift
    assert 3*pihi<10*grid<32*grid
    for c in centers:
        assert all(-pilo+shift<x-halfwidth and x+halfwidth<pilo+shift for x in c)
    for j,c in enumerate(centers):
        for d in centers[j+1:]:
            assert any(abs(x-y)>2*halfwidth for x,y in zip(c,d))
    M=2**63-1
    assert M*M<2**126<2**127-1
    assert 5*M<2**66 and 2*M<2**64
    assert factorial(19)<2**57
    # Independent coarse point-trig bound, not an empirical test.
    # |k|<=21 follows from |x|<=32Q and PI_LO>3Q.
    assert F(64,3)+F(1,2)<22
    pi_reduction_error=F(21,2)+1
    assert pi_reduction_error<12
    assert F(786,1000)**2<F(2,3)
    horner_coefficient_rounding=F(2)/(1-F(2,3))
    rounded_square_sensitivity=F(1)/(1-F(2,3))**2
    assert horner_coefficient_rounding==6 and rounded_square_sensitivity==9
    assert grid<factorial(19)
    cosine_error=12+6+9+1
    sine_error=12+6+9+1+1
    assert cosine_error==28 and sine_error==29 and sine_error<32<1024
    # The root note's sharper combined recurrence also closes.
    assert F(5)+(F(5,8)*14)<14
    assert F(786,1000)*14+1<14
    assert 12+14+1<32
    files={name:sha(ROOT/name) for name in PINNED}
    files.update({name:sha(ROOT/name) for name in (
        'audit_d0_tube.py','INDEPENDENT_TUBE_AUDIT.md',
        'verify_dita_rays.py','exact_core.py','INPUT_EXACT_TRIPLE.json',
        'D0_RAY_ATLAS.json','../cover/D0_TUBE_INPUT.json')})
    receipt={
        'status':'PASS_STATIC_ARITHMETIC_AND_COVER_REVIEW',
        'scope':'Frozen source/input and analytic proof review only. Full fresh-search completion is a separate necessary gate.',
        'native_128_products_bound':'(2^63-1)^2 < 2^126',
        'native_128_five_term_sums_bound':'5*(2^63-1) < 2^66',
        'point_trig_independent_error_bound':'29/Q < 32/Q < 1024/Q',
        'root_note_point_trig_bound':'27/Q < 32/Q',
        'exact_gaussian_coefficient_count':75,
        'disjoint_closed_template_count':120,
        'critical_point_coverage':'PASS by signed-index and interval-intersection argument',
        'residual_tube_containment':'PASS for arbitrary finite dyadic preconditioner; no inverse or nonsingularity premise',
        'closed_tree_coverage':'PASS by root coverage, root-preserving intersections, and shared-endpoint splits, conditional on successful exhaustion',
        'assertions_enabled':True,
        'files':files
    }
    (ROOT/'INDEPENDENT_TUBE_AUDIT_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:v for k,v in receipt.items() if k!='files'}))

if __name__=='__main__':main()
