"""Exact audit of a recorded Cartesian 16-child cover of enlarged boxes."""
from fractions import Fraction as Q
import math

def box(node):
    c=node['theta'];r=node['radius']
    if len(c)!=4 or not all(math.isfinite(x) for x in [*c,r]) or r<=0:
        raise ValueError('Invalid finite box')
    return [(Q(x)-Q(r),Q(x)+Q(r)) for x in c]

def audit_tree(records,root_center,root_radius):
    nodes={}
    for n in records:
        path=tuple(n['path'])
        if path in nodes or any(type(k) is not int or not 0<=k<16 for k in path):
            raise ValueError('Duplicate or malformed path')
        box(n);nodes[path]=n
    if () not in nodes:raise ValueError('Missing root')
    outer=box(nodes[()]);wanted=box(dict(theta=root_center,radius=root_radius))
    if not all(a<=c and d<=b for (a,b),(c,d) in zip(outer,wanted)):
        raise ValueError('Root omits enlarged parent')
    visited=set();leaves=[]
    def visit(path):
        if path not in nodes:raise ValueError('Missing child')
        visited.add(path);n=nodes[path]
        if n['status']!='split':leaves.append(n);return
        kids=[nodes.get(path+(j,)) for j in range(16)]
        if any(k is None for k in kids):raise ValueError('Incomplete 16-child split')
        kb=[box(k) for k in kids];pb=box(n)
        for axis in range(4):
            neg={kb[j][axis] for j in range(16) if not (j>>axis)&1}
            pos={kb[j][axis] for j in range(16) if (j>>axis)&1}
            if len(neg)!=1 or len(pos)!=1:raise ValueError('Non-Cartesian child family')
            lo,hi=next(iter(neg)),next(iter(pos))
            if not (lo[0]<=pb[axis][0] and hi[1]>=pb[axis][1] and lo[1]>=hi[0]):
                raise ValueError('Geometric gap in enlarged parent')
        for j in range(16):visit(path+(j,))
    visit(())
    if visited!=set(nodes):raise ValueError('Unreachable nodes or descendants of leaf')
    return leaves
