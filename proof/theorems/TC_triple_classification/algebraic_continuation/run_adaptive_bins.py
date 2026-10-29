"""Strengthen the original all-K cover by complete closed K-bin trees."""
import argparse, gzip, hashlib, json, sys
from pathlib import Path
from load_native import HERE, ROOT, R, NC
import run_eager_bins as eager
import bin_quadratic as BQ
import adaptive_bins as AB
sys.path.insert(0,str(ROOT/'TripleClassification/code'))
import stagec_guard as guard

REUSE=None
MAX_DEPTH=5
MAX_NODES=63


def binding(atlas):
    value=eager.binding(atlas)
    for name in ('adaptive_bins.py','ADAPTIVE_BINS_PROOF.txt','run_adaptive_bins.py'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['sources']['TripleClassification/code/stagec_guard.py']=guard.guard_sha256()
    value['schema']='tc-adaptive-closed-k-bin-allk-v1'
    value['extensions'].append('complete dyadic closed K-bin exclusion trees; original H ball fixed')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def contract(model,roots,cover):
    original=eager.base.FROZEN_CONTRACT(model,roots,cover)
    if cover.get('_quadratic_pruned') or not original[2]:return original
    reduced=BQ.restrict_cliques(cover,original[2])
    if REUSE is None:refined,proof=BQ.prune(model,reduced)
    else:
        proof=REUSE['cover']['bin_quadratic']
        refined=BQ.replay_pruning(model,reduced,proof)
    refined['summary']['bin_quadratic']=proof
    refined,tree=AB.prune(model,refined,MAX_DEPTH,MAX_NODES,
                         progress=lambda x:print(json.dumps(x),flush=True))
    refined['_quadratic_pruned']=True
    refined['summary']['adaptive_bin_quadratic']=tree
    cover.update(refined)
    return eager.base.FROZEN_CONTRACT(model,roots,cover)


def main():
    global REUSE,MAX_DEPTH,MAX_NODES
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--reuse-coarse',type=Path);p.add_argument('--max-depth',type=int,default=5)
    p.add_argument('--max-nodes',type=int,default=63);a=p.parse_args()
    if a.output.exists():p.error('output exists')
    if not 0<=a.index<2775:p.error('invalid original ball index')
    MAX_DEPTH=a.max_depth;MAX_NODES=a.max_nodes
    record=json.loads(gzip.decompress(R.DEFAULT_ATLAS.read_bytes()))['seeds'][a.index]
    preconditions=guard.check(R,record)
    if a.reuse_coarse:
        REUSE=json.loads(a.reuse_coarse.read_text())
        if (REUSE.get('binding')!=eager.binding(R.DEFAULT_ATLAS)['id'] or REUSE.get('index')!=a.index
            or REUSE.get('radius_hex')!=float.fromhex(record['r']).hex()
            or REUSE.get('seed_sha256')!=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()):
            raise ArithmeticError('coarse witness source or original ball identity mismatch')
    R.binding=binding;NC.contract_patterns=contract;eager.OPEN=None
    manifest=binding(R.DEFAULT_ATLAS)
    row=eager.base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    if eager.OPEN is not None:
        clique,result=eager.OPEN;patterns=row.setdefault('patterns',[])
        patterns.append(dict(number=len(patterns),colors=list(clique),**result))
        row['patterns_not_attempted']=row.get('patterns_after_column_filter',len(patterns))-len(patterns)
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
    row['stage_c_preconditions']=preconditions
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
