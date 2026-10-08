#!/usr/bin/env python3
"""Untrusted, bounded 385-byte fixture decoding and complete-root witness proposal.

This generator does not grant proof credit. Every witness and predicate in its
output must be accepted by the Lean kernel, then linked by exact refinement.
It never reads or replays the complete candidate forest.
"""
from pathlib import Path
import hashlib
import json
import math
import re

import argparse
PACKAGE=Path(__file__).resolve().parent.parent
parser=argparse.ArgumentParser()
parser.add_argument('--output',type=Path,required=True)
args=parser.parse_args()
HERE=args.output.resolve()
HERE.mkdir(parents=True,exist_ok=True)
FIXTURE=PACKAGE/'data/centre-root-2241383.tags' 
EXPECTED='77360c9bab88ba2a29ee4fa9b3974e979158e40dadef0a7ff8a6c270aa49167d'
Q=67108864
L=218880

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

data=(PACKAGE/'lean/SeedPhaseData.lean').read_text()
def pairs(body):
    return [tuple(map(int,p)) for p in re.findall(r'\((-?\d+),\s*(-?\d+)\)',body)]
octant=pairs(data.split('def octantArray',1)[1].split(':= #[',1)[1].split(']',1)[0])
centres=pairs(data.split('def centreArray',1)[1].split(':= #[',1)[1].split(']',1)[0])
assert len(octant)==229 and len(centres)==240

def table(n):
    assert 0 <= n < L
    k=n//120
    w=k%456
    z=octant[w] if w<=228 else octant[456-w][::-1]
    return [z,(-z[1],z[0]),(-z[0],-z[1]),(z[1],-z[0])][k//456]

def child(cell,m):
    level,ix=cell
    return level+1,tuple(2*a+((m>>i)&1) for i,a in enumerate(ix))

def half(cell):return L//(2*19*2**cell[0])
def step(cell):return L//(19*2**cell[0])
def entry(cell,k,i,m=None):
    ix=cell[1][i]
    n=(2*ix+1)*half(cell) if m is None else (ix+((m>>i)&1))*step(cell)
    return table((n-(i+1)*k*36480)%L)
def five(v):return Q+sum(a for a,b in v),sum(b for a,b in v)
def midpoint(cell,k):return five([entry(cell,k,i) for i in range(5)])
def sq(z):return z[0]*z[0]+z[1]*z[1]
def cdiv(a,b):return (a+b-1)//b
TOL=cdiv(Q,5)
def midpoint_ok(cell,k):
    n=sq(midpoint(cell,k))
    margin=cdiv(710*Q*(5*half(cell)),113*L)+TOL+10
    hi=164382474+margin+1
    lo=164382474-margin
    return cell[0]<=4 and (hi*hi<=n or (0<lo and n<lo*lo))
def endpoint_witness(cell,k):
    z=midpoint(cell,k)
    r=math.isqrt(sq(z))
    d=abs(r-164382474)-TOL-26
    ok=cell[0]<=4 and 710*5*half(cell)<113*L and d>0
    for m in range(32):
        e=five([entry(cell,k,i,m) for i in range(5)])
        ok=ok and sq((e[0]-z[0],e[1]-z[1]))<d*d
    assert r*r<=sq(z)<(r+1)*(r+1)
    return ok,r
def tdiv(a,b):return (abs(a)//b)*(1 if a>=0 else -1)
def label_ok(cell,label):
    out=[]
    for i in range(5):
        a,b=centres[5*label+i]
        x,y=entry(cell,0,i)
        out.append((tdiv(a*x+b*y,Q),tdiv(a*y-b*x,Q)))
    lower=[402573944,400531927,398465484,397166746,396450275]
    return cell[0]<=4 and (lower[cell[0]]+37)**2<=sq(five(out))

raw=FIXTURE.read_bytes()
assert len(raw)==385 and sha(FIXTURE)==EXPECTED
root=(0,tuple(2241383//w%19 for w in [130321,6859,361,19,1]))
position=0
def parse(cell):
    global position
    start=position
    tag=raw[position];position+=1
    assert tag<=54
    kids=[parse(child(cell,m)) for m in range(32)] if tag==54 else []
    return {'cell':cell,'tag':tag,'start':start,'end':position,'children':kids}
tree=parse(root)
assert position==385 and tree['tag']==54
selected=tree
assert selected['cell']==root and selected['end']-selected['start']==385
tags=[]
stats={'midpoint':0,'endpoint':0,'accept':0,'split':0}
def emit(node):
    tag=node['tag'];cell=node['cell']
    if tag==54:
        tags.append('.split');stats['split']+=1
        for kid in node['children']:emit(kid)
    elif tag<6:
        if midpoint_ok(cell,tag):
            tags.append(f'.midpoint {tag}');stats['midpoint']+=1
        else:
            ok,r=endpoint_witness(cell,tag)
            assert ok,(node['start'],cell,tag,r)
            tags.append(f'.endpoint {tag} {r}');stats['endpoint']+=1
    else:
        assert label_ok(cell,tag-6),(node['start'],cell,tag)
        tags.append(f'.accept {tag-6}');stats['accept']+=1
emit(selected)
assert len(tags)==385
old=list(raw[selected['start']:selected['end']])
# All expensive leaf reductions are separate opaque theorem declarations.
flat=[]
def visit(node,parent=None,mask=None):
    node['parent']=parent
    node['mask']=mask
    flat.append(node)
    for m,kid in enumerate(node['children']):visit(kid,node,m)
visit(selected)
assert [n['start'] for n in flat]==list(range(385))
for node,tag in zip(flat,tags):node['witness_tag']=tag

def cn(n):return f"cell_{n['start']:03d}"
def tn(n):return f"tags_{n['start']:03d}"
def pn(n):return f"checked_{n['start']:03d}"
def balanced(nodes):
    if len(nodes)==1:
        n=nodes[0]
        return f'[{cn(n)}]',tn(n),pn(n)
    mid=len(nodes)//2
    p,a,h=balanced(nodes[:mid]);q,b,j=balanced(nodes[mid:])
    return f'({p}++{q})',f'({a}++{b})',f'(checkWitnessTape_append {p} {q} {a} {b} {h} {j})'

out=['import SeedPhaseTapeComposition\n\n/- A bounded compositional replay of the original complete 385-tag fixture.\nEach actual leaf is reduced separately. Split proofs use the generic append\nand complete-child lemmas. Exact physical refinement remains a separate step. -/\nset_option maxRecDepth 65536\nset_option maxHeartbeats 8000000\nnamespace Seed0024PhaseCore20261007.PureCentre385Compositional\n\n']
for n in flat:
    expr='ordinalCellCode 2241383' if n['parent'] is None else f"childCell {cn(n['parent'])} {n['mask']}"
    out.append(f'def {cn(n)} : CellCode := {expr}\n')
out.append('\n')
for n in reversed(flat):
    if n['tag']==54:
        _,ts,_=balanced(n['children'])
        expr=f'.split::{ts}'
    else:expr=f"[{n['witness_tag']}]"
    out.append(f'def {tn(n)} : List WitnessTag := {expr}\n')
out.append('\n')
for n in reversed(flat):
    out.append(f'theorem {pn(n)} : checkWitnessTape [{cn(n)}] {tn(n)} = true := by\n')
    if n['tag']==54:
        ps,ts,proof=balanced(n['children'])
        out.append(f'  apply checkWitnessTape_split {cn(n)} {ts} (by decide +kernel) (by decide +kernel)\n')
        out.append(f'  change checkWitnessTape {ps} {ts} = true\n')
        out.append(f'  exact {proof}\n')
    else:out.append('  decide +kernel\n')
    out.append(f'#print axioms {pn(n)}\n\n')
out.append(f'theorem erased_fixture : eraseTape {tn(selected)} = {old} := by\n  decide +kernel\n#print axioms erased_fixture\n\n')
out.append(f'theorem checked : checkWitnessTape [ordinalCellCode 2241383] {tn(selected)} = true := {pn(selected)}\n#print axioms checked\n\n')
out.append('end Seed0024PhaseCore20261007.PureCentre385Compositional\n')
source=''.join(out)
target=HERE/'PureCentre385Compositional.lean'
target.write_text(source)
record={'schema':'bounded-pure-centre385-compositional-proposal-v1','status':'untrusted proposal; no Lean acceptance claimed',
 'fixture':{'path':'data/centre-root-2241383.tags','sha256':EXPECTED,'bytes':385},
 'root_ordinal':2241383,'counts':stats,'leaf_reduction_theorems':373,'structural_split_theorems':12,
 'fixture_erasure_theorems':1,'root_alias_theorems':1,'total_theorems':387,
 'source':{'path':target.name,'sha256':sha(target),'bytes':target.stat().st_size},
 'pure_data_sha256':sha(PACKAGE/'lean/SeedPhaseData.lean'),
 'helper_source_sha256':sha(PACKAGE/'lean/SeedPhaseTapeComposition.lean')}
(HERE/'PURE_CENTRE385_COMPOSITIONAL_PROPOSAL.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record,indent=2))

expected=(PACKAGE/'lean/PureCentre385Compositional.lean').read_bytes()
assert target.read_bytes()==expected,'Regenerated source differs from the checked literal source'
print('EXACT_SOURCE_REPRODUCTION_PASS')
