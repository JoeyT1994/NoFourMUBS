#!/usr/bin/env python3
"""Whole-cell phantom exclusion by complete column covers and a finite graph."""
import os
for _key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[_key]='1'
import argparse,hashlib,itertools,json,math,time
from pathlib import Path
import numpy as np
from flint import ctx,arb
from correlated_cover_svd import A,ColumnCover,load_snapshot,text
from certify_snapshot import phase_center
from pair_tube_certificate import certify_helmert_pair
import fiber_cover

HERE=Path(__file__).resolve().parent

def graph(s,p,cap=None,columns=None):
    centres=[[phase_center(s,c,r['x']) for r in p['columns'][c]['roots']] for c in range(6)]
    counts=[len(x) for x in centres]
    if cap is None and math.prod(counts)>100000:raise ValueError('Automatic graph cap proposal budget exceeded; supply a cap explicitly')
    critical={}
    for a,b in itertools.combinations(range(6),2):
        for i,j in itertools.product(range(counts[a]),range(counts[b])):
            z=np.exp(1j*np.array([float((centres[b][j][k]-centres[a][i][k]).mid()) for k in range(6)]))/6
            sm=z.sum();sn=abs(sm)
            if sn<1e-15:rc=0
            else:
                g=-(sm.conjugate()/sn*z).imag;g-=g.mean();gn=np.linalg.norm(g)
                rc=(-6*gn+math.sqrt(36*gn*gn+12*sn))/2
            critical[a,b,i,j]=rc
    if cap is None:
        choices=itertools.product(*(range(n) for n in counts))
        crit=min((max(critical[a,b,ch[a],ch[b]] for a,b in itertools.combinations(range(6),2)) for ch in choices),default=.15)
        cap=f'{math.floor(min(.15,.95*crit)*1e6)/1e6:.6f}'
    if not A(cap)>0:raise ValueError('No positive proposed cap')
    zero=[['0']*4 for _ in range(5)];edges=[];lookup={}
    for a,b,i,j in critical:
        if critical[a,b,i,j] < float(A(cap).mid())*.99:continue
        rec=certify_helmert_pair(centres[a][i],centres[b][j],zero,zero,cap,cap,s['model']['r'])
        if rec['status']=='PAIR_INCOMPATIBLE_GIVEN_TUBES':
            lookup[a,b,i,j]=len(edges);edges.append({'columns':[a,b],'roots':[i,j],'receipt':rec})
    def witnesses(cols,active=None):
        # Exhaustive backtracking. A forbidden edge closes the whole cylinder
        # of choices extending this prefix; no enumeration of its suffix is
        # necessary. Numerical ordering affects cost only.
        rows=[];order=sorted(cols,key=lambda c:counts[c]);selected={};nodes=0
        def visit(level):
            nonlocal nodes
            nodes+=1
            if nodes>100000:return False
            if level==len(order):return False
            c=order[level]
            for i in (range(counts[c]) if active is None else active[c]):
                selected[c]=i;possible=[]
                for d,j in selected.items():
                    if d==c:continue
                    key=(d,c,j,i) if d<c else (c,d,i,j)
                    if key in lookup:possible.append(lookup[key])
                if possible:
                    w=max(possible,key=lambda e:float(A(edges[e]['receipt']['normalized_overlap_lower']).mid()))
                    rows.append({'partial_choice':[[d,selected[d]] for d in order[:level+1]],'forbidden_edge':w})
                elif not visit(level+1):
                    del selected[c];return False
                del selected[c]
            return True
        return rows if visit(0) else None
    if columns is None:
        candidates=[]
        for n in range(2,7):
            for cs in itertools.combinations(range(6),n):
                ws=witnesses(cs)
                if ws is not None:
                    cost=sum(float(A(s['columns'][c]['phase_radius']).upper())**5 for c in cs)
                    candidates.append((cost,list(cs),ws))
        if not candidates:return None
        _,columns,ws=min(candidates,key=lambda x:x[0])
    else:
        if not 2<=len(columns)<=6 or len(set(columns))!=len(columns) or any(type(c) is not int or c not in range(6) for c in columns):
            raise ValueError('Invalid graph column subset')
        columns=sorted(columns);ws=witnesses(columns)
        if ws is None:return None
    used={w['forbidden_edge'] for w in ws}
    margin=min((A(edges[e]['receipt']['normalized_overlap_lower']).lower() for e in used),default=arb(1))
    return {'columns':columns,'capture_radius':cap,'root_counts':counts,'forbidden_edges':edges,
            'choice_witnesses':ws,'choice_cover_kind':'exhaustive forbidden-prefix tree',
            'total_choices_covered':math.prod(counts[c] for c in columns),
            'no_compatible_choice':True,'minimum_witness_overlap_lower':text(margin)}

def certify(snapshot,proposals=None,precision=128,max_nodes=200000,engine='auto',cap=None,columns=None,progress=False):
    started=time.monotonic();ctx.prec=precision
    if precision<64 or max_nodes<1:raise ValueError('Invalid precision or node budget')
    s,sha=load_snapshot(snapshot)
    if proposals:
        raw=Path(proposals).read_bytes();p=json.loads(raw);ph=hashlib.sha256(raw).hexdigest()
    else:
        from numerical_scout import analyse
        p=analyse(str(snapshot),starts=1024,samples=0,proposal_factor=1.3,proposal_pad=.1)
        ph=hashlib.sha256(json.dumps(p,sort_keys=True).encode()).hexdigest()
    if len(p.get('columns',[]))!=6:raise ValueError('Expected six candidate columns')
    for c in p['columns']:
        for root in c['roots']:
            if len(root['x'])!=5:raise ValueError('Candidate must have five coordinates')
            for x in root['x']:A(x)
    g=graph(s,p,cap,columns)
    rec={'schema':'tc-hardballs-graph-certificate-v1','snapshot':Path(snapshot).name,'snapshot_sha256':sha,
         'proposal_sha256':ph,'record_sha256':s['record_sha256'],'status':'NOT_ESTABLISHED','precision_bits':precision,
         'parameter_radius':s['model']['r'],'normal_remainder_radius':s['model']['tau'],
         'model_scope':'Entire supplied H cell and closed source column balls; original r and tau unchanged.',
         'campaign_closure_claim':False,'upstream_premises':['Supplied H model encloses the claimed cell.','Supplied source column balls cover the claimed pattern.'],
         'dependencies_sha256':{name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in ('certify_graph.py','certify_snapshot.py','correlated_cover_svd.py','fiber_cover.py','strong_contraction.py','scalar_second_order.py','pair_tube_certificate.py','numerical_scout.py','fiber_bootstrap.py','fiber_secant.py')},
         'options':{'engine':engine,'max_nodes_per_column':max_nodes},'graph':g,'column_results':[]}
    if g is None:
        rec['reason']='Graph exclusion not established';rec['wall_seconds']=time.monotonic()-started;return rec
    for c in sorted(g['columns'],key=lambda q:float(A(s['columns'][q]['phase_radius']).mid())):
        roots=[r['x'] for r in p['columns'][c]['roots']];caps=[g['capture_radius']]*len(roots);result=None
        if engine in ('auto','fiber','bootstrap','secant'):
            problem=fiber_cover.build(s,p,c,precision)
            fiber_budget=min(max_nodes,4000) if engine=='auto' else max_nodes
            if engine in ('bootstrap','secant'):
                if engine=='secant':
                    import fiber_secant as enhanced_cover
                else:
                    import fiber_bootstrap as enhanced_cover
                result=enhanced_cover.cover(problem,caps,max_nodes=fiber_budget)
                result['method']='two_dimensional_fiber_averaged_derivative' if engine=='secant' else 'two_dimensional_fiber_with_bootstrap'
            else:
                result=fiber_cover.cover(problem,caps,max_nodes=fiber_budget)
                result['method']='two_dimensional_fiber'
        if engine=='svd' or (engine=='auto' and not result['complete_coverage']):
            preliminary=result
            problem=ColumnCover(s['model'],s['columns'][c],roots,caps)
            result=problem.cover(max_nodes=max_nodes,progress=progress);result['method']='five_dimensional_svd_with_shared_parameter_test'
            if preliminary is not None:result['preliminary_fiber_result']=preliminary
        result['column']=c;rec['column_results'].append(result)
        if progress:print(json.dumps({'snapshot':rec['snapshot'],'column':c,'complete':result['complete_coverage'],'nodes':result['stats']['nodes'],'seconds':result['wall_seconds']}),flush=True)
        if not result['complete_coverage']:
            rec['reason']='Exhaustive column cover not completed';break
    if len(rec['column_results'])==len(g['columns']) and all(t['complete_coverage'] for t in rec['column_results']):
        rec['status']='PROVED_PATTERN_EXCLUSION';rec['conclusion']='No third basis occurs in this supplied pattern for any H in the entire supplied cell model.'
        rec['minimum_normalized_overlap_lower']=g['minimum_witness_overlap_lower']
    rec['wall_seconds']=time.monotonic()-started
    return rec

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('snapshot');p.add_argument('--proposals');p.add_argument('--out',required=True)
    p.add_argument('--precision',type=int,default=128);p.add_argument('--max-nodes',type=int,default=200000)
    p.add_argument('--engine',choices=('auto','fiber','svd','bootstrap','secant'),default='auto');p.add_argument('--capture-radius');p.add_argument('--columns');p.add_argument('--progress',action='store_true');a=p.parse_args()
    try:r=certify(a.snapshot,a.proposals,a.precision,a.max_nodes,a.engine,a.capture_radius,None if a.columns is None else list(map(int,a.columns.split(','))),a.progress)
    except (ValueError,ArithmeticError,KeyError,IndexError,TypeError,np.linalg.LinAlgError) as e:r={'schema':'tc-hardballs-graph-certificate-v1','status':'NOT_ESTABLISHED','reason':str(e)}
    Path(a.out).write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:r.get(k) for k in ('snapshot','status','minimum_normalized_overlap_lower','wall_seconds','reason')}),flush=True)
    return 0 if r['status']=='PROVED_PATTERN_EXCLUSION' else 1
if __name__=='__main__':raise SystemExit(main())
