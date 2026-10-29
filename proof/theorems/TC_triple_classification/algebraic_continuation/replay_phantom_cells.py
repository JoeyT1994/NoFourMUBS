"""Rebuild one original-ball pattern cell and replay its phantom exclusions.

A fine-bin graph may exclude the entire pattern cell. An equation tree
may verify only some branches. Neither result closes a whole seed ball.
"""
import argparse,gzip,hashlib,json,math,time
from pathlib import Path
import numpy as np
from flint import arb
from load_native import R,NC,MS,ROOT,S
import audit_current as audit
import bin_quadratic as BQ
import seed_partition as SP
import partition_geometry as PG
import score_tree as ST
import constraint_score as CS
import constraint_exclusion as CE
import fine_patterns as FP


def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def guard_local(args):
    """Check RIGOUR.md at the actual conditional-cell call site."""
    if args['T'].shape!=(36,4) or args['P'].shape!=(6,6):raise ArithmeticError('Stage C dimensions')
    if not np.isfinite(args['T']).all() or not np.isfinite(args['P']).all():raise ArithmeticError('nonfinite Stage C input')
    if any(not abs(arb(float(x)))<=1 for x in args['T'].ravel()):raise ArithmeticError('Stage C frame bound')
    for name in ('rcol','rH','nN','rF','radius'):
        value=args[name]
        if not math.isfinite(value) or not arb(0)<=arb(value)<1:raise ArithmeticError('Stage C scalar bound: '+name)
    op=NC.stagec.opnorm_bound(args['P'])
    if not math.isfinite(op) or not arb(op)<arb(101)/100:raise ArithmeticError('Stage C center norm')
    return dict(status='PASS',center_opnorm_upper=op)


def replay_tree(tree,saved):
    verified=[];unknown=[]
    def visit(groups,node,path=''):
        groups=ST.prune(groups,tree.cover['label_graph']);status=node['status']
        if status=='SPLIT':
            if len(node['children'])!=2:raise ArithmeticError('missing child')
            for bit,(gg,child) in enumerate(zip(ST.split(groups,node['color'],node['left_labels']),node['children'])):
                visit(gg,child,path+str(bit))
        elif status=='NOT ESTABLISHED':unknown.append(path)
        elif status=='GRAPH EMPTY':
            if all(groups.values()):raise ArithmeticError('false graph exclusion')
            verified.append(dict(path=path,method='graph'))
        elif status=='BASIS EMPTY':
            pp,bb=tree.bounds(groups)
            if node['method']=='equations':proof=CE.replay(tree.model,pp,bb,tree.clique,node['proof'])
            elif node['method']=='basis':proof=S.FROZEN_EXCLUDE(tree.model,pp,bb,tree.clique)
            else:raise ArithmeticError('unknown exclusion method')
            if proof is None:raise ArithmeticError('exclusion failed replay')
            verified.append(dict(path=path,method=node['method'],margin=proof.get('margin')))
        else:raise ArithmeticError('unknown tree node')
    visit(tree.groups,saved)
    return dict(verified=verified,open_paths=unknown,pattern_cell_excluded=not unknown)


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--coarse-receipt',type=Path,required=True);p.add_argument('--case',type=Path,required=True)
    p.add_argument('--route',choices=('fine','equations','fine-all'),required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args()
    if a.output.exists():p.error('fresh output required')
    case=json.loads(a.case.read_text());identity=case['identity'];index=identity['index'];box=identity['box'];clique=tuple(identity['colors'])
    if type(index)is not int or not 0<=index<2775:raise ValueError('invalid index')
    SP.validate_box(box)
    if SP.outside(box):raise ValueError('case cell is outside the original ball')
    if len(clique)!=6 or len(set(clique))!=6:raise ValueError('six distinct colors required')
    if R.binding(R.DEFAULT_ATLAS)['id']!=audit.NATIVE:raise ArithmeticError('native binding changed')
    import run_cubic_bins as B
    record=json.loads(gzip.decompress(R.DEFAULT_ATLAS.read_bytes()))['seeds'][index]
    radius=float.fromhex(record['r']).hex();seed=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()
    coarse=json.loads(a.coarse_receipt.read_text())
    if identity['original_radius_hex']!=radius or identity['seed_sha256']!=seed:raise ArithmeticError('case identity mismatch')
    if (coarse.get('index')!=index or coarse.get('radius_hex')!=radius or coarse.get('seed_sha256')!=seed or
        coarse.get('binding') not in (B.binding(R.DEFAULT_ATLAS)['id'],B.eager.binding(R.DEFAULT_ATLAS)['id'])):
        raise ArithmeticError('coarse identity mismatch')
    files=dict(B.binding(R.DEFAULT_ATLAS)['sources'])
    for module in (SP,PG,ST,CS,ST.U,ST.LP,CE,FP,audit.G):
        path=Path(module.__file__);files[str(path.relative_to(ROOT))]=sha(path)
    files[str(Path(__file__).resolve().relative_to(ROOT))]=sha(__file__)
    started=time.monotonic();ball=R.SC.Ball(record);c1=R.SC.certify_c1(ball,max_boxes=4096)
    if not c1['ok']:raise ArithmeticError('C1 failed')
    guard=audit.G.check(R,record);model=R.P.normal_form(ball,prec=160)
    if model['summary']['status']!='CERTIFIED':raise ArithmeticError('normal form failed')
    roots=NC.propose_roots(np.exp(1j*MS.numeric(model['Q0']).reshape(6,6)));cover=NC.complete_cover(ball,model,roots)
    native_contract=B.eager.base.FROZEN_CONTRACT;initial=native_contract(model,roots,cover)
    refined=BQ.replay_pruning(model,BQ.restrict_cliques(cover,initial[2]),coarse['cover']['bin_quadratic'])
    refined['_quadratic_pruned']=True;cover.update(refined)
    prepared,bounds,cliques,_=native_contract(model,roots,cover)
    if clique not in set(map(tuple,cliques)):raise ArithmeticError('pattern absent from rebuilt cover')
    local,c,args,geometry=PG.local_model(model,box);local_guard=guard_local(args)
    def fine_case(cp):
        restricted,info=SP.restrict_cover(model,local,c,args,cover,cp,prepared)
        if restricted is None:return dict(colors=list(cp),pattern_cell_excluded=info['status']=='EXCLUDED',local_filter=info)
        _,_,cc=restricted;_,fine=FP.refine(ball,local,cc,cp)
        return dict(colors=list(cp),pattern_cell_excluded=fine['status']=='EXCLUDED',fine=fine)
    if a.route=='fine-all':
        rows=[fine_case(tuple(cp)) for cp in cliques]
        result=dict(pattern_cell_excluded=all(x['pattern_cell_excluded'] for x in rows),
                    all_K_in_cell_excluded=all(x['pattern_cell_excluded'] for x in rows),patterns=rows)
    elif a.route=='fine':result=fine_case(clique)
    else:
        restricted,info=SP.restrict_cover(model,local,c,args,cover,clique,prepared)
        if restricted is None:result=dict(pattern_cell_excluded=info['status']=='EXCLUDED',local_filter=info)
        else:
            _,_,cc=restricted;result=replay_tree(ST.Tree(local,cc,clique),case['result']['tree'])

    if any(sha(ROOT/name)!=digest for name,digest in files.items()):raise ArithmeticError('sources changed during replay')
    value=dict(index=index,original_radius_hex=radius,seed_sha256=seed,box=box,colors=list(clique),route=a.route,
        native_binding=audit.NATIVE,source_sha256=files,atlas_sha256=sha(R.DEFAULT_ATLAS),coarse_receipt_sha256=sha(a.coarse_receipt),
        case_sha256=sha(a.case),stage_c_preconditions=guard,local_stage_c_preconditions=local_guard,c1=c1,
        geometry=geometry,total_original_color_patterns=len(cliques),result=result,
        whole_ball_closed=False,classification_claim=False,seconds=time.monotonic()-started)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    with a.output.open('x') as f:json.dump(value,f,indent=2)
    print(json.dumps(dict(index=index,route=a.route,pattern_cell_excluded=result['pattern_cell_excluded'],
                         verified=len(result.get('verified',[])),open=len(result.get('open_paths',[])),whole_ball_closed=False)))


if __name__=='__main__':main()
