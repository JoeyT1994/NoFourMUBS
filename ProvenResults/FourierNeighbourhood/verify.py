#!/usr/bin/env python3
"""Exact acceptance of a carrier-only 4+1 exclusion near the Fourier orbit.

Standard library only. No floating-point root search, optimization, external
classification, or assumptions about the number of ray branches are used.
Every leaf of 32 closed phase-chart trees is checked, followed by exhaustive
anchor/quartet graph rejection. See PROOF.md for the analytic implications.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
from math import isqrt
from functools import lru_cache
from collections import Counter
import argparse, gzip, hashlib, json, platform, struct, sys, time

ROOT = Path(__file__).resolve().parent
SCALE = 1 << 64
GRID = 1 << 40
DELTA = F(1, 1024)
RHO = F(1, 50)
ORTH_THRESHOLD = F(1, 25)
UB_THRESHOLD = F(1, 24)
PAIRS = list(combinations(range(6), 2))
# q^k = (a + i sqrt(3) b)/2, q=exp(pi i/3).
ROOTS6 = ((2,0),(1,1),(-1,1),(-2,0),(-1,-1),(1,-1))


def require(ok, message):
    if not ok:
        raise ValueError(message)


def ceildiv(a, b):
    require(b > 0, 'nonpositive denominator')
    return -((-a)//b)


def ri(a, b=1):
    return a*SCALE//b, ceildiv(a*SCALE,b)


def imul(a, b):
    v = (a[0]*b[0],a[0]*b[1],a[1]*b[0],a[1]*b[1])
    return min(v)//SCALE, ceildiv(max(v),SCALE)


def cmul(a, b):
    rr=imul(a[:2],b[:2]);ii=imul(a[2:],b[2:])
    re=rr[0]-ii[1],rr[1]-ii[0]
    p=imul(a[:2],b[2:]);q=imul(a[2:],b[:2])
    return re+(p[0]+q[0],p[1]+q[1])


def iconj(a):
    return a[0],a[1],-a[3],-a[2]


def absup(a):
    return max(abs(a[0]),abs(a[1]))


def sqrtceil(n):
    require(n >= 0,'negative squared norm')
    a=isqrt(n)
    return a+int(a*a<n)


def cabsup(a):
    return sqrtceil(absup(a[:2])**2+absup(a[2:])**2)


def frac_interval(x):
    return ri(x.numerator,x.denominator)


def coefficient_intervals():
    r=isqrt(3*SCALE*SCALE)
    require(r*r<3*SCALE*SCALE<(r+1)*(r+1),'sqrt(3) enclosure')
    ans=[]
    for a,b in ROOTS6:
        re=ri(a,2)
        lo=b*(r if b>=0 else r+1)
        hi=b*(r+1 if b>=0 else r)
        ans.append(re+(lo//2,ceildiv(hi,2)))
    return [[ans[(j*(k-i))%6] for i,k in PAIRS] for j in range(6)]


C = coefficient_intervals()


@lru_cache(maxsize=8192)
def combined_coefficients(weights):
    require(len(weights)==6 and any(weights),'invalid separating multiplier')
    out=[]
    for e in range(15):
        lo=hi=il=ih=0
        # Reconstruct combined field coefficients directly from q powers.
        a=b=0
        i,k=PAIRS[e]
        for j,q in enumerate(weights):
            x,y=ROOTS6[(j*(k-i))%6]
            a+=q*x;b+=q*y
        re=ri(a,2)
        rr=isqrt(3*SCALE*SCALE)
        il=b*(rr if b>=0 else rr+1)
        ih=b*(rr+1 if b>=0 else rr)
        box=re+(il//2,ceildiv(ih,2))
        # Exact |(a+i sqrt(3)b)/2| enclosure, not interval dependency.
        mod=ceildiv(sqrtceil((a*a+3*b*b)*SCALE*SCALE),2)
        out.append((box,mod))
    return tuple(out)


def physical_coefficients_check():
    # Exact arithmetic in Q(i sqrt(3)); unnormalized root pairs have denom 2.
    def mul(x,y):
        return x[0]*y[0]-3*x[1]*y[1],x[0]*y[1]+x[1]*y[0]
    root=[(F(a,2),F(b,2)) for a,b in ROOTS6]
    for a in range(6):
        for b in range(6):
            require(mul(root[a],root[b])==root[(a+b)%6],'root multiplication')
    for j in range(6):
        s=tuple(sum(root[(j*r)%6][p] for r in range(6)) for p in (0,1))
        require(s==(F(6 if j==0 else 0),F(0)),'Fourier column orthogonality')
    require(len(PAIRS)==15 and len(C)==6,'coefficient dimensions')
    expected={'sixth_roots_numerators':[list(v) for v in ROOTS6],
              'denominator':2, 'basis':['1','i*sqrt(3)'],
              'pairs':[list(v) for v in PAIRS],
              'coefficients':[[list(ROOTS6[(j*(k-i))%6]) for i,k in PAIRS] for j in range(6)]}
    saved=json.loads((ROOT/'data/field_coefficients.json').read_text())
    require(saved==expected,'saved physical coefficient data differ from direct Fourier expansion')
    return {'raw_carrier':'H[r,j]=q^(r*j), q=(1+i sqrt(3))/2',
            'normalization':'U=H/sqrt(6); w=z/sqrt(6)',
            'residual':'R_j=|sum_r q^(-r*j) z_r|^2-6=36(p_j-1/6)',
            'pair_coefficients':'q^(j*(k-i)), 0<=i<k<=5'}


def load_centers():
    data=json.loads((ROOT/'data/centers.json').read_text())
    raw=[];boxes=[]
    require(len(data['centers'])==48,'expected 48 supplied centers')
    for c,entry in enumerate(data['centers']):
        require(len(entry['signs'])==len(entry['t'])==5,'center dimensions')
        z=[(F(1),F(0))]
        for sign,(p,q) in zip(entry['signs'],entry['t']):
            require(sign in (-1,1) and isinstance(p,int) and isinstance(q,int),'center encoding')
            require(q>0 and -q<=p<=q,'center chart guard')
            den=p*p+q*q
            x=F(sign*(q*q-p*p),den);y=F(sign*2*p*q,den)
            require(x*x+y*y==1,'center is not on the unit circle')
            z.append((x,y))
        raw.append(z)
        boxes.append([frac_interval(x)+frac_interval(y) for x,y in z])
    return raw,boxes


def box_geometry(lo,hi,chart):
    z=[(SCALE,SCALE,0,0)];rad=[0]
    for i,(a,b) in enumerate(zip(lo,hi)):
        require(-GRID<=a<b<=GRID,'invalid closed chart box')
        c=a+b;den=4*GRID*GRID+c*c
        re=ri(4*GRID*GRID-c*c,den);im=ri(4*GRID*c,den)
        if (chart>>i)&1:
            re=(-re[1],-re[0]);im=(-im[1],-im[0])
        z.append(re+im)
        m=max(a,-b,0)
        rad.append(ceildiv((b-a)*GRID*SCALE,GRID*GRID+m*m))
    return z,rad


def accept_exclusion(weights,lo,hi,chart):
    W=combined_coefficients(tuple(weights));z,rad=box_geometry(lo,hi,chart)
    grad=[[0,0] for _ in range(6)];hlo=0;rem=0
    for (i,k),(coeff,mod) in zip(PAIRS,W):
        y=cmul(coeff,cmul(z[i],iconj(z[k])))
        hlo+=2*y[0]
        grad[i][0]-=2*y[3];grad[i][1]-=2*y[2]
        grad[k][0]+=2*y[2];grad[k][1]+=2*y[3]
        r=rad[i]+rad[k]
        rem+=ceildiv(mod*r*r,SCALE*SCALE)
    lin=sum(ceildiv(absup(grad[i])*rad[i],SCALE) for i in range(1,6))
    l1=sum(abs(x) for x in weights)
    lower=hlo-lin-rem
    threshold=ceildiv(36*SCALE*DELTA.numerator*l1,DELTA.denominator)
    gap=lower-threshold
    require(gap>0,f'failed exclusion: chart={chart}, weights={weights}, gap={gap}, box={list(zip(lo,hi))}')
    return lower,l1,gap


def accept_inclusion(center,lo,hi,chart,center_boxes):
    require(0<=center<len(center_boxes),'invalid inclusion center')
    z,rad=box_geometry(lo,hi,chart)
    bound2=0
    for i,(a,b) in enumerate(zip(z,center_boxes[center])):
        difference=(a[0]-b[1],a[1]-b[0],a[2]-b[3],a[3]-b[2])
        bound2+=(cabsup(difference)+rad[i])**2
    # ||z/sqrt(6)-c/sqrt(6)||_2 < rho implies projector distance < rho.
    gap=6*SCALE*SCALE*RHO.numerator**2-RHO.denominator**2*bound2
    require(gap>0,f'failed inclusion: chart={chart}, center={center}, box={list(zip(lo,hi))}')
    return gap


def exact_graph(raw,compare_saved=True):
    n=len(raw);orth=[set() for _ in raw];ub=[set() for _ in raw]
    smallest_orth_margin=None;smallest_ub_margin=None
    for a in range(n):
        for b in range(a,n):
            re=sum(x*u+y*v for (x,y),(u,v) in zip(raw[a],raw[b]))
            im=sum(x*v-y*u for (x,y),(u,v) in zip(raw[a],raw[b]))
            p=(re*re+im*im)/36
            if p<=ORTH_THRESHOLD:
                orth[a].add(b);orth[b].add(a)
            if abs(p-F(1,6))<=UB_THRESHOLD:
                ub[a].add(b);ub[b].add(a)
            om=abs(p-ORTH_THRESHOLD);bm=abs(abs(p-F(1,6))-UB_THRESHOLD)
            smallest_orth_margin=om if smallest_orth_margin is None else min(om,smallest_orth_margin)
            smallest_ub_margin=bm if smallest_ub_margin is None else min(bm,smallest_ub_margin)
    require(all(i not in orth[i] for i in range(n)),'orthogonality graph has a loop')
    require(all(i not in ub[i] for i in range(n)),'unbiasedness graph has a loop')
    checks=0;triangles=0;anchor_records=[]
    for anchor in range(n):
        ids=sorted(ub[anchor]);bad4=0;ts=[]
        for s in combinations(ids,3):
            if all(j in orth[i] for i,j in combinations(s,2)):
                triangles+=1;ts.append(list(s))
        for s in combinations(ids,4):
            checks+=1
            if all(j in orth[i] for i,j in combinations(s,2)):
                bad4+=1
        require(bad4==0,f'possible graph 4+1 at anchor {anchor}')
        anchor_records.append({'anchor':anchor,'ub_neighbors':ids,'orthogonal_triangles':ts,'four_cliques':bad4})
    graph={'orth_threshold':str(ORTH_THRESHOLD),'ub_threshold':str(UB_THRESHOLD),
           'orth_neighbors':[sorted(x) for x in orth],
           'ub_neighbors':[sorted(x) for x in ub],
           'anchors':anchor_records,'four_subsets_checked':checks,'three_cliques':triangles}
    if compare_saved:
        saved=json.loads((ROOT/'data/compatibility_graph.json').read_text())
        require(saved==graph,'saved compatibility graph is not the exactly reconstructed graph')
    # Report small rational lower bounds instead of several-hundred-digit fractions.
    require(smallest_orth_margin>F(1,250),'orth threshold margin too small')
    require(smallest_ub_margin>F(1,125),'unbiased threshold margin too small')
    return graph,{'orth_edges':sum(map(len,orth))//2,'ub_edges':sum(map(len,ub))//2,
                  'four_subsets_checked':checks,'four_cliques':0,'three_cliques':triangles,
                  'orth_threshold_margin_lower_bound':'1/250',
                  'ub_threshold_margin_lower_bound':'1/125'}


def verify_forest(center_boxes,chart_start=0,chart_end=32,check_leaves=True):
    code=gzip.decompress((ROOT/'data/cover.bin.gz').read_bytes())
    payload=gzip.decompress((ROOT/'data/multipliers.i16.gz').read_bytes())
    require(len(payload)%12==0,'truncated multiplier record')
    multipliers=list(struct.iter_unpack('<6h',payload))
    ix=mi=branches=leaves=excluded=included=verified=0;maxdepth=0
    labels=Counter();minratio=None;minincl=None;perchart=[];examples={}
    def walk(lo,hi,chart,depth):
        nonlocal ix,mi,branches,leaves,excluded,included,verified,maxdepth,minratio,minincl
        require(ix<len(code),'truncated phase cover')
        op=code[ix];ix+=1;maxdepth=max(maxdepth,depth)
        require(depth<=120,'excessive tree depth')
        if op<5:
            branches+=1
            require((lo[op]+hi[op])%2==0,'non-dyadic split')
            mid=(lo[op]+hi[op])//2
            require(lo[op]<mid<hi[op],'degenerate split')
            h=hi[op];hi[op]=mid;walk(lo,hi,chart,depth+1);hi[op]=h
            l=lo[op];lo[op]=mid;walk(lo,hi,chart,depth+1);lo[op]=l
            return
        weights=None;center=None
        if 32<=op<38:
            weights=[0]*6;weights[op-32]=1
        elif 48<=op<54:
            weights=[0]*6;weights[op-48]=-1
        elif op==64:
            require(mi<len(multipliers),'missing separating multiplier')
            weights=list(multipliers[mi]);mi+=1
        elif 128<=op<176:
            center=op-128;labels[center]+=1
        else:
            raise ValueError(f'invalid cover opcode {op}')
        leaves+=1
        if weights is not None:excluded+=1
        else:included+=1
        active=chart_start<=chart<chart_end and check_leaves
        if active:
            if weights is not None:
                lower,l1,gap=accept_exclusion(weights,lo,hi,chart)
                ratio=F(lower,l1)
                minratio=ratio if minratio is None else min(minratio,ratio)
                if 'exclusion' not in examples:
                    examples['exclusion']={'weights':weights,'lo':list(lo),'hi':list(hi),'chart':chart}
            else:
                gap=accept_inclusion(center,lo,hi,chart,center_boxes)
                minincl=gap if minincl is None else min(minincl,gap)
                if 'inclusion' not in examples:
                    examples['inclusion']={'center':center,'lo':list(lo),'hi':list(hi),'chart':chart}
            verified+=1
    for chart in range(32):
        before=leaves
        walk([-GRID]*5,[GRID]*5,chart,0)
        perchart.append(leaves-before)
        if chart_start<=chart<chart_end and check_leaves:
            print(f'closed phase chart {chart:02d}: PASS ({leaves-before} leaves)',flush=True)
    require(ix==len(code),'unused cover bytes: too many roots or trailing data')
    require(mi==len(multipliers),'unused multipliers')
    require(leaves==branches+32,'not a full forest of 32 binary trees')
    require(set(labels)==set(range(48)),'not all supplied centers represented in cover')
    meta=json.loads((ROOT/'data/coverage.json').read_text())
    require(meta['closed_charts']==32 and meta['delta']==str(DELTA) and meta['rho']==str(RHO),'coverage parameter mismatch')
    actual={'nodes':ix,'branches':branches,'leaves':leaves,'excluded_leaves':excluded,
            'inclusion_leaves':included,'dual_multipliers':mi,'max_depth':maxdepth,'leaves_per_chart':perchart}
    require(meta['forest']==actual,'coverage counts mismatch')
    return dict(actual,verified_leaves=verified,center_leaf_counts=dict(sorted(labels.items())),
                min_exclusion_lower_bound_per_multiplier_l1=(str(minratio/SCALE) if minratio else None),
                min_inclusion_integer_slack=minincl),examples


def scalar_implications_check():
    require(F(6)<9,'sqrt(6)<3')
    require(2*RHO==ORTH_THRESHOLD,'projector triangle bound')
    require(2*RHO+DELTA<UB_THRESHOLD,'energy robustness graph margin')
    require((DELTA/8)**2==F(1,67108864),'half-ball E41 gap')
    require(F(8,9)<1,'rational Fourier-deformation distance bound')
    # Explicit CRT equivalence of F2 tensor F3 with F6.
    rowmap=[(3*a+2*r)%6 for a in range(2) for r in range(3)]
    colmap=[(3*s+4*j)%6 for s in range(2) for j in range(3)]
    require(sorted(rowmap)==sorted(colmap)==list(range(6)),'CRT permutations')
    for a in range(2):
        for r in range(3):
            for s in range(2):
                for j in range(3):
                    require((rowmap[3*a+r]*colmap[3*s+j])%6==(3*a*s+2*r*j)%6,'CRT matrix identity')
    return {'delta':str(DELTA),'rho':str(RHO),'carrier_half_radius':str(DELTA/2),
            'uniform_actual_16_probability_gap':'1/67108864',
            'parameter_dependent_gap':'((1/1024-d)/4)^2, 0<=d<=1/1024',
            'CRT_row_permutation':rowmap,'CRT_column_permutation':colmap}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',default=None,help='optional path for a JSON receipt; nothing is written by default')
    parser.add_argument('--charts',default='0:32',help='partial acceptance range; default checks ALL 32 charts')
    args=parser.parse_args()
    a,b=map(int,args.charts.split(':'))
    require(0<=a<b<=32,'invalid chart range')
    start=time.time()
    physical=physical_coefficients_check();raw,center_boxes=load_centers()
    graph,graph_report=exact_graph(raw)
    constants=scalar_implications_check()
    print('Exact physical coefficients, rational centers, compatibility graph and scalar bounds: PASS',flush=True)
    forest,examples=verify_forest(center_boxes,a,b)
    report={'status':'PASS' if (a,b)==(0,32) else 'PASS_PARTIAL_CHARTS',
            'command':'python3 verify.py --charts '+args.charts,
            'python':sys.version,'platform':platform.platform(),
            'arithmetic':'unbounded Python integers, exact Fractions, outward fixed-point intervals',
            'dependencies':'Python standard library only','floating_point_in_acceptance':False,
            'scale':SCALE,'dyadic_grid':GRID,'physical_coefficients':physical,
            'graph':graph_report,'constants':constants,'forest':forest,
            'verified_charts':list(range(a,b)),
            'data_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((ROOT/'data').iterdir()) if p.is_file()},
            'elapsed_seconds':time.time()-start,
            'scope':'Every physical carrier with monomial/permutation matched Fourier projector distance <=1/1024; EVERY admissible quartet and EVERY pure anchor.',
            'not_proved':['coverage of every strict a=-1 carrier','coverage of an entire non-Fourier carrier component outside the stated distance domain','global 4+1 emptiness']}
    if args.output:
        Path(args.output).write_text(json.dumps(report,indent=2)+'\n')
    print(f"{report['status']}: {forest['verified_leaves']} leaf checks; exhaustive 48-label 4+1 rejection.",flush=True)


if __name__=='__main__':
    try:
        main()
    except ValueError as error:
        print('FAIL:',error,flush=True)
        raise SystemExit(1)
