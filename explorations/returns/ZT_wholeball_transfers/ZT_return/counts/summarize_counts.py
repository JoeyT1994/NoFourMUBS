#!/usr/bin/env python3
"""Join numerical proposals to per-source Arb replay results, without upgrading
unreplayed sources or original fallback leaves to certified status.
"""
import csv,json
from pathlib import Path


def main():
    base=Path(__file__).resolve().parent
    rows=list(csv.DictReader((base/'weighted_results/weighted_counts.csv').open()))
    refined_path=base/'refined_results/weighted_counts.csv'
    refined={int(r['seed']):r for r in csv.DictReader(refined_path.open())} if refined_path.exists() else {}
    out=[]
    for row in rows:
        j=int(row['seed']);replay=base/'certified_spheres'/f'seed_{j}.json'
        result=json.loads(replay.read_text()) if replay.exists() else {}
        certified=result.get('status')=='CERTIFIED full sphere transfers'
        record=dict(seed=j,original_boxes=int(row['original']),
                    proposed_weighted_patches=int(row.get('patch_pass') or 0),
                    retained_original_boxes=int(row.get('original_fallback') or 0),
                    hybrid_boxes=int(row['total']),
                    wholeball_status='CERTIFIED' if row['status']=='NUMERICAL' else 'NOT ESTABLISHED',
                    transfer_status='CERTIFIED full sphere' if certified else
                        ('NUMERICAL hybrid proposal' if row['status']=='NUMERICAL' else 'NOT ESTABLISHED; original cover retained'),
                    certified_patch_count=result.get('count',0) if certified else 0,
                    target_margin_lower=result.get('target_margin_lower','') if certified else '',
                    orientation_margin_lower=result.get('orientation_margin_lower','') if certified else '',
                    replay_seconds=result.get('seconds','') if certified else '',
                    source_radius=row['r'],centre_R_diagnostic=row['R_diagnostic'],
                    frame_condition=row['frame_condition'],tau=row.get('tau',''),Z2=row.get('Z2',''),
                    retained_T3_boxes=row.get('fallback_T3') or 0,
                    replay_file=f'certified_spheres/seed_{j}.json' if certified else '')
        if j in refined:
            ref=refined[j]
            rr={};refpath=None
            for family in ('certified_refined_spheres','certified_hybrid_spheres','certified_repaired_spheres'):
                candidate=base/family/f'seed_{j}.json'
                trial=json.loads(candidate.read_text()) if candidate.exists() else {}
                if trial.get('status')=='CERTIFIED full sphere transfers' and (not rr or trial['count']<rr['count']):
                    rr=trial;refpath=candidate
            refcert=bool(rr)
            record.update(refined_proposed_patches=int(ref.get('patch_pass') or 0),
                          refined_retained_original_boxes=int(ref.get('original_fallback') or 0),
                          refined_hybrid_boxes=int(ref['total']),
                          refined_cover_status='CERTIFIED full sphere' if refcert else
                                               ('NUMERICAL proposed cover' if ref['status']=='NUMERICAL' else
                                                'NOT ESTABLISHED; original cover retained'),
                          refined_certified_patch_count=rr.get('count',0) if refcert else 0,
                          refined_target_margin_lower=rr.get('target_margin_lower','') if refcert else '',
                          refined_orientation_margin_lower=rr.get('orientation_margin_lower','') if refcert else '',
                          refined_replay_seconds=rr.get('seconds','') if refcert else '',
                          refined_local_tests=rr.get('local_passes',0) if refcert else 0,
                          refined_repair_rounds=rr.get('repair_generation',0) if refcert else 0,
                          refined_added_leaves=rr.get('added_leaves',0) if refcert else 0,
                          refined_replay_file=str(refpath.relative_to(base)) if refcert else '')
            record['best_transfer_status']='CERTIFIED full sphere' if refcert or certified else 'NOT ESTABLISHED'
            record['best_certified_patch_count']=rr.get('count',0) if refcert else result.get('count',0) if certified else 0
        out.append(record)
    with (base/'per_ball_results.csv').open('w',newline='') as f:
        wr=csv.DictWriter(f,fieldnames=list(out[0]));wr.writeheader();wr.writerows(out)
    print(json.dumps(dict(rows=len(out),simple_certified_spheres=sum(r['transfer_status']=='CERTIFIED full sphere' for r in out),
                          simple_certified_patches=sum(r['certified_patch_count'] for r in out),
                          refined_certified_spheres=sum(r.get('refined_cover_status')=='CERTIFIED full sphere' for r in out),
                          refined_certified_patches=sum(r.get('refined_certified_patch_count',0) for r in out)),indent=2))


if __name__=='__main__':main()
