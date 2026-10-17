"""Bind exact ray labels to the phase-cover and rational graph templates.

The trigonometric enclosures are Taylor polynomials over Fraction with an
explicit Lagrange remainder. No floating-point value is a proof premise.
"""
import sys
if not __debug__ or sys.flags.optimize:
    raise RuntimeError("Run without Python optimization")
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from math import factorial,isqrt
import json
from exact_core import I
from verify_dita_rays import ROOT,sha,validate_atlas
from verify_dita_gaps import real_interval

@lru_cache(None)
def trig_interval(x):
    assert abs(x)<4
    sin=cos=F(0)
    power=F(1)
    for k in range(41):
        term=power/factorial(k)
        if k%4==0:cos+=term
        elif k%4==1:sin+=term
        elif k%4==2:cos-=term
        else:sin-=term
        power*=x
    error=abs(x)**41/factorial(41)
    return ((cos-error,cos+error),(sin-error,sin+error))

def distance_squared_bound(interval_a,interval_b):
    return sum((max(abs(a[0]-b[1]),abs(a[1]-b[0]))**2 for a,b in zip(interval_a,interval_b)),F(0))

def rounded_sqrt_upper(q):
    scale=10**15
    n=isqrt(q.numerator*scale*scale//q.denominator)+1
    out=F(n,scale)
    assert out*out>q
    return str(out)

def main():
    base=ROOT.parent
    coverpath=base/'cover'/'D0_COVER_INPUT.json'
    tubepath=base/'cover'/'D0_TUBE_INPUT.json'
    templatepath=base/'region'/'D0_TEMPLATE_CENTERS.json'
    cover=json.loads(coverpath.read_text())
    tube=json.loads(tubepath.read_text())
    templates=json.loads(templatepath.read_text())
    _,atlas,rays=validate_atlas()
    assert len(rays)==len(cover['centers'])==len(templates['centers'])==120
    assert tube['Q']==cover['Q'] and tube['centers']==cover['centers']
    Qgrid=int(cover['Q']);Tgrid=int(templates['denominator'])
    assert Qgrid>0 and Tgrid>0
    phase_max=template_max=F(0)
    for r,ray in enumerate(rays):
        assert len(cover['centers'][r])==5
        assert len(templates['centers'][r])==6
        for j,z in enumerate(ray):
            exact=(real_interval((z+z.conj())/2),real_interval(-I*(z-z.conj())/2))
            phase=((F(1),F(1)),(F(0),F(0))) if j==0 else trig_interval(F(cover['centers'][r][j-1],Qgrid))
            c=templates['centers'][r][j]
            rational=((F(c[0],Tgrid),)*2,(F(c[1],Tgrid),)*2)
            a=distance_squared_bound(exact,phase)
            b=distance_squared_bound(exact,rational)
            assert a<F(1,10**18) and b<F(1,10**18)
            phase_max=max(phase_max,a);template_max=max(template_max,b)
    receipt={"status":"PASS_EXACT_TEMPLATE_ASSOCIATION","ray_count":120,"coordinate_count":720,"label_mapping":"identical array indices", "local_cover_and_main_tube_centers_identical":True,"phase_center_coordinate_chord_distance_strict_bound":"1/1000000000","rational_template_coordinate_distance_strict_bound":"1/1000000000","sharper_phase_center_bound":rounded_sqrt_upper(phase_max),"sharper_rational_template_bound":rounded_sqrt_upper(template_max),"phase_convention":"Angles modulo2pi; first component1. Chord distance below1e-9 implies principal angular distance below2e-9.","assertions_enabled":True,"files":{'D0_RAY_ATLAS.json':sha(ROOT/'D0_RAY_ATLAS.json'),'../cover/D0_COVER_INPUT.json':sha(coverpath),'../cover/D0_TUBE_INPUT.json':sha(tubepath),'../region/D0_TEMPLATE_CENTERS.json':sha(templatepath),**{name:sha(ROOT/name) for name in ('verify_template_association.py','verify_dita_gaps.py','verify_dita_rays.py','exact_core.py','INPUT_EXACT_TRIPLE.json')}}}
    (ROOT/'D0_TEMPLATE_ASSOCIATION_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:v for k,v in receipt.items() if k!='files'}))

if __name__=='__main__':main()
