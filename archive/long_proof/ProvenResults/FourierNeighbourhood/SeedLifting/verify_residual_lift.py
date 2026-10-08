"""Audit the completion estimate and replay the wider non-F6 seed cube."""
from pathlib import Path
from fractions import Fraction as F
from itertools import product,permutations
import argparse,json
from flint import ctx
import residual_lift as lift
from prune import R_jet
from verify_family_side_lift import point_maximality
arb,acb=lift.arb,lift.acb


def exact_side(H,vertical=False):
    v=[tuple(H[i][k] for k in range(3)) for i in range(3,6)] if vertical else [tuple(H[k][j] for k in range(3)) for j in range(3,6)]
    return v,[(0,1,2)]


def physical_controls():
    """Explicit physical Fourier matrices; all 36 independent side orders."""
    reference=lift.family_reference('7/360',0,(0,1,2,3,4,5),(0,2,5,1,3,4))
    tested=0
    for da,db in product((-1,0,1),repeat=2):
        H=lift.family_reference(F(7,360)+F(da,100000),F(db,100000),
                               (0,1,2,3,4,5),(0,2,5,1,3,4))
        cc=[H[i][j].arg() for i,j in ((1,1),(1,2),(2,1),(2,2))]
        expected=max(lift.norm_upper([H[i][j]-reference[i][j] for i in range(6)])
                     for j in range(6))/arb(6).sqrt()
        B,C=exact_side(H),exact_side(H,True)
        for pb,pc in product(permutations(range(3)),repeat=2):
            bs=([B[0][i] for i in pb],[(0,1,2)])
            cs=([C[0][i] for i in pc],[(0,1,2)])
            result=lift.completion_bound(reference,cc,[arb(0)]*4,bs,cs)
            assert result['ok'],result
            # At the exactly equal reference, tiny enclosing rounding balls
            # on both sides can overlap; no spurious strict sign is required.
            actual=arb(result['column_distance'])
            if da or db:assert expected<actual,(da,db,result)
            else:assert actual<arb(1)/10**20
            tested+=1
    cc=lift.certified_patch_center()
    C=exact_side(reference,True)
    distant=([tuple(-z for z in row) for row in C[0]],C[1])
    assert lift.completion_bound(reference,cc,[arb(0)]*4,exact_side(reference),distant)['reason']=='contraction'
    return tested


def side_assignment_audit(cc,hh):
    H=lift.family_reference('7/360',0,(0,1,2,3,4,5),(0,2,5,1,3,4))
    refs=[[[H[k][j] for k in range(3)] for j in range(3,6)], [row[:3] for row in H[3:]]]
    cap=lift.sharp_R_cap(cc,hh);count=0
    for order,ref in zip(((0,1,2,3),(0,2,1,3)),refs):
        labels,gram,stats=lift.collect_labels([cc[i] for i in order],[hh[i] for i in order],cap,depth=18,maxlabels=1200)
        assert labels is not None
        assert stats['nodes']==2*(stats['moment_leaves']+stats['corner_leaves']+len(labels))-64
        side,report=lift.side_triples(labels,gram,800000,500000)
        assert side is not None and side[1]
        fast=lift.aligned_triples(side,ref)[1]
        brute=lift.aligned_triples(side,ref,True)[1]
        assert fast==brute
        # Repeated labels are explicitly allowed, with a bijection of slots.
        repeats=(side[0],[(0,0,0)])
        assert lift.aligned_triples(repeats,ref)[1]==[(0,0,0)]
        count+=len(side[1])
    return count


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    assert F(4,125)**2/F(19,25)<F(37,1000)**2
    assert max(F(3,100)**2,F(3,250)**2+(F(11,250)/(1-F(37,1000)))**2)/6<F(1,50)**2<F(1,48)**2
    point_maximality()
    reports=[]
    for precision in (96,160):
        ctx.prec=precision
        controls=physical_controls()
        cc=lift.certified_patch_center();hh=[arb(1)/2000]*4
        result=lift.certify_family(cc,hh)
        assert result['ok'] and result['reason']=='residual_tube',result
        for key,bound in [('C_error',F(4,125)),('eta',F(37,1000)),('first_column_error',F(3,100)),
                          ('B_column_error',F(3,250)),('preconditioned_residual',F(11,250)),
                          ('column_distance',F(1,50))]:
            assert arb(result[key])<arb(bound.numerator)/bound.denominator,(key,result)
        assert arb(result['reference_gram_lower'])>arb(19)/25
        center=R_jet(cc,[arb(0)]*4);box=R_jet(cc,hh)
        lower=center.v.real-sum(hh[i]*abs(center.d[i]) for i in range(4))-sum(hh[i]*hh[j]*abs(box.h[i][j]) for i in range(4) for j in range(4))/2
        assert lower>8 and arb(result['R_cap'])<9
        assignments=side_assignment_audit(cc,hh)
        reports.append(dict(precision=precision,certificate=result,R_lower=str(lower.lower()),
                            physical_controls=controls,assignment_controls=assignments))
        print('PASS',precision,'bits: complete 1/2000 patch; 8<R<9; distance<1/50;',controls,'physical controls;',assignments,'triple assignments',flush=True)
    ctx.prec=96;cc=lift.certified_patch_center();hh=[arb(1)/2000]*4
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0}):
        assert not lift.certify_family(cc,hh,**options)['ok'],options
    assert not lift.certify_family(cc,hh,a_turns=F(1,2),b_turns=F(1,2))['ok']
    production=lift.certify_family(cc,[arb.pi()/512]*4)
    assert not production['ok'],production
    print('PASS: incomplete-cover, resource, missing-region and full-production-width controls',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',replays=reports,production_control=production),indent=2)+'\n')


if __name__=='__main__':main()
