#!/usr/bin/env python3
"""Clean proof audit. PASS certifies only the theorem stated in PROOF.md.

Whole-region and production-90 closure have separate status fields.
--require-complete returns 2 unless both requested populations are closed.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1');os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,json,gzip,sys,time,platform,traceback,hashlib
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from fractions import Fraction as F
from collections import Counter
import flint,numpy,sympy
from geometry import HERE,ROOT,build_pilot_region,initial_box,pilot_rows,pilot_radius
from predicate import check_pins,certify_box,sha
from assemble import load_shard
from tree import audit_root

def replay_task(task):
    region,record=task
    return audit_root(region,record,replay=True,precision=160)

def runtime():
    import importlib.metadata
    packages={name:importlib.metadata.version(name) for name in ['numpy','sympy','python-flint','mpmath']}
    paths=[Path(sys.executable)]
    for m in [flint,numpy,sympy]:
        base=Path(m.__file__).parent;paths.append(Path(m.__file__));paths.extend(base.rglob('*.so'))
    from campaign_terminals import psd
    psd_library=Path(psd().library()._name)
    paths.append(psd_library)
    return dict(python=sys.version,platform=platform.platform(),packages=packages,files={str(p):sha(p) for p in paths if p.is_file()})

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output-dir',type=Path,required=True);ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--require-complete',action='store_true');a=ap.parse_args()
    if a.output_dir.exists() or a.jobs<1 or not __debug__:ap.error('fresh output, positive jobs and Python without -O required')
    a.output_dir.mkdir(parents=True);start=time.monotonic();receipt=dict(audit='FAIL',whole_region='INCOMPLETE',production_90='INCOMPLETE',runtime=runtime(),inputs_sha256=sha(HERE/'INPUTS.json'))
    def checkpoint(stage):
        from parallel_replay import atomic_json
        atomic_json(a.output_dir/'STAGE_PROGRESS.json',dict(stage=stage,wall_seconds=time.monotonic()-start,inputs_sha256=receipt['inputs_sha256'],finished_fields=list(receipt),audit='INCOMPLETE'))
        print('verification stage:',stage,flush=True)
    try:
        checkpoint('input hashes and controls')
        check_pins();receipt['input_hashes']='PASS'
        from audits import run as controls
        from v2_audits import run as new_controls
        from structural import run as structural
        from direct_audits import run as direct_controls
        receipt['controls']=controls();receipt['v2_controls']=new_controls();receipt['direct_controls']=direct_controls();receipt['structural']=structural()
        from julia_environment import check as julia_check
        receipt['julia_environment']=julia_check()
        from terminal_audits import run as terminal_controls
        receipt['campaign_terminals']=terminal_controls()
        from parallel_replay_audits import run as replay_controls
        receipt['parallel_replay_controls']=replay_controls()
        checkpoint('regional tubes')
        from extra_tubes import run as tubes
        receipt['regional_tubes']=tubes(a.output_dir/'regional_tubes')
        from stronger_tubes import run as stronger
        receipt['stronger_tubes']=stronger(a.output_dir/'stronger_tubes')
        checkpoint('base production cover')
        from production_cover import run as production_cover
        r=production_cover(a.output_dir/'production_cover.json',a.jobs);receipt['production_cover']={k:v for k,v in r.items() if k!='leaves'}
        checkpoint('primitive cube covers')
        from rootfree_cubes import run as rootfree_cubes
        receipt['rootfree_cubes']=rootfree_cubes(a.output_dir/'rootfree_cubes',a.jobs)
        from production import build
        production=json.loads((HERE/'data/production_region.json').read_text())
        if production!=build():raise ValueError('production exact census/guard/transport mismatch')
        region=json.loads((HERE/'data/region.json').read_text())
        if region!=build_pilot_region(region['grid']):raise ValueError('pilot region exact regeneration mismatch')
        from geometry import grid_keys
        patch=json.loads((HERE/'data/patch_region.json').read_text());source={r['id']:r for r in pilot_rows() if r['id'] in {q['pilot_id'] for q in patch['roots']}}
        for root in patch['roots']:
            if list(map(F,root['centers']))!=source[root['pilot_id']]['centers'] or list(map(F,root['radii']))!=[pilot_radius()]*4:raise ValueError('patch input binding')
        index=json.loads((HERE/'data/index.json').read_text());populations=[]
        fresh_meta=json.loads((HERE/'data/benchmarks/fresh_pilot_proof.json').read_text())
        for label,reg,meta in [('shoulder',region,index),('production',production,index['production']),('patches',patch,index['patches']),('fresh_pilot',region,fresh_meta)]:
            checkpoint(label+' forest')
            path=HERE/meta['forest'];rp=HERE/meta['region']
            if sha(path)!=meta['forest_sha256']:raise ValueError('forest hash mismatch')
            records=load_shard(path,reg,sha(rp))
            if {r['root'] for r in records}!=set(range(len(reg['roots']))):raise ValueError('missing complete root inventory')
            reports=[]
            with gzip.open(a.output_dir/(label+'_replay.jsonl.gz'),'wt') as out:
                with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
                    for future in as_completed([pool.submit(replay_task,(reg,r)) for r in records]):
                        r=future.result();reports.append(r);out.write(json.dumps(r,sort_keys=True)+'\n')
                        if len(reports)%200==0:print(label,'replayed roots',len(reports),flush=True)
            stats=dict(population=label,roots=len(reports),closed=sum(r['closed'] for r in reports),leaves=sum(r['leaves'] for r in reports),accepted_leaves=sum(r['accepted_leaves'] for r in reports),witness_nodes=sum(r['witness_nodes'] for r in reports),cpu_seconds=sum(r['cpu_seconds'] for r in reports))
            reasons=Counter();terminal_statements=Counter();tau_precisions=Counter()
            for r in reports:
                terminal_statements.update(r.get('replayed_terminal_statements',{}))
                reasons.update(r['replayed_pairing_reasons']);tau_precisions.update(r['tau_enclosure_precisions'])
            stats['tau_enclosure_precisions']=dict(tau_precisions)
            stats['replayed_pairing_reasons']=dict(reasons)
            stats['replayed_terminal_statements']=dict(terminal_statements)
            receipt[label]=stats
            if label=='fresh_pilot':
                from volume import measure
                vv=measure(reg,records)
                (a.output_dir/'FRESH_PILOT_VOLUME.json').write_text(json.dumps(vv,indent=2)+'\n')
                stats['seed_volume']={k:v for k,v in vv.items() if k!='roots'}
            if label=='production':
                by_seed={tuple(reg['roots'][r['root']]['seed']):r['closed'] for r in reports}
                statuses=[dict(seed=s['seed'],representative=s['representative'],ok=by_seed[tuple(s['representative'])],frame=s['frame'],period_shifts=s['period_shifts']) for s in reg['seeds']]
                (a.output_dir/'production_90.json').write_text(json.dumps(statuses,indent=2)+'\n');stats['cubes']=90;stats['closed_cubes']=sum(s['ok'] for s in statuses)
        # Preserve the furthest production continuation even when a smaller
        # independent tree has a larger fraction of accepting leaves. Its
        # budget frontier is not a whole-cube certificate.
        continuation=HERE/'data/production_continuation.jsonl.gz'
        rows=load_shard(continuation,production,sha(HERE/'data/production_region.json'))
        if {q['root'] for q in rows}!={7}:raise ValueError('production continuation inventory')
        from parallel_replay import prepare
        checkpoint('parallel continuation covers')
        receipt['continuation_cover_replay']=prepare(production,rows,a.jobs,a.output_dir/'continuation_covers')
        checkpoint('continuation exact geometry and remaining witnesses')
        continued=[replay_task((production,q)) for q in rows]
        with gzip.open(a.output_dir/'production_continuation_replay.jsonl.gz','wt') as out:
            for q in continued:out.write(json.dumps(q,sort_keys=True)+'\n')
        receipt['production_continuation']=dict(status='PASS',forest_sha256=sha(continuation),roots=len(continued),closed=sum(q['closed'] for q in continued),leaves=sum(q['leaves'] for q in continued),accepted_leaves=sum(q['accepted_leaves'] for q in continued),cpu_seconds=sum(q['cpu_seconds'] for q in continued))
        if index.get('replay')!='PASS':raise ValueError('release index not replayed')
        closed=total=0;lookup=time.process_time()
        checkpoint('80613 exact containment queries')
        with gzip.open(a.output_dir/'pilot_boxes.jsonl.gz','wt') as out:
            for row in pilot_rows():
                r=certify_box(row['centers'],[pilot_radius()]*4)
                if r['reason']=='invalid_input_or_certificate':raise ValueError(r)
                out.write(json.dumps(dict(id=row['id'],**r),sort_keys=True)+'\n');total+=1;closed+=int(r['ok'])
        if total!=80613:raise ValueError('pilot census')
        receipt['pilot_boxes']=dict(total=total,closed=closed,unresolved=total-closed,cpu_seconds=time.process_time()-lookup)
        from volume import measure
        checkpoint('exact certified seed volume')
        shoulder_records=load_shard(HERE/index['forest'],region,sha(HERE/index['region']))
        volume=measure(region,shoulder_records)
        (a.output_dir/'SEED_VOLUME.json').write_text(json.dumps(volume,indent=2)+'\n')
        receipt['seed_volume']={k:v for k,v in volume.items() if k!='roots'}
        receipt['whole_region']='PASS' if receipt['shoulder']['closed']==1609 else 'INCOMPLETE'
        receipt['production_90']='PASS' if receipt['production']['closed_cubes']==90 else 'INCOMPLETE'
        receipt['audit']='PASS';receipt['theorem']='replayed certified subset plus guarded production cubes; no claim for open leaves'
        checkpoint('complete')
        receipt['wall_seconds']=time.monotonic()-start;receipt['files']={str(p.relative_to(a.output_dir)):sha(p) for p in a.output_dir.rglob('*') if p.is_file()}
        (a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
        print(json.dumps({k:v for k,v in receipt.items() if k not in ('runtime','files','structural','controls','v2_controls')},indent=2))
        return 2 if a.require_complete and (receipt['whole_region']!='PASS' or receipt['production_90']!='PASS') else 0
    except Exception as ex:
        receipt['error']=f'{type(ex).__name__}: {ex}';receipt['wall_seconds']=time.monotonic()-start
        (a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');traceback.print_exc();return 1
if __name__=='__main__':sys.exit(main())
