"""Audit the fixed production-width theorem, including its fast predicates.

Default: full 160-bit leaf replay. --controls-only checks metadata, exact
coverage, fast predicates, R range and nonvacuity; it is NOT a full replay.
"""
from pathlib import Path
from fractions import Fraction as F
import argparse,json,time
from flint import ctx
from verify_production_partition import check_coverage,replay_leaf
import production_seed_lift as p
from residual_lift import sharp_R_cap
from prune import R_jet
HERE=Path(__file__).resolve().parent


def controls():
    cc=[p.arb.pi()*q.numerator/q.denominator for q in p.CENTER]
    hh=[p.arb.pi()/512]*4
    assert p.certify_rational_pi_box(p.CENTER,[F(1,512)]*4)['ok']
    assert not p.certify_rational_pi_box(p.CENTER,[F(1,511)]*4)['ok']
    assert not p.certify_rational_pi_box([0]*4,[F(1,10**6)]*4)['ok']
    for _,_,_,matrix in p.frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,p.CENTER)) for row in matrix]
        assert p.certify_rational_pi_box(transformed,[F(1,16384)]*4)['ok']
        tc=[p.arb.pi()*q.numerator/q.denominator for q in transformed]
        assert p.certify_box(tc,[p.arb.pi()/16384]*4)['ok']
    assert p.certify_rational_pi_box([c+2*n for c,n in zip(p.CENTER,(7,-3,8,-2))],[F(1,512)]*4)['ok']
    assert p.certify_box([c+2*p.arb.pi()*n for c,n in zip(cc,(7,-3,8,-2))],[p.arb.pi()/1024]*4)['ok']
    assert not p.certify_box(cc,[p.arb.pi()/511]*4)['ok']
    assert not p.certify_box([p.arb('1e1000')]*4,hh)['ok']
    assert not p.certify_box([p.arb('nan')]*4,hh)['ok']
    for fun in (p.certify_box,p.certify_rational_pi_box):
        try:fun([0]*3,[1]*4)
        except ValueError:pass
        else:raise AssertionError('Invalid dimensions accepted')
        try:fun([0]*4,[-1]*4)
        except ValueError:pass
        else:raise AssertionError('Negative widths accepted')
    cap=sharp_R_cap(cc,hh);assert cap<p.arb(1)/5
    h=p.arb(1)/2048
    positive=[c-h for c in cc]
    negative=[c+x*h/100 for c,x in zip(cc,(-40,-98,-76,-4))]
    assert R_jet(positive,[p.arb(0)]*4).v.real>0
    assert R_jet(negative,[p.arb(0)]*4).v.real<0
    v=p.arb(1)/8192;delta=2*v.atan();point=[cc[0],cc[1]+delta,cc[2],cc[3]+delta]
    M=2304*v*v/(1+v*v)**4
    assert M>0 and delta<h and (R_jet(point,[p.arb(0)]*4).v.real-M).contains(0)
    assert p.certify_box(point,[h/8]*4)['ok']
    return dict(R_upper=str(cap),frames=72,strict_curve_R=str(M))


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--controls-only',action='store_true')
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    data=json.loads((HERE/'data/production_cube_pi512.json').read_text())
    assert data['status']=='verified' and data['center_pi']==list(map(str,p.CENTER))
    assert data['half_width_pi']==str(p.HALF_WIDTH) and data['matrix_radius']=='1/30'
    assert data['rows']==[0,5,3,1,2,4] and data['columns']==[0,2,1,3,4,5]
    leaves=data['leaves'];assert len(leaves)==227;check_coverage(leaves)
    for bad in (leaves[:-1],leaves+[leaves[0]]):
        try:check_coverage(bad)
        except ValueError:pass
        else:raise AssertionError('Bad partition accepted')
    control_reports=[]
    for precision in (96,160):
        ctx.prec=precision;control_reports.append(dict(precision=precision,**controls()))
    print('PASS: exact partition coverage; missing/duplicate controls; 72 frames; boundary, periodicity, finite-input controls; R<1/5 and nonvacuity',flush=True)
    reports=[];start=time.monotonic()
    if not args.controls_only:
        for leaf in leaves:
            receipt=replay_leaf(leaf)
            assert receipt['certificate']['reason']in ('residual_tube','outside_D0')
            reports.append(receipt)
            if len(reports)%25==0:print('REPLAY',len(reports),'/',len(leaves),flush=True)
        assert sum(r['certificate']['reason']=='residual_tube' for r in reports)==207
        print('PASS: all 227 leaves, 207 lifted and 20 outside D0, including R=0',flush=True)
    else:
        print('CONTROLS ONLY: no leaf replay requested; this run alone is not a cube certificate',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',scope='controls_only'if args.controls_only else 'complete_160_bit_replay',
            controls=control_reports,leaves=reports,seconds=time.monotonic()-start),indent=2)+'\n')


if __name__=='__main__':main()
