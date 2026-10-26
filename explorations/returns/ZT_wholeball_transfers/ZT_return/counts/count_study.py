#!/usr/bin/env python3
"""Exact cover combinatorics and untrusted affine transfer benchmarks.

No MUB exclusion/atlas or Stage C calculation is used. Only supplied source
balls, neighbouring target balls and transfer descriptors are examined.

The affine benchmark deliberately drops the nonlinear completion remainder
and orientation inequalities. Its count is NUMERICAL, not a transfer proof.
The exact coarsening preserves the already assigned transfer on the sphere
by union of old pieces. It does not certify a new transfer on the full box.
"""
from __future__ import annotations
import argparse, collections, csv, gzip, hashlib, itertools, json, math
from pathlib import Path
import time
import numpy as np

ROOT = Path(__file__).resolve().parents[1] / "context"
SIGNS = np.asarray(list(itertools.product((-1, 1), repeat=4)), float)
BITS = list(itertools.product((0, 1), repeat=4))


def misses(box):
    m, *ind = box
    lo = [-(1 << m) + 2*i for i in ind]
    n2 = 1 << (2*m)
    mn = sum(0 if l <= 0 <= l+2 else min(l*l, (l+2)**2) for l in lo)
    mx = sum(max(l*l, (l+2)**2) for l in lo)
    return mn > n2 or mx < n2


def children(box):
    m, *ind = box
    return [(m+1, *(2*i+b for i,b in zip(ind,bits))) for bits in BITS]


def geometry(boxes):
    b = np.asarray(boxes, np.int64)
    h = np.exp2(-b[:,0].astype(float))
    c = -1 + (2*b[:,1:] + 1)*h[:,None]
    return c, h


def original_map(seed):
    listed = {}
    for k,g in enumerate(seed['transfers']):
        for b in g['boxes']:
            listed.setdefault(tuple(b), set()).add(k)
    return listed


def exact_coarsen(seed, max_level=9):
    """Exact sphere coverage traversal and same-label subtree coarsening.

    None is the unconstrained set of all labels (a sphere-empty cell).
    A nonempty set contains every inherited label known on this sphere piece.
    """
    listed = original_map(seed)
    nodes = 0
    memo = {}
    def rec(box):
        nonlocal nodes
        nodes += 1
        if misses(box):
            return None,0
        if box in listed:
            memo[box] = frozenset(listed[box])
            return memo[box],1
        if box[0] >= max_level:
            raise ValueError(f'uncovered sphere cell {box}')
        intersection = None
        count = 0
        for ch in children(box):
            poss,n = rec(ch)
            count += n
            if poss is not None:
                intersection = poss if intersection is None else intersection & poss
        if intersection:
            memo[box] = intersection
            return intersection,1
        return frozenset(),count
    _,count = rec((0,0,0,0,0))
    out = collections.defaultdict(list)
    def emit(box):
        if misses(box): return
        if memo.get(box):
            out[min(memo[box])].append(list(box)); return
        for ch in children(box): emit(ch)
    emit((0,0,0,0,0))
    assert sum(map(len,out.values())) == count
    return count,nodes,out


def read_float(x): return float.fromhex(x) if isinstance(x,str) else float(x)


def array(seed,k,shape):
    return np.array([read_float(x) for x in seed[k]],float).reshape(shape)


def corner(rows,cols,g='id'):
    a = np.zeros((4,36))
    sign = -1 if g in ('conj','conjT') else 1
    transpose = g in ('T','conjT')
    for k,(i,j) in enumerate(itertools.product((1,2),repeat=2)):
        for r,c,s in ((rows[i],cols[j],1),(rows[i],cols[0],-1),
                      (rows[0],cols[j],-1),(rows[0],cols[0],1)):
            idx = 6*c+r if transpose else 6*r+c
            a[k,idx] += s*sign
    return a


def affine_models(seed,seeds):
    p = array(seed,'P',(36,)); U = array(seed,'U',(36,4))
    th = array(seed,'theta0',(4,)); M = array(seed,'Mth',(4,4))
    r = read_float(seed['r'])
    em = np.zeros((36,4)); em[[7,8,13,14],range(4)] = 1
    aa,bb,ids,linear = [],[],[],[]
    for k,g in enumerate(seed['transfers']):
        if g['kind'] not in ('T0','T1'): continue
        target = seeds[g['target']]
        Mi = np.linalg.inv(array(target,'Mth',(4,4)))
        tr = read_float(target['r'])
        off = 2*np.pi*np.array(g['wind'])-array(target,'theta0',(4,))
        if g['kind'] == 'T0':
            a,b = Mi@(th+off)/tr,Mi@M*r/tr
            lin = True
        else:
            L = corner(g['rows'],g['cols'],g['g'])
            lin = sorted(g['rows']) == [0,1,2] and sorted(g['cols']) == [0,1,2]
            if lin:
                a,b = Mi@(L@em@th+off)/tr,Mi@L@em@M*r/tr
            else:
                a,b = Mi@(L@p+off)/tr,Mi@L@U*r/tr
        aa.append(a);bb.append(b);ids.append(k);linear.append(lin)
    return np.array(aa),np.array(bb),np.array(ids),np.array(linear)


def model_test(boxes,aa,bb,sphere_aware=True):
    """Optimistic normalized squared target test (orientation omitted)."""
    c,h = geometry(boxes)
    lam = np.linalg.svd(bb,compute_uv=False)[:,-1]**2*(1-1e-12) if sphere_aware else np.zeros(len(aa))
    bestval = np.full(len(boxes),np.inf)
    bestid = np.full(len(boxes),-1,int)
    # A few groups per batch keep temporary arrays small for fine fallback cells.
    for lo in range(0,len(aa),16):
        a,b = aa[lo:lo+16],bb[lo:lo+16]
        v = a[None,:,None,:] + np.einsum('gij,nvj->ngvi',b,c[:,None,:]+h[:,None,None]*SIGNS[None,:,:])
        f = np.einsum('ngvi,ngvi->ngv',v,v)
        ordinary = f.max(2)
        if sphere_aware:
            vv = c[:,None,:]+h[:,None,None]*SIGNS[None,:,:]
            radial = np.einsum('nvi,nvi->nv',vv,vv)[:,None,:]-1
            # Each lambda in [0,sigma_min(B)^2] is independently valid.
            # Interior vertices can make lambda=max worse than lambda=0.
            val=ordinary.copy()
            for fraction in (.25,.5,.75,1):
                val=np.minimum(val,(f-fraction*lam[None,lo:lo+16,None]*radial).max(2))
        else:
            val = ordinary
        idx = val.argmin(1)
        cur = val[np.arange(len(boxes)),idx]
        improve = cur < bestval
        bestval[improve] = cur[improve]
        bestid[improve] = lo+idx[improve]
    return bestval, bestid


def benchmark(seed,seeds,sphere_aware,max_level=9):
    """Stop at a passing affine node, or inherit a supplied original leaf.

    Fallback leaves are counted separately. Even a zero fallback count does
    not imply a certificate because nonlinear error and orientations are absent.
    """
    listed = original_map(seed)
    aa,bb,ids,linear = affine_models(seed,seeds)
    active = [(0,0,0,0,0)]
    counts = collections.Counter(); examined=0; levels={}; selected=[]
    for m in range(max_level+1):
        if not active:break
        passed=[];values=[];choices=[]
        for lo in range(0,len(active),2048):
            v,k=model_test(active[lo:lo+2048],aa,bb,sphere_aware)
            values.extend(v);choices.extend(k)
        nextactive=[]
        for box,val,k in zip(active,values,choices):
            examined+=1
            if val < 1-1e-8:
                counts['affine']+=1
                counts['exact_linear' if linear[k] else 'nonlinear_affine']+=1
                selected.append((int(ids[k]),list(box)))
                levels[m]=levels.get(m,0)+1
            elif box in listed:
                counts['original_fallback']+=1
                levels[m]=levels.get(m,0)+1
                selected.append((min(listed[box]),list(box)))
            elif m == max_level:
                raise ValueError(f'uncovered fallback node {box}')
            else:
                nextactive.extend(ch for ch in children(box) if not misses(ch))
        active=nextactive
    counts['total']=counts['affine']+counts['original_fallback']
    counts['examined']=examined
    return dict(counts),levels,selected


def summary(x):
    a=np.array(x,float)
    return dict(total=int(a.sum()),minimum=float(a.min()),median=float(np.median(a)),
                p90=float(np.quantile(a,.9)),maximum=float(a.max()))


def run(args):
    path=Path(args.certificate)
    with gzip.open(path,'rt') as f:cert=json.load(f)
    seeds=cert['seeds']
    ids=[i for i,s in enumerate(seeds) if s['transfers']]
    if args.limit:ids=ids[:args.limit]
    if args.seeds:ids=[int(x) for x in args.seeds.split(',')]
    out=Path(args.output);out.mkdir(parents=True,exist_ok=True)
    rows=[];details=[]
    started=time.perf_counter()
    for j in ids:
        seed=seeds[j]
        nc,nodes,coarse=exact_coarsen(seed,cert['max_level'])
        original=sum(len(g['boxes']) for g in seed['transfers'])
        row=dict(seed=j,original=original,same_label_sphere_coarsening=nc,coverage_nodes=nodes,
                 groups=len(seed['transfers']),R_diagnostic=seed.get('info',{}).get('R'),
                 frame_condition=float(np.linalg.cond(array(seed,'Mth',(4,4)))),
                 r=read_float(seed['r']))
        detail=dict(seed=j,same_label={str(k):v for k,v in coarse.items()})
        for aware in (False,True):
            name='affine_sphere' if aware else 'affine_box'
            b,levels,sel=benchmark(seed,seeds,aware,cert['max_level'])
            row.update({name+'_'+k:v for k,v in b.items()})
            detail[name]=dict(levels=levels,selected=sel)
        rows.append(row);details.append(detail)
        print(json.dumps(row),flush=True)
    fields=list(dict.fromkeys(k for row in rows for k in row))
    with (out/'affine_geometry_counts.csv').open('w',newline='') as f:
        wr=csv.DictWriter(f,fieldnames=fields);wr.writeheader();wr.writerows(rows)
    with gzip.open(out/'affine_geometry_covers.json.gz','wt') as f:json.dump(details,f,separators=(',',':'))
    summ=dict(status='NUMERICAL affine benchmarks; CERTIFIED exact sphere combinatorics',
              input_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),seed_count=len(rows),
              seconds=time.perf_counter()-started,
              statistics={k:summary([r.get(k,0) for r in rows]) for k in
                          ('original','same_label_sphere_coarsening','affine_box_total','affine_box_original_fallback',
                           'affine_sphere_total','affine_sphere_original_fallback')})
    (out/'affine_geometry_summary.json').write_text(json.dumps(summ,indent=2)+'\n')
    print(json.dumps(summ,indent=2),flush=True)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'results'))
    p.add_argument('--limit',type=int)
    p.add_argument('--seeds')
    run(p.parse_args())
