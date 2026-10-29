"""Rebuild an original cover and replay every claimed leaf of a score tree.

Unfinished leaves remain explicitly open. This never declares a whole
ball classified from a tree for one color pattern.
"""
import argparse,gzip,hashlib,json,time
from pathlib import Path
import numpy as np
from load_native import C,MS,NC,R,ROOT
import audit_current as audit
import unitary_score as U
import constraint_score as CS
import label_partition as LP
import score_tree as ST


def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--index',type=int,required=True)
    p.add_argument('--coarse-receipt',type=Path,required=True)
    p.add_argument('--tree',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if not 0<=a.index<2775 or a.output.exists():p.error('valid original index and fresh output required')
    if R.binding(R.DEFAULT_ATLAS)['id']!=audit.NATIVE:raise ArithmeticError('native binding changed')
    import run_cubic_bins as B
    import bin_quadratic as BQ
    native_contract=B.eager.base.FROZEN_CONTRACT
    record=json.loads(gzip.decompress(R.DEFAULT_ATLAS.read_bytes()))['seeds'][a.index]
    radius=float.fromhex(record['r']).hex();seed=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()
    coarse=json.loads(a.coarse_receipt.read_text());saved=json.loads(a.tree.read_text())
    if (coarse.get('index')!=a.index or coarse.get('radius_hex')!=radius or coarse.get('seed_sha256')!=seed or
        coarse.get('binding') not in (B.binding(R.DEFAULT_ATLAS)['id'],B.eager.binding(R.DEFAULT_ATLAS)['id'])):
        raise ArithmeticError('coarse witness input or source mismatch')
    identity=saved['identity']
    if identity['index']!=a.index or identity['original_radius_hex']!=radius or identity['seed_sha256']!=seed:
        raise ArithmeticError('tree is not on this original ball')
    files=dict(B.binding(R.DEFAULT_ATLAS)['sources'])
    for module in (U,CS,LP,ST,audit.G):
        path=Path(module.__file__);files[str(path.relative_to(ROOT))]=sha(path)
    files[str(Path(__file__).resolve().relative_to(ROOT))]=sha(__file__)
    started=time.monotonic();ball=R.SC.Ball(record)
    c1=R.SC.certify_c1(ball,max_boxes=4096)
    if not c1['ok']:raise ArithmeticError('C1 failed')
    guard=audit.G.check(R,record);model=R.P.normal_form(ball,prec=160)
    if model['summary']['status']!='CERTIFIED':raise ArithmeticError('normal form failed')
    roots=NC.propose_roots(np.exp(1j*MS.numeric(model['Q0']).reshape(6,6)))
    cover=NC.complete_cover(ball,model,roots)
    initial=native_contract(model,roots,cover)
    refined=BQ.replay_pruning(model,BQ.restrict_cliques(cover,initial[2]),coarse['cover']['bin_quadratic'])
    refined['_quadratic_pruned']=True;cover.update(refined)
    _,_,cliques,_=native_contract(model,roots,cover)
    clique=tuple(identity['colors'])
    if clique not in set(map(tuple,cliques)):raise ArithmeticError('tree pattern absent from rebuilt cover')
    tree=ST.Tree(model,cover,clique);verified=[];open_paths=[]
    def visit(groups,node,path=''):
        groups=ST.prune(groups,tree.cover['label_graph']);status=node['status']
        if status=='SPLIT':
            if len(node['children'])!=2:raise ArithmeticError('missing child')
            children=ST.split(groups,node['color'],node['left_labels'])
            for bit,(gg,child) in enumerate(zip(children,node['children'])):visit(gg,child,path+str(bit))
        elif status=='NOT ESTABLISHED':open_paths.append(path)
        elif status=='GRAPH EMPTY':
            if all(groups.values()):raise ArithmeticError('false graph exclusion')
            verified.append(dict(path=path,status=status))
        elif status in ('RADIAL EMPTY','FOURIER SCORE','BASIS EMPTY'):
            actual=tree.evaluate(groups,method=node['method'])
            if actual['status']!=status:raise ArithmeticError('leaf failed fresh replay')
            verified.append(dict(path=path,**actual))
        else:raise ArithmeticError('unknown leaf status')
    visit(tree.groups,saved.get('result',saved)['tree'])
    if any(sha(ROOT/name)!=digest for name,digest in files.items()):raise ArithmeticError('source changed during replay')
    value=dict(index=a.index,colors=list(clique),original_radius_hex=radius,seed_sha256=seed,
        atlas_sha256=sha(R.DEFAULT_ATLAS),coarse_receipt_sha256=sha(a.coarse_receipt),tree_sha256=sha(a.tree),
        source_sha256=files,stage_c_preconditions=guard,c1=c1,normal_form=model['summary'],
        total_color_patterns=len(cliques),verified=verified,open_paths=open_paths,
        whole_pattern_score_covered=not open_paths,whole_ball_closed=False,classification_claim=False,
        seconds=time.monotonic()-started)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    with a.output.open('x') as f:json.dump(value,f,indent=2)
    print(json.dumps(dict(index=a.index,replayed_leaves=len(verified),open_branches=len(open_paths),
                         whole_ball_closed=False,seconds=value['seconds'])))


if __name__=='__main__':main()
