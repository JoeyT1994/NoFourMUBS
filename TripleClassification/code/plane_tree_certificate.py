"""Replay a complete refinement of one original dyadic H cell.

Every internal node has all sixteen closed children. A leaf either misses the
closed original unit ball strictly, or excludes or classifies every completing K.
The conclusion concerns the root cell, not an entire original atlas ball.
"""
import argparse
import itertools
import json
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


def check(entry,tree_path):
    root=Path(__file__).resolve().parents[2];original=F.original_record(root,entry['ball'])
    tree=read_json(tree_path)
    require(tree.get('schema')=='tc-plane-tree-proposal-v1' and
            tree.get('root_entry_sha256')==F.jsonsha(entry),'wrong root cell binding')
    leaves=[]
    def check_leaf(node,level,cell):
        inp=artifact(tree_path.parent,node['input']);proposal=artifact(tree_path.parent,node['proposal'])
        record=read_json(inp)['record'];ctx.prec=224
        geometry=F.cell_geometry(original,record,level,cell)
        result=F.Whole.check(inp,read_json(proposal))
        require(result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL'),
                'leaf not classified or excluded')
        leaves.append(dict(level=level,cell=cell,geometry=geometry,input_sha256=digest(inp),
            proposal_sha256=digest(proposal),patterns=result['patterns_total'],status=result['status'],
            dependencies_sha256=result['dependencies_sha256']))
    counts=walk(tree['tree'],entry['level'],entry['cell'],check_leaf)
    classified=any(leaf['status']=='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' for leaf in leaves)
    return dict(schema='tc-plane-tree-receipt-v1',status='CERTIFIED_CLASSIFIED_DYADIC_CELL' if classified else
        'CERTIFIED_EMPTY_DYADIC_CELL',
        ball=entry['ball'],level=entry['level'],cell=entry['cell'],original_radius_hex=original['r'],
        original_atlas_sha256=F.PIN,root_entry_sha256=F.jsonsha(entry),tree_sha256=digest(tree_path),
        counts=counts,leaves=leaves,checker_sha256=digest(__file__),
        geometry_checker_sha256=digest(F.__file__),
        scope='Every completing K on the intersection of this entire root dyadic cell with the closed original '
              'ball '+('has the certified balanced order-three symmetry' if classified else 'is excluded')+
              '. The original radius is unchanged. A full original-ball covering audit is still required.')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('entry',type=Path)
    p.add_argument('--tree',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
    a=p.parse_args();start=time.monotonic()
    try:result=check(read_json(a.entry),a.tree)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError,OSError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc))
    result['seconds']=time.monotonic()-start;a.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','seconds')}),flush=True)
    return 0 if result['status'] in ('CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL') else 1


if __name__=='__main__':raise SystemExit(main())
