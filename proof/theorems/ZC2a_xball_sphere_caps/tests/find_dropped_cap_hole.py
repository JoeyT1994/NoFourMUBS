"""Find and exactly verify a geometric hole after removing a cap.

Numerical hulls propose a feasible polar point y with ||y||>1.  Integer
arithmetic checks every remaining halfspace and the strict norm inequality.
The normalized x=y/||y|| is therefore outside every remaining closed cap.
No hull-completeness assertion is needed for this counterexample.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
from hashlib import sha256
import gzip
import json
from pathlib import Path
import sys
import time
sys.path.insert(0,str(Path(__file__).resolve().parent))
import cap_coverage as C


def verify_witness(caps, witness):
    """Pure-integer replay of a stored dropped-cap uncovered direction."""
    try:
        rows=C.integer_rows([{'v':c['v'],'h':c['h']} for c in caps])
        dropped=witness['dropped_cap']
        numerator=witness['polar_witness']['numerator']
        denominator=witness['polar_witness']['denominator']
        if type(dropped) is not int or not 0<=dropped<len(rows):
            raise ValueError('invalid dropped cap index')
        if not isinstance(numerator,list) or len(numerator)!=4 or any(type(v) is not int for v in numerator):
            raise ValueError('four exact numerator integers required')
        if type(denominator) is not int or denominator<=0:
            raise ValueError('positive exact denominator integer required')
        norm_numerator=sum(v*v for v in numerator)
        if norm_numerator<=denominator*denominator:
            raise ValueError('polar witness is not strictly outside the unit ball')
        for j,row in enumerate(rows):
            if j==dropped:continue
            slack=row[4]*denominator-sum(row[k]*numerator[k] for k in range(4))
            if slack<0:
                raise ValueError('remaining halfspace violated at cap %d'%j)
        return dict(passed=True,status='CERTIFIED exact uncovered-direction replay',
                    remaining_cap_count=len(rows)-1,
                    norm_squared=str(Fraction(norm_numerator,denominator*denominator)))
    except (ValueError,TypeError,KeyError,IndexError,ZeroDivisionError) as exc:
        return dict(passed=False,status='NOT ESTABLISHED',error=str(exc))


def find_hole(caps,max_trials=8,selection="largest"):
    import numpy as np
    from scipy.spatial import ConvexHull
    started=time.perf_counter()
    rows=C.integer_rows([{'v':c['v'],'h':c['h']} for c in caps])
    points=np.asarray([[float(Fraction(a,row[4])) for a in row[:4]] for row in rows])
    # Small h/||v|| denotes a large cap. This ranking only chooses attempts.
    threshold_ratios=1./np.linalg.norm(points,axis=1)
    if selection == "largest":
        order=list(map(int,np.argsort(threshold_ratios)[:max_trials]))
    elif selection == "tight":
        original_hull=ConvexHull(points)
        distances=-original_hull.equations[:,4]/np.linalg.norm(original_hull.equations[:,:4],axis=1)
        order=[]
        for fi in np.argsort(distances):
            for index in original_hull.simplices[fi]:
                index=int(index)
                if index not in order:order.append(index)
                if len(order)>=max_trials:break
            if len(order)>=max_trials:break
    else:
        raise ValueError('unknown dropped-cap proposal selection')
    trials=[]
    for dropped in order:
        dropped=int(dropped)
        kept=[i for i in range(len(rows)) if i!=dropped]
        rrows=[rows[i] for i in kept]
        hull=ConvexHull(points[kept])
        distances=-hull.equations[:,4]/np.linalg.norm(hull.equations[:,:4],axis=1)
        candidates=np.argsort(distances)[:64]
        trials.append(dict(dropped_cap=dropped,group_index=caps[dropped].get('group_index'),
                           numerical_minimum_polar_facet_distance=float(distances[candidates[0]])))
        for candidate in candidates:
            if distances[candidate]>1.00000001:
                break
            simplex=tuple(map(int,hull.simplices[candidate]))
            try:numerator,denominator=C.exact_dual_vertex(rrows,simplex)
            except ValueError:continue
            norm_numerator=sum(v*v for v in numerator)
            norm_denominator=denominator*denominator
            if norm_numerator<=norm_denominator:continue
            minimum_slack=None
            feasible=True
            for row in rrows:
                slack=row[4]*denominator-sum(row[k]*numerator[k] for k in range(4))
                if slack<0:
                    feasible=False;break
                minimum_slack=slack if minimum_slack is None else min(minimum_slack,slack)
            if not feasible:continue
            removed_row=rows[dropped]
            removed_slack=removed_row[4]*denominator-sum(removed_row[k]*numerator[k] for k in range(4))
            return dict(status='CERTIFIED exact uncovered-direction witness',passed=True,
                        dropped_cap=dropped,group_index=caps[dropped].get('group_index'),
                        remaining_cap_count=len(rrows),
                        polar_witness=dict(numerator=numerator,denominator=denominator),
                        incident_remaining_indices=list(simplex),
                        incident_original_indices=[kept[i] for i in simplex],
                        norm_squared=str(Fraction(norm_numerator,norm_denominator)),
                        strict_norm_excess_numerator=norm_numerator-norm_denominator,
                        minimum_remaining_halfspace_slack=minimum_slack,
                        removed_halfspace_slack=removed_slack,
                        uncovered_direction='numerator / sqrt(sum(numerator_i**2))',
                        interpretation='Every remaining cap strictly misses the displayed exact unit direction.',
                        selection=selection,trials=trials,seconds=time.perf_counter()-started)
    return dict(status='NOT ESTABLISHED by bounded dropped-cap search',passed=False,
                selection=selection,trials=trials,seconds=time.perf_counter()-started)


if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('certificate')
    ap.add_argument('--max-trials',type=int,default=8)
    ap.add_argument('--selection',choices=['largest','tight'],default='largest')
    ap.add_argument('--output',type=Path)
    ap.add_argument('--verify-witness',type=Path)
    a=ap.parse_args()
    with (gzip.open(a.certificate,'rt') if a.certificate.endswith('.gz') else open(a.certificate)) as f:
        certificate=json.load(f)
    if 'edge' in certificate:certificate=certificate['edge'][0]['caps']
    result=(verify_witness(certificate['caps'],json.loads(a.verify_witness.read_text()))
            if a.verify_witness else find_hole(certificate['caps'],a.max_trials,a.selection))
    result['certificate_sha256']=sha256(Path(a.certificate).read_bytes()).hexdigest()
    text=json.dumps(result,indent=2)+'\n'
    if a.output:a.output.write_text(text)
    print(text,end='')
    raise SystemExit(0 if result['passed'] else 1)
