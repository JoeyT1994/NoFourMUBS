#!/usr/bin/env python3
"""Prove all-triples classification on a recentered ball in a native seed frame.

The default ball is ||w-w_*||_2 <= 1/160 inside original seed ball 1879.
No conclusion is accepted without the complete torus-to-branch cover.
"""
import argparse
import gzip
import hashlib
import json
import sys
from pathlib import Path

import numpy as np
from flint import acb,arb,ctx

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
sys.path[:0]=[str(HERE),str(ROOT/'proof/seed_atlas/cert')]
import seedcert as SC
import anchor_model as AM
import column_models as CM
import seed_cover as C
import reduced as R
import wholeball as Z


def prepare(model,proposals):
    out=[]
    for v in proposals['root_phases']:
        if len(v)!=6 or v[0]!=0:raise ValueError('root proposal must have first phase zero')
        v0=[float(arb(v[k])+model['Q0'][6*k,0]-model['Q0'][0,0]) for k in range(1,6)]
        p=CM.build(model,v0);proof=CM.certify(p)
        if proof['status']!='CERTIFIED':raise ArithmeticError('column existence failed: '+str(proof))
        p['epsilon']=arb(proof['epsilon']).upper()
        p['normal_derivative']=CM.normal_derivative_bound(p,p['epsilon'])
        for radius in [arb(1)/8,arb(1)/16,arb(1)/32,arb(3)/100,arb(29)/1000,
                       arb(28)/1000,arb(27)/1000,arb(1)/64,arb(1)/128]:
            q=CM.uniqueness_cube(p,radius)
            if q<1:break
        if not q<1:raise ArithmeticError('no uniform column uniqueness cube')
        p['cube']=radius;p['cube_q']=q
        pb=CM.phase_box(p,p['epsilon'])
        if any(not abs(pb[i+1]-p['v0'][i])<radius for i in range(5)):
            raise ArithmeticError('column branch leaves its uniqueness cube')
        out.append(p)
    if not out:raise ValueError('no root proposals')
    return out


def assign_bins(bins,level,prepared):
    """Every retained torus box must fit a verified branch-uniqueness cube."""
    model=prepared[0]['model'];t=arb.pi()/level
    shifts=[model['Q0'][6*r,0]-model['Q0'][0,0] for r in range(1,6)]
    phases=[[p['v0'][r]-shifts[r] for r in range(5)] for p in prepared]
    numeric=np.array([[float(v) for v in row] for row in phases])
    assignments=[];missing=[]
    for b in bins:
        centre=[arb(2*k+1)*t for k in b]
        delta=(np.array([float(v) for v in centre])[None,:]-numeric+np.pi)%(2*np.pi)-np.pi
        # Ordering only; every accepted box inclusion is an Arb inequality.
        ordering=np.argsort(np.max(np.abs(delta),axis=1))
        found=None
        for idx in ordering:
            idx=int(idx);p=prepared[idx]
            if all(abs(acb(0,centre[r]-phases[idx][r]).exp().arg())+t<p['cube'] for r in range(5)):
                found=idx;break
        if found is None:missing.append(list(b))
        assignments.append(found)
    return assignments,missing


def source_hashes():
    paths=[HERE/name for name in ('replay_ball.py','anchor_model.py','column_models.py','known_family.py',
                                 'reduced.py','seed_cover.py','anchor_proposals.json')]
    paths.extend(HERE.parent/name for name in ('local.py','tao.py'))
    paths.extend(ROOT/'proof/seed_atlas/cert'/name for name in ('patches.py','wholeball.py','seedcert.py','wholeball_basis.json'))
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}


def run(atlas,radius_denominator=160,max_level=1536):
    if radius_denominator<=0:raise ValueError('invalid radius')
    levels=[6]
    while levels[-1]<max_level:levels.append(2*levels[-1])
    if levels[-1]!=max_level:raise ValueError('level must be 6 times a power of two')
    ctx.prec=160
    document=json.loads(gzip.decompress(atlas.read_bytes()));ball=SC.Ball(document['seeds'][1879])
    model=AM.build(ball,arb(1)/radius_denominator)
    proposals=json.loads((HERE/'anchor_proposals.json').read_text())
    prepared=prepare(model,proposals)
    print(json.dumps(dict(stage='column branches',count=len(prepared),radius='1/'+str(radius_denominator))),flush=True)
    adjacency=R.graph(prepared);cliques,steps=C.all_cliques(adjacency)
    clique_proofs=[R.classify_clique(c,prepared,proposals['templates']) for c in cliques]
    print(json.dumps(dict(stage='classified every graph clique',count=len(clique_proofs))),flush=True)
    retained,m,trace=C.bins(model,levels)
    assignments,missing=assign_bins(retained,m,prepared)
    if missing:
        diagnostic=HERE/'results'/'unassigned_bins.json'
        diagnostic.parent.mkdir(exist_ok=True)
        diagnostic.write_text(json.dumps(dict(status='NOT ESTABLISHED',radius='1/'+str(radius_denominator),
                                              level=m,bins=missing,trace=trace),indent=2)+'\n')
        raise ArithmeticError(str(len(missing))+' retained bins have no certified branch assignment; first='+str(missing[:5]))
    return dict(status='CERTIFIED',claim='every MUB triple over this four-dimensional seed ball is of continuous-construction type',
                original_ball_classification='NOT ESTABLISHED',original_seed_index=1879,
                coordinates='the original w frame, translated by w_*',radius='1/'+str(radius_denominator),
                anchor_seed_phases=['0','-pi','-pi','-pi'],
                native_anchor_w=[str(model['native_anchor'][i,0]) for i in range(4)],
                model=model['summary'],columns=len(prepared),
                column_epsilon_max=Z.upper(arb(max(Z.upper(p['epsilon']) for p in prepared))),
                column_normal_derivative_max=Z.upper(arb(max(Z.upper(p['normal_derivative']) for p in prepared))),
                column_cube_q_max=Z.upper(arb(max(Z.upper(p['cube_q']) for p in prepared))),
                column_cubes=[str(p['cube']) for p in prepared],
                complete_torus_cover=trace,final_bins=len(retained),unassigned_bins=0,
                assignment_sha256=hashlib.sha256(json.dumps(assignments,separators=(',',':')).encode()).hexdigest(),
                graph_edges=sum(v.bit_count() for v in adjacency)//2,graph_steps=steps,cliques=clique_proofs,
                precision_bits=ctx.prec,atlas_sha256=hashlib.sha256(atlas.read_bytes()).hexdigest(),source_sha256=source_hashes())


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--atlas',type=Path,default=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz')
    parser.add_argument('--radius-denominator',type=int,default=160)
    parser.add_argument('--max-level',type=int,default=1536)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    result=run(args.atlas,args.radius_denominator,args.max_level)
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','claim','radius','columns','final_bins','unassigned_bins','original_ball_classification')}))
