"""Rebuild the complete K cover and certify every pattern on a recorded H cell.

The snapshot supplies only the H record. No supplied K phase ball or numerical
fit is inherited. Column partitions are shared across all complete-cover patterns.
"""
import argparse
from concurrent.futures import ProcessPoolExecutor
import multiprocessing
import gzip
import itertools
import json
import time
from pathlib import Path
import numpy as np
import plane_column_certificate as P
import plane_joint_certificate as Joint


def complete_cover(path):
    snapshot,model,C,binding=P.context(path,require_columns=False)
    import run as R
    H=np.exp(1j*P.A.numeric(model['Q0']).reshape(6,6))
    roots=R.NC.propose_roots(H)
    cover=R.NC.complete_cover(model['ball'],model,roots)
    prepared,bounds,cliques,steps=R.NC.contract_patterns(model,roots,cover)
    # This cover and its verified fine-pair cache belong only to this H model.
    model['_fine_cover']=cover
    columns={int(c):dict(colour=int(c),v0=[prepared[c]['v0'][i,0] for i in range(6)],
                        phase_radius=bounds[c]['phase_radius']) for cl in cliques for c in cl}
    binding['dependencies_sha256']['TripleClassification/code/plane_cell_certificate.py']=P.digest(__file__)
    binding['dependencies_sha256']['TripleClassification/code/plane_joint_certificate.py']=P.digest(Joint.__file__)
    return snapshot,model,C,binding,columns,[[int(c) for c in cl] for cl in cliques]


def pair_excluded(left,right):
    return P.pair_excluded(left,right)


def fine_excluded(model,clique):
    """Replay the pinned necessary graph on complete original closed torus bins."""
    import run as R
    _,receipt=R.FP.refine(model['ball'],model,model['_fine_cover'],clique)
    return receipt['status']=='EXCLUDED'


def propose(path,depth=6,checkpoint=None):
    s,model,C,binding,columns,cliques=complete_cover(path)
    proved={};attempted=set();pair_cache={};witnesses=[];root_pairs={};scalars={}
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
        if chosen is None and fine_excluded(model,clique):
            witnesses.append(dict(colours=clique,columns=[],fine=True));continue
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
        if chosen is None:
            available=sorted((c for c in clique if c in proved),key=lambda c:(len(proved[c][1]),c))
            try:
                joint=Joint.exclude(model,{c:proved[c][1] for c in available},available,
                                    pair_cache=root_pairs,scalar_cache=scalars,allow_known=True)
            except (ValueError,ArithmeticError):
                raise ArithmeticError('complete-cover pattern remains: '+str(clique))
            witnesses.append(dict(colours=clique,columns=available,joint=joint))
        else:witnesses.append(dict(colours=clique,columns=chosen))
    used={c for w in witnesses for c in w['columns']}
    return dict(schema='tc-plane-cell-proposal-v1',snapshot_sha256=binding['snapshot_sha256'],
        record_sha256=s['record_sha256'],columns={str(c):proved[c][0] for c in sorted(used)},witnesses=witnesses)


def validate_witnesses(cliques,witnesses,keys):
    P.require(len(witnesses)==len(cliques),'incomplete pattern accounting')
    used=set()
    for clique,w in zip(cliques,witnesses):
        P.require(w['colours']==clique,'complete-cover pattern changed')
        chosen=w['columns']
        if 'fine' in w:
            P.require(w['fine'] is True and chosen==[] and set(w)=={'colours','columns','fine'},
                      'invalid fine-bin witness')
            continue
        P.require((1<=len(chosen)<=6 if 'joint' in w else len(chosen) in (1,2)) and len(set(chosen))==len(chosen) and
                  all(type(c) is int and c in clique for c in chosen),'invalid pattern witness')
        used.update(chosen)
    P.require(keys=={str(c) for c in used},'missing or unused column proof')


def verify_patterns(model,tubes,items,cache=None):
    # A cache belongs to one verified model and its unchanged column partitions.
    direct,root_pairs,root_scalars=({}, {}, {}) if cache is None else cache
    checked={};rows=[]
    for n,clique,w in items:
        chosen=w['columns']
        if 'fine' in w:P.require(fine_excluded(model,clique),'fine-bin search did not exclude this pattern')
        elif 'joint' in w:Joint.exclude(model,tubes,chosen,w['joint'],pair_cache=root_pairs,scalar_cache=root_scalars,
                                    allow_known=True)
        elif len(chosen)==1:P.require(not tubes[chosen[0]],'claimed empty column has surviving tubes')
        else:
            key=tuple(sorted(chosen))
            if key not in direct:
                margins=[P.pair_margin(a,ea,b,eb) for a,ea in tubes[key[0]].values() for b,eb in tubes[key[1]].values()]
                if not all(m>0 for m in margins):raise ArithmeticError('a captured pair may be orthogonal')
                checked[key]=[str(m) for m in margins]
                direct[key]=True
        rows.append(dict(number=n,colours=clique,columns=chosen,
                         status='CLASSIFIED' if w.get('joint',{}).get('known') else 'EXCLUDED'))
    return rows,checked


def _pattern_init(model,tubes):
    global _pattern_context,_pattern_cache
    _pattern_context=(model,tubes)
    _pattern_cache=({}, {}, {})


def _pattern_chunk(items):
    return verify_patterns(*_pattern_context,items,cache=_pattern_cache)


def check(path,proposal,workers=1):
    P.require(type(workers) is int and 1<=workers<=256,'invalid pattern worker count')
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
    items=[(n,clique,w) for n,(clique,w) in enumerate(zip(cliques,proposal['witnesses']))]
    if workers==1 or len(items)<2:
        rows,checked=verify_patterns(model,tubes,items)
    else:
        # POSIX fork inherits the verified model; every process owns its Arb state.
        count=min(workers,len(items));chunks=[[item] for item in items]
        with ProcessPoolExecutor(max_workers=count,mp_context=multiprocessing.get_context('fork'),
                                 initializer=_pattern_init,initargs=(model,tubes)) as pool:
            parts=list(pool.map(_pattern_chunk,chunks))
        rows=[];checked={}
        for part,pairs in parts:rows.extend(part);checked.update(pairs)
        rows.sort(key=lambda row:row['number'])
    P.require([row['number'] for row in rows]==list(range(len(cliques))),'incomplete parallel pattern replay')
    classified=any(row['status']=='CLASSIFIED' for row in rows)
    return dict(schema='tc-plane-cell-receipt-v1',status='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' if classified else
        'CERTIFIED_EMPTY_RECORDED_H_CELL',**binding,
        subatlas=s['subatlas'],sub=s['sub'],complete_K_cover_rebuilt=True,patterns_total=len(cliques),
        patterns=rows,columns=summaries,pairs=[dict(colours=list(k),margins=v) for k,v in sorted(checked.items())],
        seconds=time.monotonic()-start,
        scope=('Every completing basis K on the entire recorded H cell has the certified balanced order-three symmetry. '
               if classified else 'Every completing basis K on the entire recorded H cell is excluded. ')+
              'C1, H normal form, '
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
    return 0 if result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL') else 1


if __name__=='__main__':raise SystemExit(main())
