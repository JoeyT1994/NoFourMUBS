"""Strict layer accounting and enlarged-box coverage audit.

Closure is PASS only when every inventory cell is closed and all acceptance
engines have been replayed. An incomplete campaign always returns exit 2.
"""
import argparse,collections,gzip,hashlib,json,math,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
from geometry import audit_tree
from ordering import exclude_F
import fast_prune
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from run import load_rows,cell_box
from second_pass import replay
from flint import ctx,arb
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import near_f6,zero_neighbourhood

APPROVED_FASTTM='e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984'

def require_guarded_replay(record):
    if record.get('fasttm_sha256')!=APPROVED_FASTTM:
        raise ValueError('Historical or unreviewed FastTM acceptance: guarded replay required')
    if type(record.get('guarded_models')) is not int or record['guarded_models']<0:
        raise ValueError('Missing guard trace metadata')
    if record['method']!='F_out' and record['guarded_models']==0:
        raise ValueError('No guarded models in a Taylor-model acceptance')
    if not 0<=record.get('guard_max_order',99)<=12 or not 0<=record.get('guard_max_norm',math.inf)<=2**40:
        raise ValueError('Guard trace outside proved invariant')
    if record.get('failure') or record.get('ok') is not True:
        raise ValueError('Failed replay is not an acceptance')

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def records(path):
    with path.open() as f:
        for line in f:yield json.loads(line)
def bound(row):
    # This Float64 is strictly above exact pi/2^L + guard. Arb verifies it.
    r=math.nextafter(math.pi/2**row['level']+2.**-40,math.inf)
    assert arb(r)>arb.pi()/2**row['level']+arb(2)**-40
    return r

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('inventory',type=Path);p.add_argument('results',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--replay',action='store_true',help='Replay second-pass and T2, require a Julia replay stream per shard')
    p.add_argument('--f6-probe',type=Path,help='Annotate open cells containing the exact retained F6 references; never an acceptance')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);ctx.prec=160
    manifest=json.loads((a.inventory/'manifest.json').read_text())
    assert sha(a.inventory/'survivors.txt')==manifest['survivors_sha256']
    assert sha(a.inventory/'sample.txt')==manifest['sample_sha256']
    expected={r['cell']:r for r in load_rows(a.inventory/'survivors.txt','layer')}
    assert len(expected)==manifest['survivors']>0
    run_of_record=manifest.get('run_of_record')=='guarded_2026-09-29'
    if run_of_record:
        assert manifest.get('fasttm_sha256')==APPROVED_FASTTM
        assert manifest.get('guarded_package_manifest_sha256')
    full_input_ids=list(expected)
    f6={}
    if a.f6_probe:
        for r in json.loads(a.f6_probe.read_text())['candidates']:
            original=expected[r['cell']];assert original['theta']==r['theta']
            h=arb.pi()/2**original['level']+arb(2)**-40
            assert all(abs(arb(x)-arb(n)*arb.pi()/3)<=h for x,n in zip(original['theta'],r['reference_pi_over_3']))
            f6[r['cell']]=r
    seen=set();closed=set();counts=collections.Counter();open_reasons={};sources={};partial=[]
    accepted_for_replay=[]
    for folder in sorted(a.results.iterdir()):
        if not folder.is_dir():continue
        if not (folder/'done.json').exists():partial.append(str(folder));continue
        for fn in ('header.json','done.json','second.jsonl','cover.jsonl','t2.jsonl'):
            sources[str(folder/fn)]=sha(folder/fn)
        header=json.loads((folder/'header.json').read_text())
        if header['input_sha256']==manifest['sample_sha256']:input_ids=manifest['sample_ids']
        elif header['input_sha256']==manifest['survivors_sha256']:input_ids=full_input_ids
        else:raise AssertionError('Unexpected input set')
        second=list(records(folder/'second.jsonl'));done=json.loads((folder/'done.json').read_text())
        assert len(second)==done['cells']==header['last']-header['first']+1
        assert [r['cell'] for r in second]==input_ids[header['first']-1:header['last']]
        trees=collections.defaultdict(list);completed=set();evidence={}
        for r in records(folder/'cover.jsonl'):
            cid=r['cell']
            if r.get('done'):
                assert cid not in completed;completed.add(cid)
            elif r.get('evidence_only'):
                assert cid not in evidence;evidence[cid]=r
            else:trees[cid].append(r)
        t2={}
        for r in records(folder/'t2.jsonl'):
            key=(r['cell'],tuple(r['path']));assert key not in t2;t2[key]=r
        side={}
        if (folder/'sideleaf.jsonl').exists():
            sources[str(folder/'sideleaf.jsonl')]=sha(folder/'sideleaf.jsonl')
            for r in records(folder/'sideleaf.jsonl'):
                key=(r['cell'],tuple(r['path']));assert key not in side;side[key]=r
        julia_replayed={}
        if a.replay and (folder/'replayed.jsonl').exists():
            sources[str(folder/'replayed.jsonl')]=sha(folder/'replayed.jsonl')
            for r in records(folder/'replayed.jsonl'):
                key=(r['cell'],tuple(r['path']));assert key not in julia_replayed
                julia_replayed[key]=r
        expected_trees=set();expected_t2=set();expected_julia=set()
        for r in second:
            cid=r['cell'];assert cid in expected and cid not in seen;seen.add(cid)
            original=expected[cid]
            assert all(r[k]==original[k] for k in ('cell','job','level','theta'))
            cert=r['certificate']
            if cert['ok']:
                if r.get('certificate_engine')=='F_first_side':
                    assert cert['scope']=='outside_D0_intersect_F'
                    if a.replay:assert fast_prune.replay(*cell_box(original),cert)
                    counts['F_first_side_cells']+=1
                else:
                    assert r.get('certificate_engine') is None
                    assert cert['scope']=='outside_physical_D0' and cert['threshold'] is None
                    if a.replay:assert replay(*cell_box(original),cert)
                    counts['second_pass_cells']+=1
                closed.add(cid);continue
            expected_trees.add(cid)
            leaves=audit_tree(trees[cid],r['theta'],bound(r));unresolved=[]
            for leaf in leaves:
                key=(cid,tuple(leaf['path']));status=leaf['status'];method=leaf['method']
                if status=='open':
                    expected_t2.add(key);assert key in t2
                    tr=t2[key]['result']
                    if tr is None:
                        sr=side.get(key)
                        if sr is not None:
                            assert all(sr[k]==leaf[k] for k in ('theta','radius'))
                            sc=sr['certificate']
                            if sc['ok']:
                                assert sc['scope']=='outside_physical_D0' and sc['threshold'] is None
                                if a.replay:assert replay([arb(x) for x in leaf['theta']],[arb(leaf['radius'])]*4,sc)
                                counts['side_excluded_leaves']+=1;continue
                        unresolved.append(leaf);counts['open_leaves']+=1;continue
                    assert tr['engine'] in ('near_f6','zero_neighbourhood') and tr['certificate']['ok']
                    if a.replay:
                        engine=near_f6 if tr['engine']=='near_f6' else zero_neighbourhood
                        assert engine.certify_box([arb(x) for x in leaf['theta']],[arb(leaf['radius'])]*4)['ok']
                    counts['T2_leaves']+=1
                else:
                    if status=='F_out' and method=='arb_F_order':
                        if a.replay:assert exclude_F(leaf['theta'],[leaf['radius']]*4)['ok']
                        counts['arb_F_out_leaves']+=1
                        continue
                    assert (status=='certified' and method=='cover_accelerated') or (status in ('F_out','R_out','BC_out','D0_out') and method==status)
                    counts[status+'_leaves']+=1;expected_julia.add(key)
                    accepted_for_replay.append(dict(leaf,cell=cid,shard=str(folder)))
                    if a.replay:
                        rr=julia_replayed[key]
                        require_guarded_replay(rr)
                        assert rr['ok'] is True and all(rr[k]==leaf[k] for k in ('theta','radius','method'))
            if not unresolved:closed.add(cid);counts['refined_closed_cells']+=1
            else:
                reasons=collections.Counter(x['method'] for x in unresolved)
                open_reasons[cid]=dict(reasons)
        assert set(trees)==completed==set(evidence)==expected_trees
        assert set(t2)==expected_t2
        assert set(side)<=expected_t2 and all(t2[k]['result'] is None for k in side)
        if a.replay:assert set(julia_replayed)==expected_julia
    with gzip.open(a.output/'open_cells.jsonl.gz','xt',compresslevel=6) as f:
        for cid,r in expected.items():
            if cid in closed:continue
            why=open_reasons.get(cid,{'not_run':1})
            theorem='Existing interval pruning/production cover with more refinement or budget'
            if 'singular' in why:theorem='Further reconstruction-free D0 exclusion or a whole-box T2 seed lift through the remaining branch loci'
            reference={}
            if cid in f6:
                reference=dict(F6_reference_pi_over_3=f6[cid]['reference_pi_over_3'],F6_class=f6[cid]['F6_class_certificate']['cube'])
                theorem='Practical D0-restricted T2 lift for this F6 class and its shoulders; for tiny cubes below the fixed 2^-40 guard, greater depth alone cannot activate this runner containment'
            f.write(json.dumps(dict(r,reasons=why,needed=theorem,**reference))+'\n')
    with (a.output/'accepted_for_replay.jsonl').open('x') as f:
        for r in accepted_for_replay:f.write(json.dumps(r)+'\n')
    report=dict(closure='PASS' if len(closed)==len(expected) and a.replay and run_of_record else 'OPEN',
        structural_coverage='PASS',acceptance_replayed=a.replay,expected=len(expected),processed=len(seen),
        inventory_run_of_record=run_of_record,fasttm_policy='guarded_replay_required',
        closed=len(closed),open=len(expected)-len(closed),counts=dict(counts),incomplete_shards=partial,
        inventory_sha256=sha(a.inventory/'manifest.json'),result_hashes=sources,
        open_cells_sha256=sha(a.output/'open_cells.jsonl.gz'),
        F6_probe_sha256=sha(a.f6_probe) if a.f6_probe else None,
        note='Closure PASS requires the guarded inventory and acceptance replay; historical IDs never yield final closure PASS.')
    (a.output/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k!='result_hashes'}))
    return 0 if report['closure']=='PASS' else 2

if __name__=='__main__':sys.exit(main())
