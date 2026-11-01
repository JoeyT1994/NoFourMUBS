#!/usr/bin/env python3
"""Complete unbiased-column and clique outer cover on a native seed ball.

No numerical root census enters the coverage proof. Every discarded torus bin
has an Arb exclusion; every graph nonedge has an Arb exclusion. This is a cover,
not a classification certificate. Exhausted resource caps never mean success.
"""
import argparse
import gzip
import hashlib
import itertools
import json
import sys
from pathlib import Path

import numpy as np
from flint import acb, arb, arb_mat, ctx

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
sys.path[:0] = [str(ROOT / 'proof/seed_atlas/cert'), str(HERE.parent)]
import seedcert as SC
import patches as P
import wholeball as Z
import tao


def column_data(model):
    """Per-column phase models, projected off the immaterial common phase."""
    data = []
    for c in range(6):
        def projected(a):
            return arb_mat([[a[6*i+c,j]-sum((a[6*k+c,j] for k in range(6)),arb(0))/6
                             for j in range(a.ncols())] for i in range(6)])
        u,h2,x = (projected(model[k]) for k in ('U','H2','X'))
        rem = Z.spectral(h2)*model['r']**2/2+Z.spectral(x)*model['tau']
        rho = Z.spectral(u)*model['r']+rem
        phase = [model['Q0'][6*i+c,0]-model['Q0'][6*i,0]+model['Q0'][0,0] for i in range(6)]
        # Enumerate column phases in the common row gauge of Q0. Equivalently,
        # remove its fixed first-column row gauge from H and from all vectors.
        data.append(dict(u=u,rem=rem,rho=rho,phase=phase))
    return data


def bins(model, levels=(6,12,24,48,96), cap=2000000):
    data=column_data(model)
    rcol=arb(max(Z.upper(d['rho']) for d in data))
    nonlinear=Z.spectral(model['H2'])*model['r']**2/2+Z.spectral(model['X'])*model['tau']
    rf=Z.spectral(model['U'])*model['r']+nonlinear
    kept,previous,trace=None,None,[]
    for m in levels:
        if previous is None:
            candidates=itertools.product(range(m),repeat=5)
        else:
            if m != 2*previous: raise ValueError('levels must double')
            candidates=(tuple(2*x+y for x,y in zip(b,bits)) for b in kept
                        for bits in itertools.product(range(2),repeat=5))
        t=arb.pi()/m
        table=[acb(0,arb(2*k+1)*t).exp() for k in range(m)]
        tables=[[[acb(0,-d['phase'][r]).exp()*table[k] for k in range(m)]
                 for r in range(1,6)] for d in data]
        first=[acb(0,-d['phase'][0]).exp() for d in data]
        rho=[d['rho']+(arb(29)/6).sqrt()*t for d in data]
        kept=[];tested=0
        for b in candidates:
            tested+=1
            zs=[];ss=[];gg=[];bb=[]
            for c,d in enumerate(data):
                z=[first[c]]+[tables[c][r][b[r]] for r in range(5)]
                s=sum(z,acb(0));sr=abs(s)
                if abs(sr-arb(6).sqrt()) > arb(6).sqrt()*rho[c]: break
                # First order in five box phases and the *correlated* four w's.
                g=[-2*(s.conjugate()*v).imag for v in z]
                gw=[sum((g[i]*d['u'][i,j] for i in range(6)),arb(0)) for j in range(4)]
                gn=sum((abs(v).upper()**2 for v in g),arb(0)).sqrt()
                first_order=t*sum((abs(v) for v in g[1:]),arb(0))
                first_order+=model['r']*sum((abs(v).upper()**2 for v in gw),arb(0)).sqrt()+gn*d['rem']
                remainder=(6+sr+arb(6).sqrt()*rho[c])*rho[c]**2
                if abs((s*s.conjugate()).real-6)>first_order+remainder: break
                zs.append(z);ss.append(s);gg.append(g);bb.append(gw)
            else:
                # Any real direction y gives a necessary joint support test.
                # The floating solve ONLY proposes its exact binary64 entries.
                j=np.array([[float(x)/12 for x in row] for row in gg])
                bj=np.array([[float(x)/12 for x in row] for row in bb])
                f=np.array([float((s*s.conjugate()).real-6)/12 for s in ss])
                aa=np.concatenate([float(t)*j[:,1:],float(model['r'])*bj],axis=1)
                try:
                    yy=np.linalg.solve(aa@aa.T+1e-12*np.eye(6),f)
                    yy=yy/max(np.max(np.abs(yy)),1e-300)
                    if np.all(np.isfinite(yy)) and joint_excluded(zs,ss,gg,bb,yy,t,model['r'],nonlinear,rcol,rf):
                        continue
                except np.linalg.LinAlgError:
                    pass
                kept.append(b)
                if len(kept)>cap: raise RuntimeError('bin cap: no conclusion')
        digest=hashlib.sha256(json.dumps(kept,separators=(',',':')).encode()).hexdigest()
        row=dict(level=m,tested=tested,retained=len(kept),sha256=digest)
        trace.append(row);print(json.dumps(row),flush=True);previous=m
    return kept,previous,trace


def joint_excluded(zs,ss,gg,bb,yy,t,r,nonlinear,rcol,rf):
    """STAGEC.md (C2b), in radians; exact Hadamard centre gives K=1."""
    y=[arb(float(v)) for v in yy]
    f=[((s*s.conjugate()).real-6)/12 for s in ss]
    j=[[v/12 for v in row] for row in gg]
    bj=[[v/12 for v in row] for row in bb]
    lhs=abs(sum((y[c]*f[c] for c in range(6)),arb(0)))
    g=[sum((y[c]*j[c][i] for c in range(6)),arb(0)) for i in range(6)]
    b=[sum((y[c]*bj[c][k] for c in range(6)),arb(0)) for k in range(4)]
    norm=lambda xs:sum((abs(v).upper()**2 for v in xs),arb(0)).sqrt()
    maximum=lambda xs:arb(max(Z.upper(abs(v)) for v in xs))
    y1=sum((abs(v) for v in y),arb(0));yi=maximum(y)
    sy=[abs(y[c]*ss[c])/arb(6).sqrt() for c in range(6)]
    sy1=sum(sy,arb(0));sy2=norm(sy);syi=maximum(sy)
    ny=norm([y[c]*j[c][i] for c in range(6) for i in range(6)])
    gy=maximum([sum((y[c]*ss[c].conjugate()*zs[c][i]/6 for c in range(6)),acb(0)) for i in range(6)])
    # min of two proved upper bounds, with no uncertain interval ordering.
    small=lambda a,b:arb(min(Z.upper(a),Z.upper(b)))
    x=(arb(29)/6).sqrt()*t;inf=arb(3)*t/2
    sq=small(yi*(x+rf)**2,y1*(x+rcol)**2)
    pure=small(gy*x*x,sy2*inf*x)
    cross=2*x/arb(6).sqrt()*small(sy2*rf,sy1*rcol)
    dd=small(syi*rf*rf,sy1*rcol*rcol)/arb(6).sqrt()
    rhs=t*sum((abs(v) for v in g[1:]),arb(0))+r*norm(b)+nonlinear*ny+(sq+pure+cross+dd)/2
    return lhs>rhs


def all_cliques(adjacency,size=6,step_cap=5000000,clique_cap=500000):
    n=len(adjacency);out=[];steps=0
    for i,a in enumerate(adjacency):
        if a<0 or a>>n or a&(1<<i): raise ValueError('invalid adjacency')
        if any(bool(a&(1<<j))!=bool(adjacency[j]&(1<<i)) for j in range(n)):
            raise ValueError('asymmetric adjacency')
    def rec(pool,need,chosen):
        nonlocal steps
        if not need:
            out.append(chosen)
            if len(out)>clique_cap: raise RuntimeError('clique cap: no conclusion')
            return
        while pool.bit_count()>=need:
            steps+=1
            if steps>step_cap: raise RuntimeError('graph step cap: no conclusion')
            bit=pool&-pool;pool^=bit;i=bit.bit_length()-1
            rec(pool&adjacency[i],need-1,chosen+[i])
    rec((1<<n)-1,size,[])
    return out,steps


def run(atlas,index,max_level=96):
    if max_level not in (6,12,24,48,96,192,384): raise ValueError('invalid maximum level')
    document=json.loads(gzip.decompress(atlas.read_bytes()))
    model=P.normal_form(SC.Ball(document['seeds'][index]),prec=160)
    levels=[6]
    while levels[-1]<max_level: levels.append(2*levels[-1])
    kept,m,trace=bins(model,levels)
    labels=tao.cluster(kept,m)
    adjacency=tao.graph(labels,m)
    try:
        cliques,steps=all_cliques(adjacency)
        enumeration='COMPLETE'
    except RuntimeError as exc:
        cliques,steps=None,None
        enumeration=str(exc)
    return dict(status='CERTIFIED',claim='complete outer cover of every possible third basis',
                classification_status='CERTIFIED: no third basis' if cliques==[] else 'NOT ESTABLISHED',
                seed_index=index,radius_hex=document['seeds'][index]['r'],precision_bits=ctx.prec,
                atlas_sha256=hashlib.sha256(atlas.read_bytes()).hexdigest(),
                source_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                               for p in (Path(__file__),HERE.parent/'tao.py',
                                         ROOT/'proof/seed_atlas/cert/patches.py',
                                         ROOT/'proof/seed_atlas/cert/wholeball.py',
                                         ROOT/'proof/seed_atlas/cert/seedcert.py',
                                         ROOT/'proof/seed_atlas/cert/wholeball_basis.json')},
                normal_form={k:v for k,v in model['summary'].items() if k!='seconds'},
                levels=trace,labels=[dict(bin=list(b),radius_cycles_upper_hex=Z.upper(r).hex()) for b,r in labels],
                adjacency_hex=[hex(x) for x in adjacency],cliques=cliques,graph_steps=steps,enumeration=enumeration)


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--index',type=int,default=1879)
    parser.add_argument('--atlas',type=Path,default=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz')
    parser.add_argument('--max-level',type=int,default=96)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    receipt=run(args.atlas,args.index,args.max_level)
    text=json.dumps(receipt,separators=(',',':'))+'\n'
    if args.output.suffix=='.gz':
        args.output.write_bytes(gzip.compress(text.encode(),mtime=0))
    else: args.output.write_text(text)
    print(json.dumps({k:v for k,v in receipt.items() if k in ('status','claim','classification_status','seed_index','radius_hex')}))
    print(json.dumps(dict(labels=len(receipt['labels']),cliques=None if receipt['cliques'] is None else len(receipt['cliques']),graph_steps=receipt['graph_steps'])))
