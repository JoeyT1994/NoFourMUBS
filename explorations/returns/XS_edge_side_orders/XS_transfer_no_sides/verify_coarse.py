#!/usr/bin/env python3
"""Exact coarse Fourier-distance checks for all supplied XS T3 boxes.

Only standard-library arithmetic is used for acceptance. Binary64 selects a
Fourier reference among finitely many choices; all reference choices are
subsequently verified by exact rational inequalities. No stored hcols, vrows,
wind_h or wind_v values, side angles, root solve, atlas or Stage C is used.

PROOF INPUT (not checked here): source C1 encloses horizontal phase lifts by
P + U w + nu, with ||nu|| <= n. The check is valid on the intersection of each
box with the source ball. Vertex calculations on the whole box upper-bound
the convex norm of P+Uw−Fourier; no C1 assertion outside its source ball is made.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations, product
from math import pi, fsum, isqrt
import argparse, hashlib, json, time


def dyadic(x):
    return F.from_float(float.fromhex(x))


def mat(a, n, m):
    assert len(a) == n*m
    return [a[i*m:(i+1)*m] for i in range(n)]


def flatten(a):
    return [x for row in a for x in row]


def act(v, g):
    a=mat(list(v),6,6)
    if g in ('T','conjT'): a=[list(row) for row in zip(*a)]
    if g in ('conj','conjT'): a=[[-x for x in row] for row in a]
    assert g in ('id','T','conj','conjT')
    return flatten(a)


def reorder(v, R, C):
    assert sorted(R) == sorted(C) == list(range(6))
    return [v[6*i+j] for i in R for j in C]


def h36(a):
    """36 times horizontal projection, over the integers/rationals."""
    assert len(a)==36
    r=[sum(a[6*i:6*i+6]) for i in range(6)]
    c=[sum(a[6*i+j] for i in range(6)) for j in range(6)]
    s=sum(r)
    return [36*a[6*i+j]-6*r[i]-6*c[j]+s for i in range(6) for j in range(6)]


def choose_reference(P, group):
    """Find an untrusted reference; exact checks below validate its use."""
    g=group['g']; I=group['rows']; J=group['cols']
    PG=act([float(x) for x in P],g)
    best=None
    for rc in permutations([i for i in range(6) if i not in I]):
        for cc in permutations([j for j in range(6) if j not in J]):
            R=I+list(rc); C=J+list(cc); X=reorder(PG,R,C)
            Xd=[X[6*i+j]-X[6*i]-X[j]+X[0] for i in range(6) for j in range(6)]
            N=[round(((i*j)*pi/3-Xd[6*i+j])/(2*pi)) for i in range(6) for j in range(6)]
            b=[6*N[6*i+j]-i*j for i in range(6) for j in range(6)]
            h=h36([X[k]+pi*b[k]/3 for k in range(36)])
            score=fsum(v*v for v in h)/1296
            candidate=(score,g,R,C,N)
            if best is None or candidate<best: best=candidate
    _,g,R,C,N=best
    return {'g':g,'rows':R,'cols':C,'wind36':N}


def atan_interval(inv,n):
    """Alternating series interval for arctan(1/inv), using n terms."""
    s=sum((F((-1)**k,(2*k+1)*inv**(2*k+1)) for k in range(n)),F(0))
    next_term=F((-1)**n,(2*n+1)*inv**(2*n+1))
    return min(s,s+next_term),max(s,s+next_term)


def pi_interval():
    """Machin's identity, with exact alternating-series errors."""
    # tan(4 arctan(1/5)-arctan(1/239))=1 exactly, angle in (0,pi/2).
    tangent=F(1,5)
    tangent=2*tangent/(1-tangent*tangent)
    tangent=2*tangent/(1-tangent*tangent)
    tangent=(tangent-F(1,239))/(1+tangent*F(1,239))
    assert tangent==1
    a,b=atan_interval(5,70); c,d=atan_interval(239,24)
    lo,hi=16*a-4*d,16*b-4*c
    Q=10**80
    L=(lo.numerator*Q)//lo.denominator
    U=-((-hi.numerator*Q)//hi.denominator)
    assert F(L,Q)<lo<hi<F(U,Q)
    assert U-L==1
    return L,U,Q


def ldlt_positive(A):
    """Exact Sylvester/LDL^T positive-definiteness test."""
    n=len(A); L=[[F(0) for _ in range(n)] for _ in range(n)]; D=[]
    for i in range(n):
        d=A[i][i]-sum(L[i][k]**2*D[k] for k in range(i))
        assert d>0, ('LDL pivot not positive',i,d)
        D.append(d); L[i][i]=F(1)
        for j in range(i+1,n):
            L[j][i]=(A[j][i]-sum(L[j][k]*L[i][k]*D[k] for k in range(i)))/d
    return D


def edge_subset(edge):
    assert edge['chart']=='F6-012'
    assert all(dyadic(x)==0 for x in edge['q0'])
    W=[[F(1),F(-1,2),F(-1,2),F(0)],
       [F(-1,2),F(7,4),F(1,4),F(0)],
       [F(-1,2),F(1,4),F(7,4),F(0)],
       [F(0),F(0),F(0),F(1)]]
    M=mat([dyadic(x) for x in edge['Mth']],4,4)
    M[3]=[x/24 for x in M[3]]
    A=[[sum(M[k][i]*W[k][l]*M[l][j] for k in range(4) for l in range(4)) for j in range(4)] for i in range(4)]
    lam=1+F(1,10**14)
    piv=ldlt_positive([[(lam if i==j else 0)-A[i][j] for j in range(4)] for i in range(4)])
    r=dyadic(edge['r'])
    assert r*r*lam<F(1,25)
    # The printed radius bound .11500000000001 is also verified exactly.
    rad=F(11500000000001,10**14)
    assert r*r*lam<rad*rad
    return {'status':'CERTIFIED','matrix_upper_bound':str(lam),'radius_upper_bound':str(rad),'contained_in_W_radius':str(F(1,5)),'r_as_exact_rational':str(r),'x_radius_as_exact_rational':str(dyadic(edge['x_radius'])),'LDL_positive':True}


def verify_source(source,pibounds):
    Lpi,Upi,Qpi=pibounds
    raw=dict(source); claimed=raw.pop('selected_data_sha256')
    actual=hashlib.sha256(json.dumps(raw,sort_keys=True,separators=(',',':')).encode()).hexdigest()
    assert actual==claimed
    assert source['gauge']=='hor'
    groups=source['groups']
    prohibited={'hcols','vrows','wind_h','wind_v'}
    assert all(not prohibited.intersection(g) for g in groups)
    P=[dyadic(x) for x in source['P']]
    U=mat([dyadic(x) for x in source['U']],36,4)
    r,n=dyadic(source['r']),dyadic(source['n'])
    assert r>0 and n>=0
    ref=choose_reference(P,groups[0])
    R,C,g,N=ref['rows'],ref['cols'],ref['g'],ref['wind36']
    P=reorder(act(P,g),R,C)
    Ucol=[reorder(act([row[k] for row in U],g),R,C) for k in range(4)]
    boxes=[b for group in groups for b in group['boxes']]
    assert all(len(b)==5 and isinstance(b[0],int) and b[0]>=0 for b in boxes)
    maxlev=max(b[0] for b in boxes); scale=2**maxlev
    UR=[[v*r/scale for v in col] for col in Ucol]
    denom=max(x.denominator for x in P+flatten(UR))
    assert denom&(denom-1)==0
    assert all(denom%x.denominator==0 for x in P+flatten(UR))
    pI=h36([int(x*denom) for x in P])
    uI=[h36([int(x*denom) for x in col]) for col in UR]
    bI=h36([6*N[6*i+j]-i*j for i in range(6) for j in range(6)])
    bb=sum(x*x for x in bI)
    common_den=11664*denom**2*Qpi**2
    bound_den=10**6
    cache={}
    def vertex_num(z):
        if z in cache:return cache[z]
        a=[pI[k]+sum(uI[j][k]*z[j] for j in range(4)) for k in range(36)]
        aa=sum(x*x for x in a); ab=sum(x*y for x,y in zip(a,bI))
        pi_used=Upi if ab>=0 else Lpi
        # Exact upper bound for ||hor(P+Uw+2piN−pi i j/3)||^2.
        num=9*aa*Qpi**2+6*ab*denom*pi_used*Qpi+bb*denom**2*Upi**2
        assert num>=0
        cache[z]=num
        return num
    groups_out=[]
    maxnum=0
    for gi,group in enumerate(groups):
        worst=0
        for b in group['boxes']:
            lev=b[0]; step=2**(1+maxlev-lev)
            lo=[-scale+i*step for i in b[1:]]
            for eps in product((0,1),repeat=4):
                v=tuple(x+step*e for x,e in zip(lo,eps))
                num=vertex_num(v)
                worst=max(worst,num)
        maxnum=max(maxnum,worst)
        # Find a rational upper bound with step 10^-6; integer search controls acceptance.
        lo=0; hi=150000
        while lo+1<hi:
            mid=(lo+hi)//2; bnd=F(mid,bound_den)-n
            if bnd>0 and worst*bnd.denominator**2<common_den*bnd.numerator**2:hi=mid
            else:lo=mid
        bnd=F(hi,bound_den)-n
        assert bnd>0 and worst*bnd.denominator**2<common_den*bnd.numerator**2
        assert F(hi,bound_den)<F(3,20)
        groups_out.append({'group':gi,'boxes':len(group['boxes']),'distance_bound':str(F(hi,bound_den))})
    bound=max(F(g['distance_bound']) for g in groups_out)
    assert bound<=F(128601,10**6)
    return {'seed':source['seed'],'status':'CERTIFIED conditional on source C1','boxes':len(boxes),'vertices':len(cache),'coarse_distance_bound':str(bound),'reference':ref,'groups':groups_out,'selected_data_sha256':actual}


def main():
    p=argparse.ArgumentParser();p.add_argument('--data',type=Path,default=Path(__file__).with_name('coarse_data.json'));p.add_argument('--output',type=Path);args=p.parse_args()
    start=time.monotonic();data=json.loads(args.data.read_text());assert data['format']=='XS-coarse-distance-v1'
    pibounds=pi_interval()
    result={'status':'CERTIFIED conditional on source C1 and W theorem inputs','data_sha256':hashlib.sha256(args.data.read_bytes()).hexdigest(),'pi_lower':str(F(pibounds[0],pibounds[2])),'pi_upper':str(F(pibounds[1],pibounds[2])),'sources':[verify_source(s,pibounds) for s in data['sources']],'edge_subset':edge_subset(data['edge'])}
    assert len(result['sources'])==4
    assert sum(len(s['groups']) for s in result['sources'])==22
    assert sum(s['boxes'] for s in result['sources'])==4528
    result['elapsed_seconds_informational']=time.monotonic()-start
    print('CERTIFIED: 4,528 coarse-distance box bounds, conditional on the four source C1 enclosures.')
    for s in result['sources']:print(' seed',s['seed'],':',s['boxes'],'boxes, distance <',s['coarse_distance_bound'])
    print('CERTIFIED: exact edge ellipsoid is contained in W radius 1/5.')
    print('No original side-order or side-winding field was read.')
    print('This does not replay source C1 or parameter-ellipsoid transfer membership.')
    if args.output:args.output.write_text(json.dumps(result,indent=2)+'\n')

if __name__=='__main__':main()
