#!/usr/bin/env python3
"""Replay the final 193 certified source spheres in three disjoint batches.

The seven sources lacking a Z normal form are not included. This wrapper
recomputes all analytic bounds and coverage through the Arb batch verifier.
"""
import argparse,json,os,subprocess,sys
from pathlib import Path
from count_study import ROOT


def main(args):
    base=Path(__file__).resolve().parent
    output=Path(args.output).resolve();output.mkdir(parents=True,exist_ok=True)
    initial=json.loads((base/'certified_hybrid_spheres/summary.json').read_text())
    hybrid_ids=sorted(r['seed'] for r in initial['balls'] if r['status']=='CERTIFIED full sphere transfers')
    script=base/'certify_refined_spheres.py'
    env=dict(os.environ);env['OPENBLAS_NUM_THREADS']='1'
    common=[sys.executable,str(script),'--certificate',str(Path(args.certificate).resolve()),'--workers',str(args.workers)]
    batches=[('global',base/'refined_results',[]),
             ('local',base/'refined_results',['--hybrid','--seeds',','.join(map(str,hybrid_ids))]),
             ('repaired',base/'refined_repaired_results',['--hybrid'])]
    summaries=[]
    for name,survey,flags in batches:
        destination=output/name
        subprocess.run(common+['--survey',str(survey),'--output',str(destination)]+flags,check=True,env=env)
        summary=json.loads((destination/'summary.json').read_text())
        if summary['certified_count']!=summary['source_count']:
            raise ArithmeticError(f'{name} batch did not fully certify')
        summaries.append(summary)
    ids=[r['seed'] for s in summaries for r in s['balls']]
    if len(ids)!=len(set(ids)):raise ValueError('source batches overlap')
    result=dict(status='CERTIFIED final source spheres',sources=len(ids),
                patches=sum(s['certified_patch_count'] for s in summaries),
                original_boxes=sum(s['original_box_count'] for s in summaries),
                source_indices=sorted(ids),
                min_target_margin_lower=min(s['min_target_margin_lower'] for s in summaries),
                min_orientation_margin_lower=min(s['min_orientation_margin_lower'] for s in summaries))
    (output/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'replay_final'))
    p.add_argument('--workers',type=int,default=3)
    main(p.parse_args())
