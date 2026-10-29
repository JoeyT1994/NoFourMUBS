"""Closed dyadic subdivisions of K bins, with the original H ball fixed.

Only a complete tree of positive Arb quadratic bounds removes a coarse
bin. Replay derives every child domain from its parent and split axis.
"""
from fractions import Fraction as F
from itertools import product
import time
from flint import arb, arb_mat
from load_native import C, S, norm_upper
import bin_quadratic as BQ

ROOT = ((F(0),)*5, (F(1),)*5)


def radius_squared(half):
    """Maximum squared projected norm before multiplication by pi/96."""
    return max(sum(h*h for h in half) - sum(s*h for s,h in zip(signs,half))**2/6
               for signs in product((-1,1),repeat=5))


def split(domain,axis):
    if type(axis) is not int or not 0 <= axis < 5:
        raise ValueError('split axis must be an integer from zero through four')
    center,half=domain;newhalf=list(half);newhalf[axis]/=2
    children=[]
    for sign in (-1,1):
        newcenter=list(center);newcenter[axis]+=sign*newhalf[axis]
        children.append((tuple(newcenter),tuple(newhalf)))
    return tuple(children)


def exact_fraction(x):
    return arb(x.numerator)/x.denominator


class Geometry:
    def __init__(self,model):
        self.base=BQ.setup(model);self.templates={ROOT[1]:self.base}
        self.width=arb.pi()/96;self.p6=C.project6()
        self.hlinear=[C.Z.spectral(S.block(d['d'],range(6),range(4))) for d in self.base]
        self.nonlinear=[C.Z.spectral(d['h2'])/2+C.Z.spectral(d['x']) for d in self.base]

    def data(self,domain):
        center,half=domain
        if len(center)!=5 or len(half)!=5 or any(h<=0 or abs(c)+h>1 for c,h in zip(center,half)):
            raise ValueError('child domain is outside the original closed bin')
        if half not in self.templates:
            rho=exact_fraction(radius_squared(half)).sqrt()*self.width
            data=[]
            for dd,a,n in zip(self.base,self.hlinear,self.nonlinear):
                d=arb_mat([[dd['d'][i,j] if j<4 else dd['d'][i,j]*exact_fraction(half[j-4])
                            for j in range(9)] for i in range(6)])
                delta=a+rho
                tail=(2*delta*n+n*n+arb(2).sqrt()/3*(delta+n)**3).upper()
                data.append(dict(dd,d=d,tail=tail))
            self.templates[half]=data
        shift=self.p6*arb_mat([[arb(0)]]+[[exact_fraction(c)*self.width] for c in center])
        return [dict(dd,h=dd['h']-shift) for dd in self.templates[half]]


class Search:
    def __init__(self,model,max_depth=5,max_nodes=63):
        if type(max_depth)is not int or not 0<=max_depth<=30 or type(max_nodes)is not int or max_nodes<1:
            raise ValueError('invalid finite tree search limits')
        self.geometry=Geometry(model);self.searches={}
        self.max_depth=max_depth;self.max_nodes=max_nodes;self.nodes=0

    def exclude(self,index):
        self.nodes=0
        return self._visit(index,ROOT,0)

    def _visit(self,index,domain,depth):
        if self.nodes>=self.max_nodes:return None
        self.nodes+=1;data=self.geometry.data(domain);shape=domain[1]
        if shape not in self.searches:self.searches[shape]=BQ.Search(data)
        f,g,q,x=BQ.numeric(data,[index])
        proposal=self.searches[shape].propose(f[0],g[0],q[0],x[0])
        if proposal is not None:
            try:proof=BQ.receipt(data,index,*proposal)
            except (ArithmeticError,ValueError,ZeroDivisionError):proof=None
            if proof is not None:return dict(leaf=proof)
        if depth>=self.max_depth:return None
        axis=max(range(5),key=lambda j:shape[j])
        children=[]
        for child in split(domain,axis):
            proof=self._visit(index,child,depth+1)
            if proof is None:return None
            children.append(proof)
        return dict(axis=axis,children=children)


def replay_tree(geometry,index,tree):
    """Return the number of checked leaves; reject incomplete or forged trees."""
    nodes=0
    def visit(node,domain,depth):
        nonlocal nodes
        nodes+=1
        if nodes>200000 or depth>60 or not isinstance(node,dict):
            raise ArithmeticError('invalid or excessive certificate tree')
        if set(node)=={'leaf'}:
            w=node['leaf']
            if w.get('index')!=index or any(type(j)is not int for j in w['index']):
                raise ArithmeticError('leaf belongs to a different coarse bin')
            proof=BQ.receipt(geometry.data(domain),index,
                [float.fromhex(v) for v in w['direction_hex']],
                [float.fromhex(v) for v in w['dual_multipliers_hex']])
            if proof is None:raise ArithmeticError('child exclusion failed on replay')
            return 1
        if set(node)!={'axis','children'} or not isinstance(node['children'],list) or len(node['children'])!=2:
            raise ArithmeticError('both closed children are required')
        domains=split(domain,node['axis'])
        return sum(visit(child,subdomain,depth+1) for child,subdomain in zip(node['children'],domains))
    return visit(tree,ROOT,0)


def remove(cover,deleted):
    out=dict(cover)
    for name in ('bin_indices','bin_deltas','initial_radii'):out[name]=list(cover[name])
    for color,indices in deleted.items():
        keep=[j for j,index in enumerate(cover['bin_indices'][color]) if tuple(index) not in indices]
        out['bin_indices'][color]=[cover['bin_indices'][color][j] for j in keep]
        out['bin_deltas'][color]=[cover['bin_deltas'][color][j] for j in keep]
        out['initial_radii'][color]=(arb(max(C.Z.upper(norm_upper(d)+cover['bin_radius'])
             for d in out['bin_deltas'][color])) if keep else arb(0))
    out=BQ.restrict_cliques(out,[p for p in out['cliques'] if all(out['bin_indices'][c] for c in p)])
    out.pop('_fine_pair_cache',None)
    return out


def prune(model,cover,max_depth=5,max_nodes=63,progress=None):
    search=Search(model,max_depth,max_nodes);witnesses=[];deleted={};tested=nodes=0
    start=time.monotonic()
    for color in sorted({c for p in cover['cliques'] for c in p}):
        for index in cover['bin_indices'][color]:
            tree=search.exclude(index);tested+=1;nodes+=search.nodes
            if tree is not None:
                witnesses.append(dict(color=color,index=list(index),tree=tree))
                deleted.setdefault(color,set()).add(tuple(index))
        if progress:progress(dict(color=color,tested=tested,excluded=len(witnesses),nodes=nodes,
                                  seconds=time.monotonic()-start))
    return remove(cover,deleted),dict(tested_bins=tested,excluded_bins=len(witnesses),nodes=nodes,
        witnesses=witnesses,seconds=time.monotonic()-start,max_depth=max_depth,max_nodes=max_nodes)


def replay_pruning(model,cover,saved):
    geometry=Geometry(model);deleted={};seen=set();leaves=0
    available={c:{tuple(x) for x in cover['bin_indices'][c]} for c in {c for p in cover['cliques'] for c in p}}
    for w in saved['witnesses']:
        color=w['color'];index=w['index'];key=(color,tuple(index))
        if type(color)is not int or color not in available or tuple(index) not in available[color]:
            raise ArithmeticError('excluded coarse bin is absent from the rebuilt cover')
        if key in seen:raise ArithmeticError('duplicate excluded coarse bin')
        seen.add(key);leaves+=replay_tree(geometry,index,w['tree'])
        deleted.setdefault(color,set()).add(tuple(index))
    return remove(cover,deleted),leaves
