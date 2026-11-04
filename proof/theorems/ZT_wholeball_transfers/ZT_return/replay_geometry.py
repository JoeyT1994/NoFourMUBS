"""Certify finite-descriptor lower bounds for FORMAT's sphere traversal.

Each excluded node has, for EVERY allowed descriptor, a sphere point at which
the exact transfer image is outside the target. Only global Z's normal error
is used; the nonlinear Taylor remainder is not discarded.
"""
import argparse,json,itertools
from pathlib import Path
from flint import arb
from zt_patch import load_certificate,normal_form,Transfer,SC,Z,col,tensor_at

def radical_ge(v,k,d,S):
    """Exact comparison v/sqrt(S) >= k/d, d>0, integer arguments."""
    if v==0:return k<=0
    if k==0:return v>=0
    if (v>0)!=(k>0):return v>0
    lhs,rhs=v*v*d*d,k*k*S
    return lhs>=rhs if v>0 else lhs<=rhs

def membership(box,v):
    if len(v)!=4 or any(not isinstance(x,int) or isinstance(x,bool) for x in v):return False
    S=sum(x*x for x in v)
    if not S:return False
    m,*idx=box;d=2**m
    if not 0<=m<=20 or any(not 0<=i<d for i in idx):return False
    return all(radical_ge(x,2*i-d,d,S) and radical_ge(-x,d-2*i-2,d,S) for x,i in zip(v,idx))

def children(box):
    m,*idx=box
    return [(m+1,*(2*i+b for i,b in zip(idx,bits))) for bits in itertools.product((0,1),repeat=4)]

def lower_leaves(excluded):
    stack=[(0,0,0,0,0)];n=0;levels={}
    while stack:
        box=stack.pop()
        if SC.misses_unit_sphere(box):continue
        if box in excluded:
            stack.extend(children(box))
        else:
            n+=1;levels[box[0]]=levels.get(box[0],0)+1
    return n,levels

def main():
    p=argparse.ArgumentParser();p.add_argument('certificate');p.add_argument('witnesses');p.add_argument('output');args=p.parse_args()
    d=load_certificate(args.certificate);wit=json.loads(Path(args.witnesses).read_text());j=wit['seed']
    seed=d['seeds'][j];model=normal_form(SC.Ball(seed))
    transfers=[Transfer(model,SC.Ball(d['seeds'][g['target']]),g) for g in seed['transfers']]
    if any(g['kind'] not in ('T0','T1') for g in seed['transfers']):raise ValueError('unsupported descriptor in obstruction list')
    excluded=set();count=0;minimum=float('inf');records=[]
    for node in wit['boxes']:
        if not node.get('excluded'):continue
        box=tuple(node['box']);SC.dyadic_boxes([list(box)],20)
        witnesses=node['witnesses']
        if sorted(w['group'] for w in witnesses)!=list(range(len(transfers))):raise ValueError('not every descriptor has a unique witness')
        worst=float('inf')
        for w in witnesses:
            v=w['integer_vector']
            if not membership(box,v):raise ValueError('sphere witness does not belong to the box')
            S=sum(x*x for x in v);point=col([model['r']*arb(x)/arb(S).sqrt() for x in v])
            tr=transfers[w['group']]
            value=tr.a0+tr.B0*point
            eps=arb(0)
            if not tr.linear:
                value+=tensor_at(tr.AH,point)*point/2
                eps=tr.xnorm*model['tau']
            nrm=sum((x*x for x in value.entries()),arb(0)).sqrt()
            margin=(nrm-eps)/tr.target_r-1
            if not margin>0:raise ArithmeticError(f'outside-target witness failed at {box}, group {w["group"]}')
            lo=Z.lower(margin);worst=min(worst,lo);minimum=min(minimum,lo);count+=1
        excluded.add(box);records.append({'box':list(box),'min_normalized_outside_margin':worst})
    n,levels=lower_leaves(excluded)
    out=dict(status='CERTIFIED finite-descriptor traversal lower bound',seed=j,
        descriptors=len(transfers),excluded_nodes=len(excluded),witness_tests=count,
        minimum_normalized_outside_margin=minimum,minimum_leaves=n,leaf_levels=levels,
        scope='Only the descriptors in this seed record, with their stored windings; FORMAT exact traversal.',
        excluded=records)
    Path(args.output).write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='excluded'},indent=2))

if __name__=='__main__':main()
