#!/usr/bin/env python3
"""Complete all-K core replay with the quantitative two-anchor crossing test."""
import argparse
import hashlib
import json
from pathlib import Path
import sys
import time
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import bootstrap as B
import model as XM
import pipeline
import run_xball as RX
from flint import arb,arb_mat,fmpq_mat


def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def gauge_matrix():
    d=fmpq_mat(72,72)
    for block in range(2):
        for r in range(6):
            for c in range(6):
                row=36*block+6*r+c
                d[row,row]+=1;d[row,6*r]-=1
                d[row,36*block+c]-=1;d[row,0]+=1
    return arb_mat(d)


def include(model,prepared,bounds,clique,entry,radius):
    """Enclose every represented triple in one common horizontal phase gauge."""
    w=arb_mat(B.MS.group(dict(anchor=0,labels=entry['balanced_labels'],R=list(range(6)),
        S=entry['monomial_permutations'][0],T=entry['monomial_permutations'][1]),rational=True)[0][1])
    q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+
              [[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
    exponents=sum(entry['H_exponents_mod12'],[])+sum(entry['K_exponents_mod12'],[])
    exact=arb_mat([[arb.pi()*v/6] for v in exponents])
    difference=gauge_matrix()*q-exact
    winding=[round(float((difference[i,0]/(2*arb.pi())).mid())) for i in range(72)]
    delta=w*(difference-arb_mat([[2*arb.pi()*i] for i in winding]))
    carrier=arb_mat([[model['U'][i,j] for j in range(4)] for i in range(36)]+
                   [[prepared[clique[c]]['T'][r,j] for j in range(4)] for r in range(6) for c in range(6)])
    centre=B.C.Z.frob(delta);linear=B.C.Z.spectral(w*carrier)*model['r']
    herror=B.C.Z.spectral(model['H2'])*model['r']**2/2+B.C.Z.spectral(model['X'])*model['tau']
    kerror=B.C.norm([bounds[c]['epsilon'] for c in clique])
    error=(herror*herror+kerror*kerror).sqrt()
    total=centre+linear+error
    result=dict(status='CERTIFIED' if total<radius else 'NOT ESTABLISHED',
        kind='quantitative two-anchor crossing',exact_centre_pattern=entry['number'],
        phase_radius_bound=str(total),certified_local_phase_radius=str(radius),
        centre_bound=str(centre),linear_bound=str(linear),remainder_bound=str(error),
        shared_gauge=True,windings=winding)
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--core-power',type=int,default=8);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--inclusion-only',action='store_true')
    args=p.parse_args()
    if args.output.exists():p.error('output exists')
    root=Path(__file__).resolve().parents[1];base=RX.binding()
    radius_path=root/'results/crossing_radius_20261028_v2.json'
    radius_receipt=json.loads(radius_path.read_text())
    if radius_receipt['base_binding']!=base['id']:raise ArithmeticError('radius base mismatch')
    for name,sha in radius_receipt['sources_sha256'].items():
        if digest(root/name)!=sha:raise ArithmeticError('radius source mismatch: '+name)
    files=[Path(__file__),radius_path,root/'results/exact_centres.json',Path(__file__).with_name('QUANTITATIVE_CROSSING.md')]
    sources={str(f.relative_to(root)):digest(f) for f in files}
    exact=json.loads(files[2].read_text())
    limits={p['number']:arb(p['classification_phase_radius']) for p in radius_receipt['patterns']
            if p['status']=='CERTIFIED LOCAL PHASE NEIGHBOURHOOD'}
    if set(limits)!={1,2}:raise ArithmeticError('two certified crossing radii required')
    started=time.monotonic();record,_,original=XM.load_original()
    model,subset=XM.core_model(record,args.core_power)
    preconditions=XM.stage_c_preconditions(model)
    roots=B.NC.propose_roots(B.native_run.np.exp(1j*B.MS.numeric(model['Q0']).reshape(6,6)))
    cover=B.NC.complete_cover(model['ball'],model,roots)
    prepared,bounds,cliques,_=B.NC.contract_patterns(model,roots,cover)
    if len(cliques)>500:raise ArithmeticError('pattern cap')
    entries={tuple(exact['patterns'][n]['colors']):exact['patterns'][n] for n in (1,2)}
    results=[]
    for number,clique in enumerate(cliques):
        if tuple(clique) in entries:
            entry=entries[tuple(clique)]
            result=include(model,prepared,bounds,clique,entry,limits[entry['number']])
        elif args.inclusion_only:
            result=dict(status='NOT TESTED')
        else:
            result=pipeline.final_pattern(model,prepared,bounds,cover,clique)
        result=dict(number=number,colors=clique,**result);results.append(result)
        print(json.dumps({k:v for k,v in result.items() if k in ('number','status','phase_radius_bound','certified_local_phase_radius')}),flush=True)
    if RX.binding()!=base or any(digest(f)!=sources[str(f.relative_to(root))] for f in files):
        raise ArithmeticError('source changed during replay')
    closed=all(v['status'] in ('CERTIFIED','EXCLUDED') for v in results)
    result=dict(schema='tc-xball-crossing-core-v1',status='CERTIFIED' if closed else 'NOT ESTABLISHED',
        base_binding=base['id'],extension_sources_sha256=sources,domain='core subset of original X-ball',
        original_source=original,subset=subset,stage_c_preconditions=preconditions,cover=cover['summary'],
        patterns_after_column_filter=len(cliques),patterns=results,seconds=time.monotonic()-started,
        claim='All completing K on this explicit core have Conjecture 1 type.' if closed else None,
        whole_original_X_ball_certified=False)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,indent=2,allow_nan=False)+'\n')
    print(json.dumps({k:result[k] for k in ('status','seconds')}),flush=True)
    return 0 if closed else 2


if __name__=='__main__':raise SystemExit(main())
