"""Replay a complete refinement of one original dyadic H cell.

Every internal node has all sixteen closed children. A leaf either misses the
closed original unit ball strictly, or excludes or classifies every completing K.
The conclusion concerns the root cell, not an entire original atlas ball.
"""
import argparse
from concurrent.futures import ProcessPoolExecutor
import itertools
import json
import multiprocessing
import time
from fractions import Fraction
from pathlib import Path
import plane_frontier_certificate as F
from plane_column_certificate import require,read_json,digest,ctx


def misses_ball(level,cell):
    n=2**level
    d=[max(Fraction(-n+2*c,n),Fraction(0),Fraction(n-2*c-2,n)) for c in cell]
    return sum(x*x for x in d)>1


def walk(node,level,cell,check_leaf,counts=None):
    require(type(level) is int and 0<=level<=30 and len(cell)==4 and
            all(type(c) is int and 0<=c<2**level for c in cell),'invalid tree cell')
    if counts is None:counts=dict(nodes=0,outside=0,certified=0)
    counts['nodes']+=1;require(counts['nodes']<=100000,'tree budget exceeded')
    require(isinstance(node,dict),'invalid tree node')
    if 'children' in node:
        require(set(node)=={'children'} and len(node['children'])==16,'incomplete 4D partition')
        for child,bits in zip(node['children'],itertools.product(range(2),repeat=4)):
            walk(child,level+1,[2*c+b for c,b in zip(cell,bits)],check_leaf,counts)
    elif node.get('outside') is True:
        require(set(node)=={'outside'} and misses_ball(level,cell),'cell meets the closed original ball')
        counts['outside']+=1
    else:
        require(set(node)=={'input','proposal'},'unresolved tree leaf')
        check_leaf(node,level,cell);counts['certified']+=1
    return counts


def artifact(directory,spec):
    require(set(spec)=={'path','sha256'},'invalid artifact binding')
    path=Path(spec['path'])
    if not path.is_absolute():path=directory/path
    require(digest(path)==spec['sha256'],'artifact missing or changed')
    return path


def replay_leaf(task):
    directory,node,level,cell,original,pattern_workers=task
    inp=artifact(directory,node['input']);proposal=artifact(directory,node['proposal'])
    record=read_json(inp)['record'];ctx.prec=224
    geometry=F.cell_geometry(original,record,level,cell)
    result=F.Whole.check(inp,read_json(proposal),workers=pattern_workers)
    require(result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL'),
            'leaf not classified or excluded')
    # Recheck the bindings after replay, including when another process writes files.
    artifact(directory,node['input']);artifact(directory,node['proposal'])
    return dict(level=level,cell=cell,geometry=geometry,input_sha256=node['input']['sha256'],
        proposal_sha256=node['proposal']['sha256'],patterns=result['patterns_total'],status=result['status'],
        dependencies_sha256=result['dependencies_sha256'])


def check(entry,tree_path,workers=1,pattern_workers=1):
    require(type(workers) is int and 1<=workers<=256,'invalid replay worker count')
    require(type(pattern_workers) is int and 1<=pattern_workers and
            workers*pattern_workers<=256,'invalid combined replay worker count')
    tree_path=Path(tree_path);tree_sha=digest(tree_path)
    root=Path(__file__).resolve().parents[2];original=F.original_record(root,entry['ball'])
    tree=read_json(tree_path)
    require(tree.get('schema')=='tc-plane-tree-proposal-v1' and
            tree.get('root_entry_sha256')==F.jsonsha(entry),'wrong root cell binding')
    tasks=[]
    counts=walk(tree['tree'],entry['level'],entry['cell'],
        lambda node,level,cell:tasks.append((tree_path.parent,node,level,cell,original,pattern_workers)))
    # First validate the whole partition. Each worker then freshly checks one leaf.
    # Spawn isolates Arb's precision state. map preserves the serial receipt order.
    if workers==1 or len(tasks)<2:
        leaves=list(map(replay_leaf,tasks))
    else:
        with ProcessPoolExecutor(max_workers=min(workers,len(tasks)),
                                 mp_context=multiprocessing.get_context('spawn')) as pool:
            leaves=list(pool.map(replay_leaf,tasks,chunksize=1))
    require(digest(tree_path)==tree_sha,'tree changed during replay')
    classified=any(leaf['status']=='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' for leaf in leaves)
    return dict(schema='tc-plane-tree-receipt-v1',status='CERTIFIED_CLASSIFIED_DYADIC_CELL' if classified else
        'CERTIFIED_EMPTY_DYADIC_CELL',
        ball=entry['ball'],level=entry['level'],cell=entry['cell'],original_radius_hex=original['r'],
        original_atlas_sha256=F.PIN,root_entry_sha256=F.jsonsha(entry),tree_sha256=tree_sha,
        counts=counts,leaves=leaves,checker_sha256=digest(__file__),
        geometry_checker_sha256=digest(F.__file__),
        scope='Every completing K on the intersection of this entire root dyadic cell with the closed original '
              'ball '+('has the certified balanced order-three symmetry' if classified else 'is excluded')+
              '. The original radius is unchanged. A full original-ball covering audit is still required.')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('entry',type=Path)
    p.add_argument('--tree',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
    p.add_argument('--workers',type=int,default=1,help='fresh leaf replays in separate processes')
    p.add_argument('--pattern-workers',type=int,default=1,help='processes per leaf for completing-basis patterns')
    a=p.parse_args();start=time.monotonic()
    try:result=check(read_json(a.entry),a.tree,a.workers,a.pattern_workers)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError,OSError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc))
    result['seconds']=time.monotonic()-start;a.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','seconds')}),flush=True)
    return 0 if result['status'] in ('CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL') else 1


if __name__=='__main__':raise SystemExit(main())
