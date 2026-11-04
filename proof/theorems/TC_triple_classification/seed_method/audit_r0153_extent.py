#!/usr/bin/env python3
"""Audit the triangle transfer test on all native balls and all H_* alignments.

Rejection here concerns a sufficient test, never the classification of the
ball or its actual inclusion by a sharper argument. See R0153_EXTENT.md.
"""
import argparse
import gzip
import json
from pathlib import Path
from flint import arb, arb_mat, ctx
import transfer_r0153 as T


def audit_ball(ball):
    T.need(ball.gauge == 'hor', 'horizontal atlas gauge required')
    radius = arb(153)/1000
    quarter = arb.pi()/2
    integers = [round(float(v/quarter)) for v in ball.Pg_a]
    errors = [v-k*quarter for v,k in zip(ball.Pg_a, integers)]
    # A dephasing functional has norm at most two. This interval separates
    # the chosen quarter-turn and every other quarter-turn from 2R.
    for j, error in enumerate(errors):
        if 2*radius < abs(error) and abs(error) < quarter-2*radius:
            return dict(status='TRIANGLE_TEST_IMPOSSIBLE', reason='entry obstruction',
                        entry=j, quarter_turn=integers[j], residual=str(error))
    # Conditional uniqueness: any quarter-root anchor within R must have
    # exactly these dephased lifted phases. No rounding assumption is used.
    if not all(abs(v) < quarter-2*radius for v in errors):
        return dict(status='UNRESOLVED', reason='quarter-turn uniqueness not certified')
    anchor = T.Z.horizontal_vector(arb_mat([[k*quarter] for k in integers]))
    difference = arb_mat([[arb(float(v))] for v in ball.P])-anchor
    distance_lower = sum((v.abs_lower()**2 for v in difference.entries()), arb(0)).sqrt()
    frame_lower = max(sum((arb(float(ball.U[r,c]))**2 for r in range(36)),arb(0)).sqrt().lower()
                      for c in range(4))
    lower = distance_lower+frame_lower*arb(ball.r)+arb(ball.n)
    if lower > radius:
        return dict(status='TRIANGLE_TEST_IMPOSSIBLE', reason='norm lower bound',
                    lower_bound=str(lower), lower_hex=T.Z.lower(lower).hex())
    try:
        inclusion = T.inclusion(ball)
    except ArithmeticError:
        return dict(status='UNRESOLVED', reason='candidate needs an exact anchor match')
    return dict(status='INCLUSION_PASS', inclusion=inclusion)


def run(atlas):
    ctx.prec = 192
    data = json.loads(gzip.decompress(atlas.read_bytes()))
    rows = [dict(index=i, radius_hex=record['r'], **audit_ball(T.SC.Ball(record)))
            for i,record in enumerate(data['seeds'])]
    counts = {status:sum(r['status']==status for r in rows)
              for status in ('INCLUSION_PASS','TRIANGLE_TEST_IMPOSSIBLE','UNRESOLVED')}
    sources = T.bound_sources()
    for name in ('audit_r0153_extent.py','transfer_r0153.py','R0153_EXTENT.md'):
        path = T.HERE/name
        sources[str(path.relative_to(T.ROOT))] = T.sha(path)
    return dict(status='EXTENT_AUDITED', atlas_sha256=T.sha(atlas), counts=counts,
                passing_indices=[r['index'] for r in rows if r['status']=='INCLUSION_PASS'],
                scope='Triangle test only, using R=153/1000 and any horizontal phase lift of an H_* equivalent anchor.',
                negative_result='Does not disprove classification or inclusion by a sharper bound.',
                source_sha256=sources, rows=rows)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--atlas',type=Path,
                        default=T.ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz')
    parser.add_argument('--output',type=Path,required=True)
    args = parser.parse_args()
    result = run(args.atlas)
    args.output.write_bytes(gzip.compress((json.dumps(result,indent=2)+'\n').encode(),mtime=0))
    print(json.dumps({k:result[k] for k in ('status','counts','passing_indices')},indent=2))
