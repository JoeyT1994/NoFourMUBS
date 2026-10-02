"""Complete matched-cover certificates, independent partition and matching audits."""
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations,permutations
from pathlib import Path
import argparse,json,time
from flint import ctx
from side_cover_lift import (arb,acb,CUBES,cube_box,certify_box,certify_known_cubes,
    fourier_reference,reference_gram_bound,matched_bounds,collect_labels,side_triples,sharp_R_cap)
from direct_lift import frame_matrices

HERE=Path(__file__).resolve().parent


def audit_paths(paths):
    assert len(paths)==len(set(paths))
    assert all(set(path)<=set('01') for path in paths)
    leaf=set(paths)
    def visit(path):
        if path in leaf:
            assert not any(q!=path and q.startswith(path) for q in paths)
            return
        assert any(q.startswith(path) for q in paths),('missing subtree',path)
        visit(path+'0');visit(path+'1')
    visit('')
    assert sum(Q(1,2**len(path)) for path in paths)==1
    # A separate rational construction verifies each leaf stays in [-1,1]^4.
    for path in paths:
        centers=[Q(0)]*4;radii=[Q(1)]*4
        for k,bit in enumerate(path):
            axis=k%4;radii[axis]/=2;centers[axis]+=(-1 if bit=='0' else 1)*radii[axis]
        assert all(-1<=c-r<=c+r<=1 for c,r in zip(centers,radii))
        cc,hh=cube_box(CUBES[0],path);base,_=cube_box(CUBES[0])
        for c,h,b,q,r in zip(cc,hh,base,centers,radii):
            exact_offset=arb(q.numerator)/q.denominator/CUBES[0]['denominator']
            assert (c-b-exact_offset).contains(0)
            assert h==arb(r.numerator)/r.denominator/CUBES[0]['denominator']


def corner_classes():
    matrices=[m for *_,m in frame_matrices()]
    def canonical(v):
        return min(tuple(sum(a*x for a,x in zip(row,v))%6 for row in m) for m in matrices)
    counts=Counter()
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            v=tuple((r-rows[0])*(c-cols[0])%6 for r in rows[1:] for c in cols[1:])
            counts[canonical(v)]+=1
    expected={(0,0,2,4):48,(0,2,3,0):72,(0,2,3,1):144,
              (0,2,3,2):72,(1,2,2,4):36,(2,4,4,2):28}
    assert dict(counts)==expected
    assert {canonical(case['numerators']) for case in CUBES}=={(0,2,3,0),(0,2,3,1),(0,2,3,2)}
    for case in CUBES:
        H=fourier_reference(case['rows'],case['cols'])
        target,_=cube_box(case)
        for z,(i,j) in zip([acb(0,t).exp() for t in target],((1,1),(1,2),(2,1),(2,2))):
            residual=z-H[i][j]
            assert residual.real.contains(0) and residual.imag.contains(0)
        assert reference_gram_bound(H)>arb(3)/4
    print('PASS: all 400 positional F6 corners reduce to six classes; three certified classes are distinct',flush=True)


def matching_audit():
    # Independent literal permutation search versus the nearest-label shortcut.
    case=CUBES[0];cc,_=cube_box(case);hh=[arb(1)/1024]*4
    H=fourier_reference();cap=sharp_R_cap(cc,hh)
    refs=[[[H[r][c] for r in range(3)] for c in range(3,6)],
          [[H[r][c] for c in range(3)] for r in range(3,6)]]
    limits=[(arb('0.011680'),arb('0.007988')),(arb('0.019952'),arb('0.014884'))]
    for order,ref,(total,individual) in zip(((0,1,2,3),(0,2,1,3)),refs,limits):
        labels,gram,_=collect_labels([cc[i] for i in order],hh,cap,depth=20,maxlabels=1000)
        side,_=side_triples(labels,gram,pair_budget=750000,triple_budget=500000)
        fast=matched_bounds(side,ref);brute=matched_bounds(side,ref,brute=True)
        assert fast==brute
        assert fast[0]<total and fast[1]<individual
    # Exact rational audit of a 1/1024 cube even without the larger partition.
    nu=Q(22883,10000);rt3=Q(173206,100000);k=Q(7549,10000);e=Q(1,512)
    b=Q(1168,100000);c=Q(2494,125000);beta=Q(1997,250000);gamma=Q(3721,250000)
    assert (nu*nu-3)**2>5 and nu*nu>3 and rt3*rt3>3
    rt5=Q(223607,100000)
    assert rt5*rt5>5 and 3-rt5-2*nu*e-e*e>k
    assert max((e*e+c*c)/6,(e*e+b*b)/6)<Q(1,36)**2
    for total,single in [(c,beta),(b,gamma)]:
        assert (single*single+(rt3*(e+total)+nu*single)**2/k)/6<Q(1,36)**2
    print('PASS: both matching algorithms agree on 180470 triples; rational 1/1024 cube constants',flush=True)


def controls():
    case=CUBES[0];cc,hh=cube_box(case)
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0}):
        out=certify_box(cc,[h/8 for h in hh],**options)
        assert not out['ok'] and out['reason'].endswith(('budget','limit')),out
    singular=fourier_reference((0,2,4,1,3,5),(0,1,3,2,4,5))
    assert reference_gram_bound(singular)==0
    try:
        fourier_reference((0,0,2,3,4,5),tuple(range(6)))
    except ValueError:
        pass
    else:
        raise AssertionError('invalid permutation accepted')
    for case in CUBES:
        cc,hh=cube_box(case)
        assert certify_known_cubes(cc,[h/2 for h in hh])['ok']
        for *_,matrix in frame_matrices():
            transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
            widths=[sum(abs(a)*hh[0]/100 for a in row) for row in matrix]
            assert certify_known_cubes(transformed,widths)['ok']
    cc,hh=cube_box(CUBES[0]);v=arb(1)/8192;delta=2*v.atan()
    cc[1]+=delta;cc[3]+=delta
    # The exact CornerBounds curve provides the strict maximal physical point.
    assert 2304*v*v/(1+v*v)**4>0
    assert certify_known_cubes(cc,[h/8 for h in hh])['ok']
    assert not certify_known_cubes(cc,[arb.pi()/512]*4)['ok']
    print('PASS: resource failures, singular reference, invalid orders, 216 frames, strict D0 point, production-size failure',flush=True)


def replay(precision,fixture):
    ctx.prec=precision;results=[];start=time.monotonic()
    for index,leaf in enumerate(fixture['leaves']):
        cc,hh=cube_box(CUBES[0],leaf['path'])
        out=certify_box(cc,hh,depth=leaf['phase_depth'])
        assert out['ok'],(precision,leaf,out)
        results.append(dict(path=leaf['path'],phase_depth=leaf['phase_depth'],certificate=out))
        if (index+1)%64==0:print('PASS:',precision,'bits,',index+1,'partition leaves',flush=True)
    others=[]
    for case in CUBES[1:]:
        cc,hh=cube_box(case)
        out=certify_box(cc,hh,case['rows'],case['cols'],depth=case['phase_depth'])
        assert out['ok'],(case,out)
        others.append(dict(name=case['name'],certificate=out))
    print('PASS:',precision,'bits, all 255 leaves and both additional cubes;',round(time.monotonic()-start,2),'seconds',flush=True)
    return dict(precision=precision,leaves=results,additional_cubes=others)


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    fixture=json.loads((HERE/'data/matched_cube512.json').read_text())
    paths=[x['path'] for x in fixture['leaves']]
    assert fixture['denominator']==512 and len(paths)==255
    audit_paths(paths)
    for corrupt in [paths[:-1],paths+[paths[0]]]:
        try:audit_paths(corrupt)
        except AssertionError:pass
        else:raise AssertionError('corrupt partition accepted')
    print('PASS: exact complete closed dyadic cover; missing and duplicated leaves rejected',flush=True)
    corner_classes();matching_audit();controls()
    receipts=[replay(96,fixture),replay(160,fixture)]
    ctx.prec=96
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',replays=receipts),indent=2)+'\n')
    print('PASS: larger R=0 seed cube and two additional F6 seed classes',flush=True)


if __name__=='__main__':main()
