#!/usr/bin/env python3
"""Refine only failed cells and collect independently replayed repaired covers.

Each round is a full fresh Arb replay of its source spheres. Earlier failed
attempts are preserved. Refinement stops when all initially failed sources
pass or the fixed FORMAT maximum level prevents another round.
"""
from __future__ import annotations
import argparse,csv,json,subprocess,sys
from pathlib import Path


def results(path):
    return {r['seed']:r for p in Path(path).glob('seed_*.json') for r in [json.loads(p.read_text())]}


def main(args):
    base=Path(__file__).resolve().parent
    initial=results(base/'certified_hybrid_spheres')
    target={j for j,r in initial.items() if r['status']!='CERTIFIED full sphere transfers'}
    original={int(r['seed']):r for r in csv.DictReader((base/'refined_results/weighted_counts.csv').open())}
    final_data=base/'refined_repaired_results';final_proof=base/'certified_repaired_spheres'
    final_data.mkdir(exist_ok=True);final_proof.mkdir(exist_ok=True)
    completed={};final_rows={};generation=args.generation
    survey=Path(args.start_survey).resolve();proof=Path(args.start_results).resolve()
    while True:
        current=results(proof)
        current_rows={int(r['seed']):r for r in csv.DictReader((survey/'weighted_counts.csv').open())}
        for j in sorted(target):
            record=current.get(j)
            if record is None or record['status']!='CERTIFIED full sphere transfers' or j in completed:continue
            source=survey/f'seed_{j}_hybrid.json'
            destination=final_data/f'seed_{j}_hybrid.json'
            destination.write_bytes(source.read_bytes())
            enriched=dict(record,repair_generation=generation,
                          original_refined_hybrid_count=int(original[j]['total']),
                          added_leaves=int(record['count'])-int(original[j]['total']),
                          groups_file=f'counts/refined_repaired_results/seed_{j}_hybrid.json',
                          source_replay_file=str(proof.relative_to(base.parent)/f'seed_{j}.json'))
            (final_proof/f'seed_{j}.json').write_text(json.dumps(enriched,indent=2)+'\n')
            completed[j]=enriched
            row=dict(current_rows[j]);row.update(repair_generation=generation,
                     original_hybrid_count=int(original[j]['total']),added_leaves=enriched['added_leaves'])
            final_rows[j]=row
        remaining=sorted(target-set(completed))
        rows=[final_rows[j] for j in sorted(final_rows)]
        fields=list(dict.fromkeys(k for r in rows for k in r))
        with (final_data/'weighted_counts.csv').open('w',newline='') as f:
            w=csv.DictWriter(f,fieldnames=fields);w.writeheader();w.writerows(rows)
        summary=dict(status='CERTIFIED all repaired source spheres' if not remaining else 'PARTIAL',
                     source_count=len(target),certified_count=len(completed),remaining_sources=remaining,
                     certified_patch_count=sum(r['count'] for r in completed.values()),
                     original_box_count=sum(r['original_count'] for r in completed.values()),
                     original_refined_hybrid_count=sum(int(original[j]['total']) for j in completed),
                     added_leaves=sum(r['added_leaves'] for r in completed.values()),
                     max_repair_generation=max((r['repair_generation'] for r in completed.values()),default=0),
                     min_target_margin_lower=min((r['target_margin_lower'] for r in completed.values()),default=None),
                     min_orientation_margin_lower=min((r['orientation_margin_lower'] for r in completed.values()
                                                       if r['orientation_margin_lower'] is not None),default=None),
                     balls=[{k:v for k,v in completed[j].items() if k!='centre'} for j in sorted(completed)])
        (final_proof/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
        print(json.dumps({k:v for k,v in summary.items() if k!='balls'}),flush=True)
        if not remaining:return
        if any(j not in current for j in remaining):raise ValueError('a remaining source has no replay result')
        generation+=1
        next_survey=base/f'refined_repair_round_{generation}'
        next_proof=base/f'certified_repair_round_{generation}'
        with (base/f'prepare_repair_round_{generation}.log').open('w') as log:
            subprocess.run([sys.executable,str(base/'prepare_refined_children.py'),'--survey',str(survey),
                            '--results',str(proof),'--output',str(next_survey),
                            '--max-parents',str(args.max_parents)],check=True,stdout=log,stderr=subprocess.STDOUT)
        with (base/f'certify_repair_round_{generation}.log').open('w') as log:
            subprocess.run([sys.executable,str(base/'certify_refined_spheres.py'),'--certificate',args.certificate,
                            '--hybrid','--workers',str(args.workers),'--survey',str(next_survey),
                            '--output',str(next_proof)],check=True,stdout=log,stderr=subprocess.STDOUT)
        survey,proof=next_survey,next_proof


if __name__=='__main__':
    from count_study import ROOT
    base=Path(__file__).resolve().parent
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--start-survey',default=str(base/'refined_results'))
    p.add_argument('--start-results',default=str(base/'certified_hybrid_spheres'))
    p.add_argument('--generation',type=int,default=0)
    p.add_argument('--workers',type=int,default=3);p.add_argument('--max-parents',type=int,default=256)
    main(p.parse_args())
