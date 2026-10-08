"""Exact dyadic four-seed cover for the cutoff-5 global confinement problem.

Scope: strict maximal corners, put in the canonical modulus order. A node
is accepted only by a necessary-condition exclusion. Remaining nodes are
retained explicitly. This module alone has NO near-F6 acceptance terminal,
so cannot certify the desired theorem. It builds its complete global domain.
All phases are rational multiples of pi; acceptance uses outward Arb balls.
"""
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations
from pathlib import Path
import argparse,gzip,hashlib,json,sys,time
from flint import arb,acb,ctx
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]

def box(path):
    c=[Q(0)]*4;r=[Q(1)]*4
    for k,b in enumerate(path):
        j=k%4;r[j]/=2;c[j]+=r[j]*(1 if b=='1' else -1)
    return c,r

def evaluate(path):
    c,r=box(path)
    z=[arb.pi()*(arb(x.numerator)/x.denominator+arb(0,arb(y.numerator)/y.denominator)) for x,y in zip(c,r)]
    a,b,c,d=z
    def mod(x,y):return 3+2*(x.cos()+y.cos()+(x-y).cos())
    h=[mod(a,b),mod(c,d),mod(a-c,b-d)]
    v=[mod(a,c),mod(b,d),mod(a-b,c-d)]
    for k,(x,y) in enumerate([(h[0],h[1]),(h[1],h[2]),(v[0],v[1]),(v[1],v[2]),(h[0],v[0])]):
        if x-y<0:return dict(reason='outside_F',which=k,bound=str(x-y))
    aa,bb,cc,dd=[acb(0,x).exp() for x in z]
    s=-(1+aa+bb);t=-(1+cc+dd);rr=-(1+cc*aa.conjugate()+dd*bb.conjugate())
    p=sum(h);j=2*(s*rr*t.conjugate()).real
    for name,val in [('eta_plus',9-p+j),('eta_minus',9-p-j)]:
        if val<0:return dict(reason='nonphysical_'+name,bound=str(val))
    w=h[0]*h[1]+h[0]*h[2]+h[1]*h[2]-h[0]*h[1]*h[2]
    g=27-3*p+j;eta=9-p+j;chi=w-(p-9)*(p-18)+(p-15)*j
    rp=4*g*g*eta-chi*chi
    if rp<=0:return dict(reason='no_strict_corner',bound=str(rp))
    if rp>=5:return dict(reason='R_at_least_5',bound=str(rp))
    # Difference identity is independent of the completion and of divisions.
    diff=4*j*(2*j*j-w*p+15*w+p*p*p-12*p*p+27*p)
    if diff<0:return dict(reason='complement_beats_seed',bound=str(diff))
    # The complementary signed invariant is a sum of six sine products.
    xx=[arb(0),a,b];yy=[arb(0),c,d];zz=[y-x for x,y in zip(xx,yy)]
    value=arb(0)
    for i in range(3):
        for k in range(3):
            if i==k:continue
            e,f=[x for x in range(3) if x!=i];m,n=[x for x in range(3) if x!=k]
            seq=[2*e,2*f,2*m+1,2*n+1,2*i,2*k+1]
            sign=(-1)**sum(seq[x]>seq[y] for x in range(6) for y in range(x+1,6))
            value+=sign*(xx[f]-xx[e]).sin()*(yy[n]-yy[m]).sin()*(zz[i]-zz[k]).sin()
    rm=64*value**2
    if rm>=5:return dict(reason='complement_R_at_least_5',bound=str(rm))
    # Intersect two independent enclosures for R, neither of which uses
    # orthogonality. The last identity can greatly reduce cancellation.
    rp2=rm+diff
    if rp2<=0:return dict(reason='no_strict_corner_difference',bound=str(rp2))
    if rp2>=5:return dict(reason='R_at_least_5_difference',bound=str(rp2))
    return None

def write_gz(path,rows):
    with gzip.open(path,'wt') as f:
        for row in rows:f.write(json.dumps(row,separators=(',',':'))+'\n')

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--depth',type=int,default=20)
    parser.add_argument('--nodes',type=int,default=200000);parser.add_argument('--name',default='global_coarse20')
    parser.add_argument('--resume');args=parser.parse_args();ctx.prec=96
    if args.resume:
        prefix=HERE/args.resume
        with gzip.open(str(prefix)+'_closed.jsonl.gz','rt') as f:closed=[json.loads(x) for x in f]
        with gzip.open(str(prefix)+'_open.jsonl.gz','rt') as f:stack=[json.loads(x)['path'] for x in f]
    else:closed=[];stack=['']
    unresolved=[];seen=0;start=time.monotonic();last=start
    counts=Counter(x['reason'] for x in closed)
    while stack and seen<args.nodes:
        path=stack.pop();seen+=1
        result=evaluate(path)
        if result:
            closed.append(dict(path=path,**result));counts[result['reason']]+=1
        elif len(path)>=args.depth:unresolved.append(path)
        else:stack.extend([path+'1',path+'0'])
        if time.monotonic()-last>20:
            print('new nodes',seen,'closed',len(closed),'open at depth',len(unresolved),'pending',len(stack),'seconds',round(time.monotonic()-start,2),flush=True);last=time.monotonic()
    unresolved.extend(stack)
    # Exact mass plus prefix-freeness checks every branch, including a
    # budget stop. No root is silently omitted or credited by volume alone.
    paths=[x['path'] for x in closed]+unresolved
    assert len(paths)==len(set(paths))
    ordered=sorted(paths)
    assert all(not b.startswith(a) for a,b in zip(ordered,ordered[1:]))
    assert sum((Q(1,2**len(x)) for x in paths),Q(0))==1
    prefix=HERE/args.name
    write_gz(str(prefix)+'_closed.jsonl.gz',closed)
    write_gz(str(prefix)+'_open.jsonl.gz',[dict(path=x) for x in unresolved])
    receipt=dict(status='OPEN' if unresolved else 'EXCLUSIONS_COMPLETE',scope='Complete global seed partition, necessary-condition prunes only',
        maximum_depth=args.depth,new_nodes=seen,closed=len(closed),open=len(unresolved),
        open_volume_fraction=str(sum((Q(1,2**len(x)) for x in unresolved),Q(0))),
        complete_partition_verified=True,global_confinement_proved=False,counts=dict(counts),
        open_depth_histogram=dict(Counter(len(x) for x in unresolved)),seconds=time.monotonic()-start,
        source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
    Path(str(prefix)+'_receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
