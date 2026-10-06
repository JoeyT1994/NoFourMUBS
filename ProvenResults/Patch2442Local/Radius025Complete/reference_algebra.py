"""Exact cyclotomic and determinant algebra used by the milliradian proof."""
from __future__ import annotations
from fractions import Fraction as Q
from itertools import combinations, permutations, product
from collections import Counter
from pathlib import Path
import importlib.util

HERE=Path(__file__).resolve().parent
OMEGA=((1,0),(0,1),(-1,-1))
ROOT6=((1,0),(1,1),(0,1),(-1,0),(-1,-1),(0,-1))


def need(v,message):
    if not v:raise AssertionError(message)

def ca(a,b):return a[0]+b[0],a[1]+b[1]
def cn(a):return -a[0],-a[1]
def cm(a,b):
    x,y=a;u,v=b
    return x*u-y*v,x*v+y*u-y*v

def cc(a):return a[0]-a[1],-a[1]
def cr(k):return OMEGA[k%3]

def padd(a,b):
    out=dict(a)
    for e,c in b.items():
        out[e]=ca(out.get(e,(0,0)),c)
        if out[e]==(0,0):del out[e]
    return out

def pscale(a,c):return {e:cm(v,c) for e,v in a.items() if cm(v,c)!=(0,0)}
def psub(a,b):return padd(a,pscale(b,(-1,0)))
def pmul(a,b):
    out={}
    for e,c in a.items():
        for f,d in b.items():
            g=tuple(x+y for x,y in zip(e,f));out[g]=ca(out.get(g,(0,0)),cm(c,d))
    return {e:c for e,c in out.items() if c!=(0,0)}
def pstar(a):return {tuple(-x for x in e):cc(c) for e,c in a.items()}
def mono(e,c=(1,0)):return {tuple(e):c} if c!=(0,0) else {}
def psum(ps):
    out={}
    for p in ps:out=padd(out,p)
    return out

def serial(p):return [[list(e),list(c)] for e,c in sorted(p.items())]


def load_corner():
    spec=importlib.util.spec_from_file_location('pinned_direct_corner',HERE/'inputs/physical_algebra.py')
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
    return mod.corner_algebra()

def raw_words(D):
    words=[]
    for (a,b,c,d),co in sorted(D.d.items()):
        need(co.denominator==1 and abs(co)==1,'signed determinant integer coefficient')
        e=((a+b+c+d,-a-c,-b-d),(-a-b,a,b),(-c-d,c,d))
        need(all(sum(row)==0 for row in e),'row gauge weight')
        need(all(sum(e[i][j] for i in range(3))==0 for j in range(3)),'column gauge weight')
        words.append((e,int(co)))
    need(len(words)==48,'48 signed determinant words')
    base={tuple(x for row in e for x in row):c for e,c in words}
    need(all(base.get(tuple(-x for x in e))==-c for e,c in base.items()),'conjugate antisymmetry')
    count=0
    for rows in permutations(range(3)):
        for cols in permutations(range(3)):
            transformed={tuple(e[i][j] for i in rows for j in cols):c for e,c in words}
            need(transformed==base,'raw polynomial internal permutation invariance');count+=1
    trans={tuple(e[j][i] for i in range(3) for j in range(3)):c for e,c in words}
    need(trans==base,'raw polynomial transpose invariance')
    hist=Counter(sum(abs(x) for row in e for x in row) for e,c in words)
    need(hist=={8:36,12:12},'raw degree census')
    lipschitz=sum(abs(c)*sum(abs(x) for row in e for x in row) for e,c in words)
    need(lipschitz==432,'raw signed Lipschitz weight')
    return words,{'word_count':48,'internal_permutation_checks':count,'transpose_invariant':True,
                  'raw_degree_census':{str(k):v for k,v in sorted(hist.items())},
                  'entrywise_Lipschitz_weight':lipschitz,'maximum_raw_degree':12}


def fourier_checks():
    F=[[cr(i*j) for j in range(3)] for i in range(3)]
    checks=0
    for i in range(3):
        for j in range(3):
            val=(0,0)
            for k in range(3):val=ca(val,cm(F[i][k],cc(F[j][k])))
            need(val==((3,0) if i==j else (0,0)),'F3 Gram identity');checks+=1
    return {'exact_F3_Gram_entries':checks,'F3_symmetric':F==list(map(list,zip(*F)))}


def side_factor(D):
    # Variable order z,w. No approximate roots are used.
    a=psub(mono((2,0)),mono((0,1)))
    b=psub(mono((1,0)),mono((0,2)))
    c=psub(mono((1,1)),mono((0,0)))
    target=pscale(pmul(pmul(pmul(a,b),c),mono((-2,-2))),(3,0))
    checks=[]
    for i,j in combinations(range(3),2):
        actual={}
        for (aa,bb,cc0,dd),co in D.d.items():
            k=(aa+2*cc0)*(j-i)-i*(bb+2*dd)
            actual=padd(actual,mono((bb,dd),cm((int(co),0),cr(k))))
        need(actual==target,'exact side signed determinant factorization')
        checks.append([i,j])
    return {'known_pairs':checks,'factorization':'3*(z^2-w)*(z-w^2)*(z*w-1)/(z^2*w^2)',
            'expanded_terms':serial(target)}

