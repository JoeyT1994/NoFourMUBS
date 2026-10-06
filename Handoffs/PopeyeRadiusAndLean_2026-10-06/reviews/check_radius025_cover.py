"""Exact binary-trie cover and iterative endpoint checks; no physical Lean credit."""
from pathlib import Path
from itertools import product
import collections,gzip,hashlib,json

HERE=Path(__file__).resolve().parent
GRID=list(product([-1,0,1],range(6),[-1,0,1],range(6)))
CANONICAL={tuple(x%6 for x in row):g for g,row in enumerate(GRID)}
PINS={'latest':'38821778a6421125fd8dd42b88a2d4e050dfdf86bf36eaffd120380b700cb894',
      'second':'0e7730cf73cc195de6c8b711f66214222a4b7f23261c649f6ae4e948f1b4b666'}

def orbit(v):
    seen={v};pending=[v]
    while pending:
        a,b,c,d=pending.pop()
        for w in [(c,d,a,b),(-b,-a,-c,-d),(-a,-b,-d,-c)]:
            w=tuple(x%6 for x in w)
            if w not in seen:seen.add(w);pending.append(w)
    return seen

def check(label):
    path=HERE.parent/'radius-input-1over40/ProvenResults/Patch2442Local/Radius025Complete/data/phase_cover.jsonl.gz'
    sha=hashlib.sha256(path.read_bytes()).hexdigest()
    assert label=='radius025'
    groups=collections.defaultdict(list)
    with gzip.open(path,'rt') as f:
        for line in f:
            row=json.loads(line)
            if label=='radius025':groups[CANONICAL[tuple(x%6 for x in row['root'])]].append(row['path'])
            else:groups[row['grid']].extend(p for p,k in row['leaves'])
    covered=set();leaves=internal=coords=0
    for g,paths in groups.items():
        represented=orbit(tuple(x%6 for x in GRID[g]))&set(CANONICAL)
        assert not represented&covered;covered|=represented
        trie={}
        for p in paths:
            assert set(p)<=set('01')
            node=trie
            for bit in p:
                assert 'leaf' not in node
                node=node.setdefault(bit,{})
            assert not node;node['leaf']=True
            lo=[-1]*4;hi=[1]*4;den=[1]*4
            for n,bit in enumerate(p):
                j=n%4;mid=lo[j]+hi[j]
                if bit=='0':lo[j],hi[j]=2*lo[j],mid
                else:lo[j],hi[j]=mid,2*hi[j]
                den[j]*=2
            for j in range(4):
                bits=p[j::4];d=1<<len(bits);idx=int(bits,2) if bits else 0
                assert den[j]==d and lo[j]==2*idx-d and hi[j]==2*idx+2-d
                coords+=1
        pending=[trie]
        while pending:
            node=pending.pop()
            if 'leaf' in node:assert set(node)=={'leaf'};leaves+=1
            else:assert set(node)=={'0','1'};internal+=1;pending.extend([node['0'],node['1']])
    assert len(groups)==102 and len(covered)==324
    return {'package':label,'status':'INDEPENDENT_TRIE_AND_EXACT_COORDINATES_PASS',
            'initial_cells':324,'roots':102,'terminal_boxes':leaves,'internal_nodes':internal,
            'exact_coordinate_comparisons':coords,'source_sha256':sha,'physical_lean_admissions':0}

if __name__=='__main__':
    if not __debug__:raise RuntimeError('Assertions must be enabled')
    result=check('radius025'); (HERE/'RADIUS025_INDEPENDENT_COVER.json').write_text(json.dumps(result,indent=2)+'\n'); print(json.dumps(result,sort_keys=True))
