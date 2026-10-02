"""Complete outward replay of ZERO_NEIGHBOURHOOD.md, at 96 and 160 bits."""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations
import argparse, copy, importlib.util, json, sys, time
from flint import ctx, arb
import zero_neighbourhood as z
import residual_lift  # load dependencies before choosing the precision
from production_seed_lift import certify_rational_pi_box as old_cube
from prune import R_jet


def exact_controls(data):
    z.check_partition(data)
    for bad in (data['leaves'][:-1],data['leaves']+[data['leaves'][0]]):
        altered=copy.deepcopy(data);altered['leaves']=bad
        try:z.check_partition(altered)
        except (AssertionError,ValueError):pass
        else:raise AssertionError('Incomplete/duplicate cover accepted')
    # The three vanishing factors on a surface give (q,2q),(2q,q),(q,-q).
    # Column cycles send our prototype onto all three, preserving q up to sign.
    base=[F(2,3),F(4,3),0,0];slope=[0,0,1,2]
    for target in ([0,0,1,2],[0,0,2,1],[0,0,1,-1]):
        found=False
        for _,_,_,A in z.frame_matrices():
            b=[sum(x*y for x,y in zip(row,base)) for row in A]
            v=[sum(x*y for x,y in zip(row,slope)) for row in A]
            for sign in (-1,1):
                if v==[sign*x for x in target] and all((x-y)%2==0 for x,y in zip(b,base)):
                    found=True
        assert found
    assert max(sum(map(abs,row)) for *_,A in z.frame_matrices() for row in A)==4
    # Every removed parameter-grid point is literally an F6 corner seed.
    seeds={tuple(((r[i]-r[0])*(c[j]-c[0]))%6 for i,j in ((1,1),(1,2),(2,1),(2,2)))
           for r in permutations(range(6),3) for c in permutations(range(6),3)}
    for k in range(6):
        assert (2,0,k,3) in seeds and (2,4,k,2*k%6) in seeds
    # Continuous tube: old cube until 7/4096; adjacent new cubes thereafter.
    eps=F(1,4096)
    assert F(1,512)-eps==F(7,4096)
    intervals=[(F(n,2048)-eps,F(n,2048)+eps) for n in range(4,17)]
    assert intervals[0][0]==F(7,4096)
    assert all(a[1]==b[0] for a,b in zip(intervals,intervals[1:]))
    assert intervals[-1][1]>z.CORRIDOR_END
    # Independent replay of the exact atlas identities and exhaustive images.
    path=z.HERE.parent/'SeedAtlas'
    sys.path.insert(0,str(path))
    spec=importlib.util.spec_from_file_location('zero_atlas_audit',path/'verify.py')
    audit=importlib.util.module_from_spec(spec);spec.loader.exec_module(audit)
    audit.physical_family();audit.coverage();audit.boundary_identities()
    # The new midpoint really lies outside all 72 images of the older cube.
    cc,_=z.extension_box(16)
    assert not old_cube(cc,[F(0)]*4)['ok']
    assert z.certify_rational_pi_box(cc,[eps]*4)['ok']
    for n in range(4,17):
        c,h=z.extension_box(n)
        assert z.certify_rational_pi_box(c,h)['ok']
    for center in z.PRODUCTION_CENTERS:
        result=z.certify_rational_pi_box(center,[F(1,512)]*4)
        assert result['ok'] and result['reason']=='outside_D0_zero_cube'
    for typ in ('curve','surface'):
        center=([F(2,3),0,F(1,6),1] if typ=='curve' else [F(2,3),F(4,3),F(1,6),F(1,3)])
        result=z.certify_rational_pi_box(center,[z.ARC_WIDTH]*4)
        assert result['ok'] and result['reason']=='outside_D0_zero_arc'
        for *_,A in z.frame_matrices():
            image=[sum(a*x for a,x in zip(row,center)) for row in A]
            assert z.certify_rational_pi_box(image,[z.ARC_WIDTH/64]*4)['ok']
        assert z.certify_rational_pi_box([x+2*k for x,k in zip(center,(2,-3,5,-7))],
                                        [z.ARC_WIDTH]*4)['ok']
    assert not z.certify_rational_pi_box([0]*4,[F(1,10)]*4)['ok']
    for cc,hh in (([0]*3,[0]*4),([0]*4,[-1]*4)):
        try:z.certify_rational_pi_box(cc,hh)
        except ValueError:pass
        else:raise AssertionError('Malformed box accepted')
    return dict(roots=12,frames=72,prototype_zero_branches=3,grid_F6_controls=12)


def precision_controls():
    # Exact CornerBounds curve: delta=2 atan(v), R=2304v^2/(1+v^2)^4.
    v=arb(1)/128;delta=2*v.atan()
    base=z.to_arb(z.F6_CENTER)
    cc=[base[0],base[1]+delta,base[2],base[3]+delta]
    expected=2304*v*v/(1+v*v)**4
    assert delta>arb.pi()/512 and delta<arb.pi()/128
    assert expected>0 and expected<arb(1)/2
    assert (R_jet(cc,[arb(0)]*4).v.real-expected).contains(0)
    assert z.certify_box(cc,[arb.pi()/8192]*4)['ok']
    assert not z.certify_box([arb('nan')]*4,[arb(0)]*4)['ok']
    # A deliberately oversized box must not gain acceptance on conversion.
    assert not z.certify_box(z.to_arb(z.F6_CENTER),[arb(1)]*4)['ok']
    # Full production-width zero-centred cubes, separate from the thin arcs.
    from paired_prune import prune_box
    witnesses=[]
    for center in ([F(2,3),0,F(1,2),1], [F(2,3),0,F(1,6),1],
                   [F(2,3),F(4,3),F(1,8),F(1,4)]):
        r=prune_box(z.to_arb(center),z.to_arb([F(1,512)]*4),depth=12,
                    maxlabels=600,pair_budget=200000)
        assert r['ok'] and r['reason']=='no_side_triple',r
        witnesses.append(dict(center_pi=list(map(str,center)),certificate=r))
    c,h=z.extension_box(8)  # Contains a genuine physical maximal completion.
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0}):
        r=prune_box(z.to_arb(c),z.to_arb(h),depth=12,**options)
        assert not r['ok'],(options,r)
    return dict(nonvacuous_R=str(expected),production_cubes=witnesses)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--precision',type=int,choices=(96,160))
    parser.add_argument('--output',type=Path)
    args=parser.parse_args();start=time.monotonic()
    data=z.load_partition();exact=exact_controls(data)
    print('PASS: exact twelve-root coverage, zero-set identities, frames, F6 grid points, continuous corridor and containment controls',flush=True)
    reports=[]
    for precision in ([args.precision] if args.precision else (96,160)):
        ctx.prec=precision
        arcs=[];extensions=[]
        for leaf in data['leaves']:
            arcs.append(dict(leaf,certificate=z.replay_arc(leaf)))
            if len(arcs)%50==0:print('REPLAY',precision,'bits:',len(arcs),'/',len(data['leaves']),'arcs',flush=True)
        for n in range(4,17):
            r=z.replay_extension(n)
            assert arb(r['R_cap'])<arb(1)/2
            extensions.append(dict(n=n,certificate=r))
        controls=precision_controls()
        reports.append(dict(precision=precision,arcs=arcs,extensions=extensions,controls=controls))
        print('PASS:',precision,'bits:',len(arcs),'arc boxes, 13 nonvacuous-curve cubes and 3 production-width domain exclusions',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',scope='trimmed zero-atlas arcs and the stated maximal Fourier curve; not whole-family T2',
            exact=exact,replays=reports,seconds=time.monotonic()-start),indent=2)+'\n')


if __name__=='__main__':main()
