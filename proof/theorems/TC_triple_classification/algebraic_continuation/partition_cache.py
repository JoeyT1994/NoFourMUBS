"""Persist proposed witnesses; recheck every cached decision before using it."""
import json
from pathlib import Path
from load_native import HERE,R,NC,S
import run_bins as bins_base
import bin_quadratic as BQ
import seed_partition as SP
import optimized_support as phase
import cubic_chordal as cubic


def rows(path):
    if not path.exists():return []
    lines=path.read_text().splitlines();out=[]
    for i,line in enumerate(lines):
        if not line.strip():continue
        try:out.append(json.loads(line))
        except json.JSONDecodeError:
            if i!=len(lines)-1:raise
            # A process can stop during its last append. Losing a proposal
            # retains the corresponding domain and cannot prove exclusion.
    return out


def support(model,prepared,bounds,clique,witness):
    old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
    if old is not None:return old
    if 'dual_multipliers_hex' not in witness:return None
    fn=(cubic.replay if witness.get('route')=='complex-entry support with signed cubic tensors' else
        phase.replay if witness.get('absolute_phase_caps_used') else S.replay)
    try:return fn(model,prepared,bounds,clique,witness)
    except (ArithmeticError,ValueError,ZeroDivisionError):return None


def replay_cell(original,prepared,bounds,cover,clique,box,models,witness):
    key=tuple(box)
    if key not in models:models[key]=SP.local_model(original,box)
    model,c,args,geometry=models[key]
    restricted,info=SP.restrict_cover(original,model,c,args,cover,clique,prepared)
    if restricted is None:return dict(**info,geometry=geometry)
    pp,bb,cc=restricted;previous=R.BE.exclude
    try:
        R.BE.exclude=lambda m,p,b,k:support(m,p,b,k,witness)
        result=bins_base.hybrid.phase.FROZEN_FINAL(model,pp,bb,cc,clique,allow_fine=False)
    finally:R.BE.exclude=previous
    return dict(**result,geometry=geometry,local_filter=info)


class Cache:
    def __init__(self,index,directory):
        directory.mkdir(parents=True,exist_ok=True)
        self.bin_path=directory/f'ball_{index}_bins.jsonl'
        self.cell_path=directory/f'ball_{index}_cells.jsonl'
        self.bins={};self.cells={};self.counts={};self.original_cell=SP.cell_test
        candidates=list((HERE/'results').glob(f'scan_*/ball_{index}.jsonl'))
        candidates+=list((HERE/'results').glob(f'*_{index}.jsonl'))
        for path in candidates:
            for row in rows(path):
                if row.get('index')!=index:continue
                for w in row.get('cover',{}).get('bin_quadratic',{}).get('witnesses',[]):self.add_bin(w)
                for pattern in row.get('patterns',[]):
                    for leaf in pattern.get('leaves',[]):
                        if leaf['status'] in ('CERTIFIED','EXCLUDED'):
                            self.cells[(tuple(pattern['colors']),tuple(leaf['box']))]=leaf
        for w in rows(self.bin_path):self.add_bin(w)
        for row in rows(self.cell_path):
            self.cells[(tuple(row['colors']),tuple(row['leaf']['box']))]=row['leaf']

    def add_bin(self,w):
        self.bins[tuple(w['index'])]={k:w[k] for k in ('index','direction_hex','dual_multipliers_hex')}

    def contract(self,model,roots,cover):
        original=bins_base.FROZEN_CONTRACT(model,roots,cover)
        if cover.get('_quadratic_pruned') or not original[2]:return original
        reduced=BQ.restrict_cliques(cover,original[2]);prior=[]
        for color in {c for clique in reduced['cliques'] for c in clique}:
            for index in reduced['bin_indices'][color]:
                w=self.bins.get(tuple(index))
                if w is not None:prior.append(dict(color=color,**w))
        # This verifier checks all cached witnesses in Arb against this
        # freshly rebuilt original model and recognizes every bin identity.
        reduced=BQ.replay_pruning(model,reduced,dict(witnesses=prior))
        old=BQ.receipt
        def receipt(data,index,direction,multipliers):
            proof=old(data,index,direction,multipliers)
            if proof is not None and tuple(index) not in self.bins:
                self.add_bin(proof)
                with self.bin_path.open('a') as stream:stream.write(json.dumps(self.bins[tuple(index)])+'\n')
            return proof
        try:
            BQ.receipt=receipt
            refined,proof=BQ.prune(model,reduced)
        finally:BQ.receipt=old
        proof['witnesses']=prior+proof['witnesses'];proof['excluded_bins']=len(proof['witnesses'])
        proof['cached_witnesses_rechecked']=len(prior)
        refined['_quadratic_pruned']=True;refined['summary']['bin_quadratic']=proof
        cover.update(refined)
        return bins_base.FROZEN_CONTRACT(model,roots,cover)

    def cell(self,original,prepared,bounds,cover,clique,box,models):
        key=(tuple(clique),tuple(box));saved=self.cells.get(key);result=None
        if saved is not None:
            try:result=replay_cell(original,prepared,bounds,cover,clique,box,models,saved)
            except (ArithmeticError,ValueError,RuntimeError,ZeroDivisionError):result=None
        if result is None or result['status'] not in ('CERTIFIED','EXCLUDED'):
            result=self.original_cell(original,prepared,bounds,cover,clique,box,models)
        self.counts[result['status']]=self.counts.get(result['status'],0)+1
        if result['status'] in ('CERTIFIED','EXCLUDED'):
            leaf=dict(box=list(box),**result);self.cells[key]=leaf
            with self.cell_path.open('a') as stream:
                stream.write(json.dumps(dict(colors=list(clique),leaf=leaf))+'\n')
        if sum(self.counts.values())%16==0:
            print(json.dumps(dict(event='partition progress',cells=self.counts)),flush=True)
        return result

    def install(self):NC.contract_patterns=self.contract;SP.cell_test=self.cell
