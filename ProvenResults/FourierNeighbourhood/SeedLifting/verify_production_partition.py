"""Replay a supplied COMPLETE production-width F6 seed partition.

This verifier asserts no theorem without a complete passing partition.
The fixed parent has centre (4pi/3,5pi/3,0,pi), half-width pi/512.
"""
from pathlib import Path
from fractions import Fraction as F
import argparse,json,time
from flint import ctx
from residual_lift import arb,certify_f6


def check_coverage(leaves):
    if not leaves:
        raise ValueError('Empty partition')
    paths=[v['path'] for v in leaves]
    if len(paths)!=len(set(paths)):
        raise ValueError('Duplicate leaf')
    ordered=sorted(paths)
    if any(any(bit not in '01' for bit in p) or len(p)>32 for p in paths):
        raise ValueError('Invalid binary path')
    if any(b.startswith(a) for a,b in zip(ordered,ordered[1:])):
        raise ValueError('An ancestor and descendant cannot both be leaves')
    if sum((F(1,2**len(p)) for p in paths),F(0))!=1:
        raise ValueError('Incomplete dyadic partition')
    if any(not isinstance(v['phase_depth'],int) or not 0<=v['phase_depth']<=24 for v in leaves):
        raise ValueError('Invalid phase depth')
    return True


def box(path):
    # Exact rational multiples of pi, computed independently of the search's
    # repeated Arb midpoint/radius updates. All split axes are depth mod 4.
    centers=[F(k,3) for k in (4,5,0,3)]
    radii=[F(1,512)]*4
    for depth,bit in enumerate(path):
        if bit not in '01':raise ValueError('Invalid binary path')
        axis=depth%4;radii[axis]/=2
        centers[axis]+=(-1 if bit=='0' else 1)*radii[axis]
    convert=lambda q:arb.pi()*q.numerator/q.denominator
    return list(map(convert,centers)),list(map(convert,radii))


def replay_leaf(leaf):
    centers,radii=box(leaf['path'])
    result=certify_f6(centers,radii,depth=leaf['phase_depth'])
    if not result['ok']:
        raise AssertionError((leaf,result))
    if result['reason']=='residual_tube':
        assert arb(result['column_distance'])<arb(1)/30
    else:
        assert result['reason'] in ('outside_D0','outside_strict_D0')
    return dict(leaf,certificate=result)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('partition',type=Path)
    parser.add_argument('--precision',type=int,choices=(96,160),default=160)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args();ctx.prec=args.precision
    proposal=json.loads(args.partition.read_text())
    if proposal.get('failed') or proposal.get('pending'):
        raise ValueError('Proposal has failed or pending cells')
    leaves=proposal['leaves'];check_coverage(leaves)
    # These controls are independent of the expensive numerical replay.
    for invalid in (leaves[:-1],leaves+[leaves[0]]):
        try:check_coverage(invalid)
        except ValueError:pass
        else:raise AssertionError('Coverage control accepted')
    start=time.monotonic();receipts=[]
    for leaf in leaves:
        receipts.append(replay_leaf(leaf))
        if len(receipts)%25==0:print('REPLAY',len(receipts),'/',len(leaves),flush=True)
    report=dict(status='PASS',precision=args.precision,parent='(pi/3)(4,5,0,3), half-width pi/512',
                scope='Quartet exclusion on the strict maximal-corner domain D0 with R>0.',
                leaves=receipts,seconds=time.monotonic()-start)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print('PASS: exact complete dyadic coverage and',len(leaves),'whole-cell certificates',flush=True)


if __name__=='__main__':main()
