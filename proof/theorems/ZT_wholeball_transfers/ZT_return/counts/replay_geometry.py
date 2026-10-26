#!/usr/bin/env python3
"""Arb replay of restricted-descriptor spherical noncontainment witnesses.

This proves a lower bound for covers admitted by FORMAT section 4's exact
dyadic traversal using only the source's existing descriptors. It does not
restrict transfers with new corners, windings, targets, or patch geometry.
"""
from pathlib import Path
import argparse,gzip,hashlib,json,sys,time
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import zt_patch as ZT
from count_study import ROOT,children,misses
from geometric_obstruction import inside_exact
from flint import arb


def main(args):
    start=time.perf_counter()
    path=Path(args.certificate)
    with gzip.open(path,'rt') as f:d=json.load(f)
    proposal=json.loads(Path(args.proposal).read_text())
    j=proposal['seed'];source=d['seeds'][j]
    ball=ZT.SC.Ball(source);model=ZT.normal_form(ball)
    transfers=[ZT.Transfer(model,ZT.SC.Ball(d['seeds'][g['target']]),g)
               for g in source['transfers']]
    needed=set(range(len(transfers)))
    if any(g['kind'] not in ('T0','T1') for g in source['transfers']):
        raise ValueError('unhandled descriptor')
    excluded=set();records=[];cache={};tested=0
    for item in proposal['boxes']:
        if not item['excluded']:continue
        box=tuple(item['box'])
        if set(w['group'] for w in item['witnesses'])!=needed:
            raise ValueError('a descriptor is missing')
        margins=[]
        for wit in item['witnesses']:
            vv=tuple(wit['integer_vector'])
            if any(not isinstance(v,int) or isinstance(v,bool) for v in vv) or len(vv)!=4:
                raise ValueError('malformed vector')
            if not inside_exact(vv,box):raise ValueError('witness is outside sphere patch')
            if vv not in cache:
                n2=sum(v*v for v in vv)
                if n2==0:raise ValueError('zero witness')
                cache[vv]=ZT.col([model['r']*v/arb(n2).sqrt() for v in vv])
            w=cache[vv];tr=transfers[wit['group']]
            f=tr.a0+tr.B0*w
            tail=arb(0)
            if not tr.linear:
                f+=ZT.tensor_at(tr.AH,w)*w/2
                tail=tr.xnorm*model['tau']
            # Z.frob is deliberately upper-only; noncontainment needs an
            # enclosure of the actual norm, from which a lower bound follows.
            enclosing_norm=sum((x*x for x in f.entries()),arb(0)).sqrt()
            margin=enclosing_norm-tail-tr.target_r
            if not margin>0:
                raise ArithmeticError(f'noncontainment not certified for {box}, group {wit["group"]}')
            margins.append(ZT.Z.lower(margin/tr.target_r));tested+=1
        excluded.add(box)
        records.append(dict(box=list(box),descriptors=len(needed),minimum_normalized_margin=min(margins)))
    # Every blocked node must be split. All unresolved nonempty nodes are
    # optimistically allowed one leaf, so this is a lower bound.
    leaves=[]
    def tree(box):
        if misses(box):return
        if box not in excluded:
            leaves.append(box);return
        for ch in children(box):tree(ch)
    tree((0,0,0,0,0))
    out=dict(status='CERTIFIED restricted-descriptor FORMAT-traversal lower bound',
             seed=j,descriptor_count=len(needed),witness_tests=tested,
             minimum_leaf_count=len(leaves),excluded_nodes=len(excluded),
             excluded_node_records=records,
             minimum_normalized_margin=min(x['minimum_normalized_margin'] for x in records),
             certificate_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
             proposal_sha256=hashlib.sha256(Path(args.proposal).read_bytes()).hexdigest(),
             centre=model['summary'],seconds=time.perf_counter()-start)
    Path(args.output).write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k not in ('excluded_node_records','centre')},indent=2))


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--proposal',default=str(Path(__file__).resolve().parent/'seed6_geometric_obstruction.json'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'seed6_geometry_certified.json'))
    main(p.parse_args())
