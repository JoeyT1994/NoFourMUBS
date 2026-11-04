#!/usr/bin/env python3
"""Replace only recorded failed hybrid cells by their sphere-meeting children.

This is certificate construction, not analytic validation. The resulting
lists must be replayed by certify_refined_spheres.py --hybrid or the main
weighted replay CLI. The final exact coverage check remains unchanged.
"""
import argparse,collections,csv,hashlib,json
from pathlib import Path
from count_study import children,misses


def key(group):return json.dumps({k:v for k,v in group.items() if k!='boxes'},sort_keys=True,separators=(',',':'))


def main(args):
    source=Path(args.survey);results=Path(args.results);out=Path(args.output)
    rows=list(csv.DictReader((source/'weighted_counts.csv').open()))
    rmap={int(r['seed']):r for r in rows}
    failed=[];unsupported=[]
    for p in sorted(results.glob('seed_*.json')):
        record=json.loads(p.read_text())
        if record.get('status')=='CERTIFIED full sphere transfers':continue
        if record.get('failed_patches'):failed.append((record,p))
        else:unsupported.append(dict(seed=record['seed'],failure=record.get('failure')))
    count=sum(len(r['failed_patches']) for r,_ in failed)
    if count>args.max_parents:raise ValueError(f'{count} failed parents exceeds this bounded refinement run ({args.max_parents})')
    out.mkdir(exist_ok=True,parents=True);newrows=[];changes=[]
    for record,p in failed:
        j=record['seed'];path=source/f'seed_{j}_hybrid.json'
        groups=json.loads(path.read_text());bad=collections.defaultdict(set)
        for failure in record['failed_patches']:bad[key(failure['group'])].add(tuple(failure['box']))
        before=sum(len(g['boxes']) for g in groups);found=0
        for group in groups:
            wanted=bad.get(key(group),set());boxes=[]
            for box in group['boxes']:
                if tuple(box) not in wanted:boxes.append(box);continue
                found+=1
                if box[0]>=9:raise ValueError('one-level refinement would exceed the supplied max_level=9')
                boxes.extend(list(ch) for ch in children(tuple(box)) if not misses(ch))
            group['boxes']=boxes
        if found!=len(record['failed_patches']):raise ValueError(f'not every failed cell was found once for source {j}')
        after=sum(len(g['boxes']) for g in groups)
        (out/f'seed_{j}_hybrid.json').write_text(json.dumps(groups,separators=(',',':'))+'\n')
        row=dict(rmap[j]);row.update(total=after,original_hybrid_count=before,refined_parents=found,added_leaves=after-before)
        newrows.append(row)
        changes.append(dict(seed=j,old_count=before,new_count=after,refined_parents=found,added_leaves=after-before,
                            original_groups_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                            failed_replay_sha256=hashlib.sha256(p.read_bytes()).hexdigest()))
    fields=list(dict.fromkeys(k for r in newrows for k in r))
    with (out/'weighted_counts.csv').open('w',newline='') as f:
        wr=csv.DictWriter(f,fieldnames=fields);wr.writeheader();wr.writerows(newrows)
    summary=dict(status='CONSTRUCTION ONLY; Arb replay required',sources=len(newrows),refined_parents=count,
                 added_leaves=sum(c['added_leaves'] for c in changes),changes=changes,unsupported_failures=unsupported)
    (out/'construction.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,indent=2))


if __name__=='__main__':
    base=Path(__file__).resolve().parent
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--survey',default=str(base/'refined_results'))
    p.add_argument('--results',default=str(base/'certified_hybrid_spheres'))
    p.add_argument('--output',default=str(base/'refined_onelevel_results'))
    p.add_argument('--max-parents',type=int,default=128)
    main(p.parse_args())
