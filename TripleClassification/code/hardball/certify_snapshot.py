#!/usr/bin/env python3
"""Certify a whole TC pattern snapshot by exhaustive column capture and a pair witness.

The original H domain is never shrunk.  Budget exhaustion returns NOT_ESTABLISHED.
Candidate discovery, floating point inverses, pair order and cap sizes are
untrusted proposals.  Every acceptance inequality is recomputed with Arb.
"""
import os
for _key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[_key]='1'
import argparse
import hashlib
import itertools
import json
import math
import time
from pathlib import Path
import numpy as np
from flint import ctx,arb
from correlated_cover_svd import A,ColumnCover,helmert,col,load_snapshot,text
from pair_tube_certificate import certify_helmert_pair

HERE=Path(__file__).resolve().parent

def phase_center(snapshot,c,x):
    z=col([A(t) for t in snapshot['columns'][c]['v0']])+helmert()*col([A(t) for t in x])
    return [z[a,0] for a in range(6)]

def static_plans(s,p):
    """Cheap numerical proposals; all claims are checked later."""
    plans=[];E=np.array([[float(helmert()[i,j].mid()) for j in range(5)] for i in range(6)])
    for a,b in itertools.combinations(range(6),2):
        cap=.15
        if not p['columns'][a]['roots'] or not p['columns'][b]['roots']:continue
        for ra,rb in itertools.product(p['columns'][a]['roots'],p['columns'][b]['roots']):
            va=np.array([float(A(t).mid()) for t in s['columns'][a]['v0']])+E@np.array(ra['x'],float)
            vb=np.array([float(A(t).mid()) for t in s['columns'][b]['v0']])+E@np.array(rb['x'],float)
            z=np.exp(1j*(vb-va))/6;sm=z.sum();sn=abs(sm)
            if sn<1e-12:cap=0;break
            g=-(sm.conjugate()/sn*z).imag;g-=g.mean();gn=np.linalg.norm(g)
            total=-6*gn+math.sqrt(36*gn*gn+12*sn)
            cap=min(cap,.95*total/2)
        cap=math.floor(cap*100000)/100000
        if cap<=0:continue
        Ra=float(A(s['columns'][a]['phase_radius']).upper());Rb=float(A(s['columns'][b]['phase_radius']).upper())
        motion=max((r.get('linear_root_motion',0) for c in (a,b) for r in p['columns'][c]['roots']),default=0)
        score=cap**2/(Ra**5+Rb**5)
        if cap<1.6*motion:score*=max(.01,(cap/(1.6*motion))**6)
        plans.append({'columns':[a,b],'mode':'static','cap':format(cap,'.5f'),'score':score,'motion_preference':cap>1.5*motion})
    return sorted(plans,key=lambda v:(not v['motion_preference'],-v['score']))

def prepare_static(s,p,plan):
    z=[[0]*4 for _ in range(5)]; sets={}
    for c in plan['columns']:
        sets[c]=[{'center':root['x'],'coarse_radius':plan['cap'],'epsilon':plan['cap'],'predictor':z,
                  'status':'STATIC_CAP'} for root in p['columns'][c]['roots']]
    return sets

def check_pairs(s,sets,columns,active=None):
    a,b=columns;out=[]
    ia=range(len(sets[a])) if active is None else active[a]
    ib=range(len(sets[b])) if active is None else active[b]
    for i,j in itertools.product(ia,ib):
        ra,rb=sets[a][i],sets[b][j]
        bound=certify_helmert_pair(phase_center(s,a,ra['center']),phase_center(s,b,rb['center']),
                  ra['predictor'],rb['predictor'],ra['epsilon'],rb['epsilon'],s['model']['r'])
        bound['roots']=[i,j];out.append(bound)
        if bound['status']!='PAIR_INCOMPATIBLE_GIVEN_TUBES':return False,out
    return True,out

def make_affine_sets(s,p,plan,precision):
    from predictor_tubes import build,capture_prepared
    sets={}
    for c in plan['columns']:
        sets[c]=[]
        for root in p['columns'][c]['roots']:
            prob=build(s['model'],s['columns'][c]['v0'],root['x'],precision=precision)
            choices=[]
            for radius in ('.15','.12','.10','.08','.06','.04','.03','.02','.01'):
                cap=capture_prepared(prob,radius)
                if cap['status']=='PROVED CAPTURE':choices.append(cap)
            good=[v for v in choices if float(A(v['epsilon']).upper())<=.025]
            if not good:good=[v for v in choices if float(A(v['epsilon']).upper())<=.05]
            if not good:return None
            chosen=max(good,key=lambda v:float(A(v['coarse_radius']).mid()))
            sets[c].append(chosen)
    return sets

def certify(snapshot_path,proposal_path=None,precision=128,max_nodes=200000,max_pairs=3,
            columns=None,capture_radius=None,affine=False,progress=False,engine='auto'):
    start=time.monotonic();ctx.prec=precision
    if precision<64:raise ValueError('precision must be at least 64 bits')
    if max_nodes<1 or max_pairs<1:raise ValueError('positive budgets required')
    if columns is not None and (len(columns)!=2 or any(type(c) is not int or c not in range(6) for c in columns) or len(set(columns))!=2):
        raise ValueError('Select exactly two distinct column indices from 0 through 5')
    s,sha=load_snapshot(snapshot_path)
    if proposal_path:
        raw=Path(proposal_path).read_bytes();p=json.loads(raw);phash=hashlib.sha256(raw).hexdigest()
    else:
        from numerical_scout import analyse
        p=analyse(str(snapshot_path),starts=1024,samples=0,proposal_factor=1.3,proposal_pad=.1)
        phash=hashlib.sha256(json.dumps(p,sort_keys=True).encode()).hexdigest()
    if len(p.get('columns',[]))!=6:raise ValueError('Expected six proposal columns')
    for c in range(6):
        if len(s['columns'][c]['v0'])!=6:raise ValueError('Column centre must have six phases')
        for root in p['columns'][c]['roots']:
            if len(root['x'])!=5:raise ValueError('Root proposal must have five coordinates')
            for value in root['x']:A(value)
    receipt={'schema':'tc-hardballs-pattern-certificate-v1','status':'NOT_ESTABLISHED',
        'snapshot':Path(snapshot_path).name,'snapshot_sha256':sha,'proposal_sha256':phash,
        'record_sha256':s['record_sha256'],'source_subatlas':s['subatlas'],'sub':s['sub'],'pattern':s['pattern'],
        'model_scope':'Entire original supplied H model; r and tau unchanged.',
        'campaign_closure_claim':False,'upstream_premises':['The normal-form model encloses every H in the claimed cell.',
        'Every K in the claimed pattern has each column in its supplied closed phase ball.'],
        'precision_bits':precision,'parameter_radius':s['model']['r'],'normal_remainder_radius':s['model']['tau'],
        'dependencies_sha256':{name:hashlib.sha256((HERE/name).read_bytes()).hexdigest()
            for name in ('certify_snapshot.py','correlated_cover_svd.py','pair_tube_certificate.py','predictor_tubes.py','fiber_cover.py','strong_contraction.py','scalar_second_order.py','numerical_scout.py')},
        'options':{'max_nodes_per_column':max_nodes,'max_pairs':max_pairs,'affine':affine,'engine':engine},'attempts':[]}
    plans=static_plans(s,p)
    if columns is not None:
        plans=[v for v in plans if v['columns']==columns]
        if capture_radius is not None:plans=[{'columns':columns,'cap':capture_radius,'score':0,'mode':'static'}]
    if not plans:
        receipt['reason']='No proposed incompatible pair';receipt['wall_seconds']=time.monotonic()-start;return receipt
    for plan in plans[:max_pairs]:
        sets=make_affine_sets(s,p,plan,precision) if affine else prepare_static(s,p,plan)
        attempt={'columns':plan['columns'],'mode':'affine' if affine else 'static','source_caps':sets,'column_results':[]}
        receipt['attempts'].append(attempt)
        if sets is None:
            attempt['reason']='Could not validate local predictor captures';continue
        okay,bounds=check_pairs(s,sets,plan['columns']);attempt['pair_results']=bounds
        if not okay:
            attempt['reason']='Pair inequality not established';continue
        complete=True;active={}
        order=sorted(plan['columns'],key=lambda c:float(A(s['columns'][c]['phase_radius']).mid()))
        for c in order:
            roots=[item['center'] for item in sets[c]];caps=[item['coarse_radius'] for item in sets[c]]
            result=None
            if engine in ('fiber','auto'):
                import fiber_cover
                fiber=fiber_cover.build(s,p,c,precision)
                if fiber['q_source']<1:
                    fiber_budget=min(max_nodes,4000) if engine=='auto' else max_nodes
                    result=fiber_cover.cover(fiber,caps,max_nodes=fiber_budget)
                    result['method']='two_dimensional_fiber'
            if result is None or (engine=='auto' and not result['complete_coverage']):
                preliminary=result
                cover=ColumnCover(s['model'],s['columns'][c],roots,caps)
                result=cover.cover(max_nodes=max_nodes,progress=progress)
                result['method']='five_dimensional_svd'
                if preliminary is not None:result['preliminary_fiber_result']=preliminary
            result['column']=c
            attempt['column_results'].append(result)
            if progress:print(json.dumps({'snapshot':Path(snapshot_path).name,'column':c,'complete':result['complete_coverage'],'nodes':result['stats']['nodes'],'seconds':result['wall_seconds']}),flush=True)
            if not result['complete_coverage']:
                complete=False;attempt['reason']='Exhaustive column cover budget or depth limit';break
            active[c]=[i for i,n in enumerate(result['capture_counts']) if n]
        if complete:
            okay,bounds=check_pairs(s,sets,plan['columns'],active)
            if not okay:raise AssertionError('Active subset pair check unexpectedly failed')
            attempt['pair_results']=bounds;attempt['active_captures']=active
            receipt['status']='PROVED_PATTERN_EXCLUSION'
            receipt['witness_attempt']=len(receipt['attempts'])-1
            receipt['minimum_normalized_overlap_lower']=text(min((A(v['normalized_overlap_lower']).lower() for v in bounds),default=arb(1)))
            receipt['conclusion']='No third basis in this supplied pattern for any H in the entire supplied cell model.'
            break
    receipt['wall_seconds']=time.monotonic()-start
    return receipt

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('snapshot');ap.add_argument('--proposals')
    ap.add_argument('--out',required=True);ap.add_argument('--precision',type=int,default=128)
    ap.add_argument('--max-nodes',type=int,default=200000);ap.add_argument('--max-pairs',type=int,default=3)
    ap.add_argument('--columns');ap.add_argument('--capture-radius');ap.add_argument('--affine',action='store_true')
    ap.add_argument('--engine',choices=('auto','svd','fiber'),default='auto')
    ap.add_argument('--progress',action='store_true');a=ap.parse_args()
    try:
        result=certify(a.snapshot,a.proposals,a.precision,a.max_nodes,a.max_pairs,
            None if a.columns is None else list(map(int,a.columns.split(','))),a.capture_radius,a.affine,a.progress,a.engine)
    except (ValueError,ArithmeticError,KeyError,IndexError,TypeError,np.linalg.LinAlgError) as error:
        result={'schema':'tc-hardballs-pattern-certificate-v1','status':'NOT_ESTABLISHED','reason':str(error)}
    Path(a.out).write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result.get(k) for k in ('snapshot','status','minimum_normalized_overlap_lower','wall_seconds','reason')}),flush=True)
    return 0 if result['status']=='PROVED_PATTERN_EXCLUSION' else 1

if __name__=='__main__':raise SystemExit(main())
