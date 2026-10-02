"""Exact algebra, exhaustive graph audit, physical controls and production replay."""
from pathlib import Path
from itertools import combinations_with_replacement
import argparse
import hashlib
import importlib.util
import json
import math
import time
import sympy as sp
from paired_prune import (arb, acb, completion_coefficients, coupled_triples,
                          match_triples, prune_box, sharp_R_cap,
                          cover_paired_sides, side_triples)
from triple_prune import prune_box as integer_prune, cover_side_triples

HERE = Path(__file__).resolve().parent


def algebra_and_graphs():
    spec = importlib.util.spec_from_file_location('prior_verify', HERE.parent/'SideTriplePrune/verify.py')
    prior = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(prior)
    prior.identities()
    prior.graph_checks()
    s,t,q,S,T,Q = sp.symbols('s t q S T Q')
    G = sp.Matrix([[3,S,T],[s,3,Q],[t,q,3]])
    assert sp.expand(G.det()-(27-3*(s*S+t*T+q*Q)+s*q*T+S*Q*t)) == 0
    triples = list(combinations_with_replacement(range(3),3))
    for mask in range(512):
        edges = {i:{j for j in range(3) if mask & (1 << (3*i+j))} for i in range(3)}
        for b in triples:
            for c in triples:
                expected = all(j in edges[i] for i in b for j in c)
                result = match_triples([b],[c],edges)
                assert result['ok'] == (not expected), (mask,b,c,result)
        expected = any(all(j in edges[i] for i in b for j in c) for b in triples for c in triples)
        assert match_triples(triples,triples,edges)['ok'] == (not expected)
    assert not match_triples([(0,0,0)],[(0,0,0)],{0:{0}},0)['ok']
    print('PASS: determinant polynomial; all 512 bipartite graphs and 100 multiset pairs per graph',flush=True)


def physical_controls():
    # Rational multiples of pi specify exact sixth roots, evaluated outwardly.
    for rows,cols,singular in [([0,1,2],[0,1,2],False),([0,2,4],[0,1,3],True)]:
        rows=rows+[i for i in range(6) if i not in rows]
        cols=cols+[i for i in range(6) if i not in cols]
        H=[[acb(0,arb.pi()*r*c/3).exp() for c in cols] for r in rows]
        cc=[arb.pi()*rows[r]*cols[c]/3 for r,c in [(1,1),(1,2),(2,1),(2,2)]]
        W,g=completion_coefficients(cc,[arb(0)]*4)
        if singular:
            assert g.contains(0)
        else:
            assert g>0
        B=[tuple(H[r][c] for r in range(3)) for c in range(3,6)]
        C=[tuple(H[r][c] for c in range(3)) for r in range(3,6)]
        result=coupled_triples((B,[(0,1,2)]),(C,[(0,1,2)]),W,g)
        assert result['reason']=='compatible_side_pair' and result['cross_rejected']==0,result
        for i in range(3):
            for j in range(3):
                residual=g*H[i+3][j+3]+sum(C[i][k]*W[k][l]*B[j][l] for k in range(3) for l in range(3))
                assert residual.real.contains(0) and residual.imag.contains(0)
        assert not coupled_triples((B,[(0,1,2)]),(C,[(0,1,2)]),W,g,cross_budget=0)['ok']
    # Exact known D0 Fourier curve, v=1/32; covers must finish nonvacuously.
    delta=2*(arb(1)/32).atan()
    cc=[4*arb.pi()/3,-arb.pi()/3+delta,arb(0),arb.pi()+delta]
    hh=[arb('0.000001')]*4
    result=prune_box(cc,hh)
    assert result['reason']=='compatible_side_pair',result
    assert all(side['retained_triples']>0 for side in result['sides'])
    cap=sharp_R_cap(cc,hh)
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0},{'cross_budget':0},{'matching_budget':0}):
        result=cover_paired_sides(cc,hh,cap,**options)
        assert not result['ok'] and result['reason'].endswith(('budget','limit')),result
    print('PASS: nonsingular and singular physical Fourier controls; strict D0 completed cover; all limits unresolved',flush=True)


def production(output):
    fixture=json.loads((HERE/'data/production_boxes.json').read_text())
    assert len(fixture['boxes'])==53
    # The root runner uses an isolated copy without the historical evidence.
    original=HERE.parents[2]/fixture['source']
    if original.exists():
        assert hashlib.sha256(original.read_bytes()).hexdigest()==fixture['source_sha256']
        retained=[v for v in json.loads(original.read_text())['unresolved_retry'] if v['how']=='unresolved']
        assert [v['theta'] for v in retained]==[v['theta'] for v in fixture['boxes']]
    records=[]
    start=time.monotonic()
    for box in fixture['boxes']:
        cc=list(map(arb,box['theta'])); hh=[arb.pi()/512]*4
        assert all(c.contains(t) for c,t in zip(cc,box['theta']))
        assert arb(math.pi/512)<hh[0]
        old=integer_prune(cc,hh,depth=10)
        cap=sharp_R_cap(cc,hh)
        fractional=[]
        for order in ((0,1,2,3),(0,2,1,3)):
            fractional.append(cover_side_triples([cc[i] for i in order],[hh[i] for i in order],cap,depth=10))
        new=prune_box(cc,hh)
        i=box['index']
        assert not old['ok'],(i,old)
        assert any(r['ok'] for r in fractional)==(i in (23,37)),(i,fractional)
        assert new['ok']==(i in (6,20,23,37)),(i,new)
        if i in (6,20):
            assert new['reason']=='no_side_pair' and all(s['retained_triples']>0 for s in new['sides'])
        records.append(dict(index=i,theta=box['theta'],integer=old,fractional=fractional,paired=new))
        if new['ok']:
            print('PASS: production index',i,new,flush=True)
    receipt=dict(status='PASS',fixture_sha256=hashlib.sha256((HERE/'data/production_boxes.json').read_bytes()).hexdigest(),
                 seconds=time.monotonic()-start,excluded=[6,20,23,37],results=records)
    if output:
        output.parent.mkdir(parents=True,exist_ok=True)
        output.write_text(json.dumps(receipt,indent=2)+'\n')
    print('PASS: full 53-box comparison: integer 0; fractional 2; coupled 4',flush=True)


if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    algebra_and_graphs()
    physical_controls()
    production(args.output)
