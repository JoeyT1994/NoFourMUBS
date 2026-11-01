"""Exhaustion of normalized cubic phase 3x3 sides; no Tao product guards survive."""
from pathlib import Path
from itertools import product
from collections import Counter
import json
from exact_algebra import *
ROOT=Path(__file__).resolve().parent

def run(write=False):
    counts=Counter();cases=[]
    for ex in product(range(3),repeat=6):
        x=[CUBES[i] for i in ex[:3]];y=[CUBES[i] for i in ex[3:]]
        M=[[ONE]*3,x,y];det=det3(M)
        simple=len(set(x))==3
        t=sum(y,ZERO);r=sum((y[i]*x[i].star() for i in range(3)),ZERO)
        delta=r.norm()-t.norm()
        if not det:kind='singular'
        elif not simple:kind='coordinate_cubic_repeated'
        else:
            assert delta==0,('cubic phase counterexample',ex,delta)
            kind='companion_guard_zero'
        counts[kind]+=1
        cases.append(dict(exponents=list(ex),kind=kind,det_norm=str(det.norm()),companion_delta=str(delta),simple_coordinate=simple))
    cert=dict(format='cubic-phase-guard-census-v1',total=729,counts=dict(counts),cases=cases)
    path=ROOT/'certificates'/'cubic_guards.json'
    if write:path.write_text(json.dumps(cert,indent=2)+'\n')
    else:assert json.loads(path.read_text())==cert,'cubic guard census mismatch'
    out=dict(total=729,counts=dict(counts),invertible_simple_sides_all_have_delta_zero=True)
    print(json.dumps(out,indent=2));return out

if __name__=='__main__':
    if not __debug__:raise SystemExit('Run without -O: assertions are proof checks.')
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--write',action='store_true')
    run(p.parse_args().write)
