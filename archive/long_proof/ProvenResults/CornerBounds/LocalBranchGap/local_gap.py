"""Whole-box physical-D0 R gaps, with independent finite-cover replay."""
from fractions import Fraction as Q
from itertools import permutations
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'CampaignSecondPass'))
import second_pass
from flint import arb

F6_SEEDS=tuple(sorted({tuple(r*c%6 for r in rr for c in cc)
    for rr in permutations(range(1,6),2) for cc in permutations(range(1,6),2)}))

def f6_separation(centers,radii):
    cc,hh=list(map(arb,centers)),list(map(arb,radii));bounds=[]
    for seed in F6_SEEDS:
        each=[]
        for c,h,n in zip(cc,hh,seed):
            d=c-arb(n)*arb.pi()/3
            shift=round(float(d/(2*arb.pi()))) # proposal; bound checked below
            d=abs(d-2*arb.pi()*shift)
            if not d<=2*arb.pi():return Q(0)
            lower=min(d.lower(),(2*arb.pi()-d).lower())-h
            each.append(max(arb(0),lower.lower()))
        bounds.append(max(each))
    lower=min(bounds).lower();q=Q(str(lower.fmpq()))
    return Q((q*2**20).__floor__(),2**20)

def certify_box(centers,radii,thresholds=(Q(1),Q(1,64),Q(1,4096)),max_depth=8,node_budget=511):
    cc,hh=list(map(arb,centers)),list(map(arb,radii));attempts=[]
    for value in thresholds:
        m=Q(value)
        if m<=0:raise ValueError('Positive exact threshold required')
        if m.denominator & (m.denominator-1):raise ValueError('Use exact dyadic thresholds for retained engine')
        cert=second_pass.certify_box(cc,hh,threshold=arb(m.numerator)/m.denominator,max_depth=max_depth,node_budget=node_budget)
        attempts.append(dict(threshold=str(m),certificate=cert))
        if cert['ok']:
            return dict(ok=True,scope='D0_implies_R_above_threshold',threshold=str(m),certificate=cert,
                        F6_distance_lower=str(f6_separation(cc,hh)),attempts=attempts)
    return dict(ok=False,reason='no_certified_gap',attempts=attempts)

def replay(centers,radii,result):
    if result.get('scope')!='D0_implies_R_above_threshold' or result.get('ok') is not True:
        raise ValueError('A physical-D0 gap certificate is required')
    m=Q(result['threshold']);cert=result['certificate']
    if m<=0 or arb(cert['threshold'])!=arb(m.numerator)/m.denominator:
        raise ValueError('Threshold mismatch')
    if Q(result.get('F6_distance_lower','0'))>f6_separation(centers,radii):
        raise ValueError('Invalid F6 separation claim')
    return second_pass.replay(centers,radii,cert)
