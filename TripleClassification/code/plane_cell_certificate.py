"""Rebuild the complete K cover and exclude every pattern on a recorded H cell.

The snapshot supplies only the H record. No supplied K phase ball or numerical
fit is inherited. Column partitions are shared across all complete-cover patterns.
"""
import argparse
import gzip
import itertools
import json
import time
from pathlib import Path
import numpy as np
import plane_column_certificate as P


def complete_cover(path):
    snapshot,model,C,binding=P.context(path,require_columns=False)
    import run as R
    H=np.exp(1j*P.A.numeric(model['Q0']).reshape(6,6))
    roots=R.NC.propose_roots(H)
    cover=R.NC.complete_cover(model['ball'],model,roots)
    prepared,bounds,cliques,steps=R.NC.contract_patterns(model,roots,cover)
    columns={int(c):dict(colour=int(c),v0=[prepared[c]['v0'][i,0] for i in range(6)],
                        phase_radius=bounds[c]['phase_radius']) for cl in cliques for c in cl}
    binding['dependencies_sha256']['TripleClassification/code/plane_cell_certificate.py']=P.digest(__file__)
    return snapshot,model,C,binding,columns,[[int(c) for c in cl] for cl in cliques]


def pair_excluded(left,right):
    return P.pair_excluded(left,right)


def propose(path,depth=6,checkpoint=None):
    s,model,C,binding,columns,cliques=complete_cover(path)
    proved={};attempted=set();pair_cache={};witnesses=[]
    if checkpoint is not None and checkpoint.exists():
        previous=P.read_json(checkpoint)
        if previous.get('snapshot_sha256')==binding['snapshot_sha256']:
            for key,proposal in previous.get('columns',{}).items():
                c=int(key)
                if c not in columns:continue
                try:
                    column=P.Column(model,columns[c],P.hex_array(proposal['weak'],(2,5)))
                    proposal=P.recenter_captures(column,proposal,C)
                    _,tubes=P.verify_tree(column,proposal['tree'],proposal['roots'],C,root_modes=proposal.get('root_modes'))
                    proved[c]=(proposal,tubes);attempted.add(c)
                except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError):continue
    def save():
        if checkpoint is not None:
            data=dict(snapshot_sha256=binding['snapshot_sha256'],columns={str(c):p for c,(p,t) in proved.items()})
            temporary=checkpoint.with_suffix('.tmp')
            temporary.write_bytes(gzip.compress(json.dumps(data).encode(),mtime=0));temporary.replace(checkpoint)
    if proved:save()
    def witness(clique):
        for c in clique:
            if c in proved and not proved[c][1]:return [c]
        for a,b in itertools.combinations(clique,2):
            if a not in proved or b not in proved:continue
            key=(a,b)
            if key not in pair_cache:pair_cache[key]=pair_excluded(proved[a][1],proved[b][1])
            if pair_cache[key]:return [a,b]
        return None
    for clique in cliques:
        chosen=witness(clique)
        for c in sorted(clique,key=lambda c:float(columns[c]['phase_radius'])):
            if chosen is not None:break
            if c in attempted:continue
            attempted.add(c)
            try:
                proposal=P.prove_column(model,columns[c],C,depth=depth)
                column=P.Column(model,columns[c],P.hex_array(proposal['weak'],(2,5)))
                _,tubes=P.verify_tree(column,proposal['tree'],proposal['roots'],C,root_modes=proposal.get('root_modes'))
                proved[c]=(proposal,tubes)
                save()
            except ArithmeticError:continue
            chosen=witness(clique)
        if chosen is None:raise ArithmeticError('complete-cover pattern remains: '+str(clique))
        witnesses.append(dict(colours=clique,columns=chosen))
    used={c for w in witnesses for c in w['columns']}
    return dict(schema='tc-plane-cell-proposal-v1',snapshot_sha256=binding['snapshot_sha256'],
        record_sha256=s['record_sha256'],columns={str(c):proved[c][0] for c in sorted(used)},witnesses=witnesses)


def validate_witnesses(cliques,witnesses,keys):
    P.require(len(witnesses)==len(cliques),'incomplete pattern accounting')
    used=set()
    for clique,w in zip(cliques,witnesses):
        P.require(w['colours']==clique,'complete-cover pattern changed')
        chosen=w['columns']
        P.require(len(chosen) in (1,2) and len(set(chosen))==len(chosen) and
                  all(type(c) is int and c in clique for c in chosen),'invalid pattern witness')
        used.update(chosen)
    P.require(keys=={str(c) for c in used},'missing or unused column proof')


def check(path,proposal):
    start=time.monotonic();s,model,C,binding,columns,cliques=complete_cover(path)
    P.require(proposal.get('schema')=='tc-plane-cell-proposal-v1' and
              proposal.get('snapshot_sha256')==binding['snapshot_sha256'] and
              proposal.get('record_sha256')==s['record_sha256'],'whole-cell proposal binding mismatch')
    validate_witnesses(cliques,proposal['witnesses'],set(proposal['columns']))
    tubes={};summaries=[]
    for key,item in proposal['columns'].items():
        c=int(key);col=P.Column(model,columns[c],P.hex_array(item['weak'],(2,5)))
        stats,tubes[c]=P.verify_tree(col,item['tree'],item['roots'],C,root_modes=item.get('root_modes'))
        summaries.append(dict(colour=c,leaves=stats,source_radius=str(col.radius),
            epsilons=[str(e) for p,e in tubes[c].values()]))
    checked={};rows=[]
    for n,(clique,w) in enumerate(zip(cliques,proposal['witnesses'])):
        chosen=w['columns']
        if len(chosen)==1:P.require(not tubes[chosen[0]],'claimed empty column has surviving tubes')
        else:
            key=tuple(sorted(chosen))
            if key not in checked:
                margins=[P.pair_margin(a,ea,b,eb) for a,ea in tubes[key[0]].values() for b,eb in tubes[key[1]].values()]
                if not all(m>0 for m in margins):raise ArithmeticError('a captured pair may be orthogonal')
                checked[key]=[str(m) for m in margins]
        rows.append(dict(number=n,colours=clique,columns=chosen,status='EXCLUDED'))
    return dict(schema='tc-plane-cell-receipt-v1',status='CERTIFIED_EMPTY_RECORDED_H_CELL',**binding,
        subatlas=s['subatlas'],sub=s['sub'],complete_K_cover_rebuilt=True,patterns_total=len(cliques),
        patterns=rows,columns=summaries,pairs=[dict(colours=list(k),margins=v) for k,v in sorted(checked.items())],
        seconds=time.monotonic()-start,
        scope='Every completing basis K on the entire recorded H cell is excluded. C1, H normal form, '
              'Stage C preconditions and the complete K cover are rebuilt. Original-ball closure additionally '
              'requires the external geometric cover of that original ball.')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('snapshot',type=Path)
    p.add_argument('--proposal',type=Path);p.add_argument('--out',type=Path,required=True)
    p.add_argument('--depth',type=int,default=6);a=p.parse_args();P.require(0<=a.depth<=10,'invalid depth')
    start=time.monotonic()
    try:
        proposal=P.read_json(a.proposal) if a.proposal else propose(a.snapshot,a.depth,a.out.with_suffix('.columns.json.gz'))
        if not a.proposal:a.out.with_suffix('.proposal.json.gz').write_bytes(gzip.compress(json.dumps(proposal).encode(),mtime=0))
        result=check(a.snapshot,proposal)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc),snapshot_sha256=P.digest(a.snapshot))
    result.update(checker_sha256=P.digest(__file__),total_seconds=time.monotonic()-start)
    a.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','total_seconds')}),flush=True)
    return 0 if result['status']=='CERTIFIED_EMPTY_RECORDED_H_CELL' else 1


if __name__=='__main__':raise SystemExit(main())
