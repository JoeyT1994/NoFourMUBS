#!/usr/bin/env python3
"""Exact finite checks for FiniteCommonRayAlgebra.md; not a global solver.

Run with cwd = this folder: python3 verify.py
Checks, over F_193513, for four frozen type-II control matrices (two with
m=0, two with m=1) and a modular Tao matrix (m=45): the complete rank table
of all 4096 subsets of the twelve covectors, the dependent six-sets, every
projective boundary point with its rank-ten Jacobian, the Euler count
-252+2m, the logarithmic-gradient identities, and all 72 spurious solutions.
Also: exact characteristic-zero Tao minor counts, rejection of F6 (zero
3-minors) and of a perturbed non-type-II matrix, and the two interval
certificates for the single-minor physical control of Section 9.
The written proof supplies the universal statements.
"""
import argparse
import hashlib
import itertools as it
import json
import sys
from math import comb
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import physical_control
import active_control


def rank(rows, p):
    if not rows:
        return 0
    a = [[x % p for x in row] for row in rows]
    r = 0
    for j in range(len(a[0])):
        pivot = next((i for i in range(r,len(a)) if a[i][j]),None)
        if pivot is None:
            continue
        a[r],a[pivot] = a[pivot],a[r]
        inv = pow(a[r][j],-1,p)
        a[r] = [x*inv%p for x in a[r]]
        for i in range(r+1,len(a)):
            if a[i][j]:
                q=a[i][j]
                a[i]=[(x-q*y)%p for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a):
            break
    return r


def det(a,p):
    if len(a)==1:
        return a[0][0]%p
    return sum((-1)**j*a[0][j]*det([row[:j]+row[j+1:] for row in a[1:]],p)
               for j in range(len(a)))%p


def mm(a,b,p):
    return [[sum(x*y for x,y in zip(row,col))%p for col in zip(*b)] for row in a]


def star(a,p):
    return [[pow(x,-1,p) for x in col] for col in zip(*a)]


def zero_minors(h,k,p):
    out=[]
    for rs in it.combinations(range(6),k):
        for cs in it.combinations(range(6),k):
            if not det([[h[i][j]for j in cs]for i in rs],p):
                out.append([list(rs),list(cs)])
    return out


def nullvector(rows,p):
    """Return the normalized generator of a checked one-dimensional kernel."""
    a=[[x%p for x in row]for row in rows];n=len(a[0]);pivots=[]
    for j in range(n):
        r=len(pivots)
        pivot=next((i for i in range(r,len(a))if a[i][j]),None)
        if pivot is None:continue
        a[r],a[pivot]=a[pivot],a[r]
        inv=pow(a[r][j],-1,p);a[r]=[x*inv%p for x in a[r]]
        for i in range(len(a)):
            if i!=r and a[i][j]:
                q=a[i][j];a[i]=[(x-q*y)%p for x,y in zip(a[i],a[r])]
        pivots.append(j)
    free=[j for j in range(n)if j not in pivots]
    assert len(free)==1
    x=[0]*n;x[free[0]]=1
    for i,j in enumerate(pivots):x[j]=-a[i][free[0]]%p
    assert all(sum(v*y for v,y in zip(row,x))%p==0 for row in rows)
    scale=pow(next(v for v in x if v),-1,p)
    return [v*scale%p for v in x]


def projective_boundary(h,dependent,p):
    points=[]
    for edge in dependent:
        coord={i for i in edge['indices']if i<6}
        J=[i-6 for i in edge['indices']if i>=6]
        I=[i for i in range(6)if i not in coord]
        IC=sorted(coord);JC=[j for j in range(6)if j not in J]
        assert len(I)==len(J) and len(I) in (2,4)
        zz=nullvector([[pow(h[i][j],-1,p)for i in I]for j in J],p)
        ww=nullvector([[h[i][j]for i in IC]for j in JC],p)
        assert all(zz) and all(ww)
        z=[0]*6;w=[0]*6
        for i,v in zip(I,zz):z[i]=v
        for i,v in zip(IC,ww):w[i]=v
        li=[sum(z[i]*pow(h[i][j],-1,p)for i in range(6))%p for j in range(6)]
        gg=[sum(w[i]*h[i][j]for i in range(6))%p for j in range(6)]
        assert [j for j in range(6)if not li[j]]==J
        assert [j for j in range(6)if not gg[j]]==JC
        assert all(z[i]*w[i]%p==0 for i in range(6))
        assert all(li[j]*gg[j]%p==0 for j in range(6))
        alpha=I[0];beta=IC[0]
        assert z[alpha]==w[beta]==1
        zi=[i for i in range(6)if i!=alpha]
        wi=[i for i in range(6)if i!=beta]
        jac=[]
        for i in range(1,6):
            jac.append([int(k==i)*w[i]-int(k==0)*w[0] for k in zi]
                       +[int(k==i)*z[i]-int(k==0)*z[0] for k in wi])
        for j in range(5):
            jac.append([pow(h[k][j],-1,p)*gg[j]-6*int(k==0)*w[0]for k in zi]
                       +[h[k][j]*li[j]-6*int(k==0)*z[0]for k in wi])
        assert rank(jac,p)==10
        points.append([z,w])
    assert len({tuple(z+w)for z,w in points})==len(points)
    encoded=json.dumps(points,separators=(',',':')).encode()
    return {'projective_boundary_count':len(points),
            'boundary_points_sha256':hashlib.sha256(encoded).hexdigest(),
            'all_boundary_jacobians_rank_ten':True}


def type_ii(h,p):
    return (all(x%p for row in h for x in row)
            and mm(h,star(h,p),p)==[[6*int(i==j)for j in range(6)]for i in range(6)])


def arrangement(h,p):
    assert type_ii(h,p) and not zero_minors(h,3,p)
    zm=zero_minors(h,2,p);m=len(zm)
    covectors=[[int(i==j)for j in range(6)]for i in range(6)]+star(h,p)
    weights=[-1]*6+[1]*6
    ranks=[];dependent=[];chi=0
    for mask in range(1<<12):
        indices=[i for i in range(12)if mask>>i&1]
        r=rank([covectors[i]for i in indices],p)
        ranks.append(r)
        k=len(indices)
        if k<=5:
            assert r==k
        elif k==6 and r<6:
            assert r==5
            weight=sum(weights[i]for i in indices)
            assert abs(weight)==2
            dependent.append({'indices':indices,'weight':weight})
        elif k>=7:
            assert r==6
        chi+=(-1)**k*(6-r)
    assert len(dependent)==2*m and chi==-252+2*m
    assert m<=45
    out={'zero_2_minors':m,'zero_3_minors':0,'subsets_checked':4096,
            'rank_table_sha256':hashlib.sha256(bytes(ranks)).hexdigest(),
            'dependent_six_sets':dependent,'Euler_characteristic':chi,
            'length_from_proved_formula':-chi,
            'residual_length_from_proved_formula':-chi-72,
            'quartet_rank_bound_from_proved_formula':-chi-84}
    out.update(projective_boundary(h,dependent,p))
    assert out['projective_boundary_count']==2*m
    return out


def master_identity(h,x,p):
    li=[sum(xi*pow(hij,-1,p)for xi,hij in zip(x,col))%p for col in zip(*h)]
    if not all(x) or not all(li):
        return None
    g=[sum(hij*pow(xi,-1,p)for xi,hij in zip(x,col))%p for col in zip(*h)]
    F=[(a*b-6)%p for a,b in zip(li,g)]
    R=[(sum(pow(h[i][j],-1,p)*pow(li[j],-1,p)for j in range(6))-pow(x[i],-1,p))%p
       for i in range(6)]
    assert sum(F)%p==0 and sum(xi*ri for xi,ri in zip(x,R))%p==0
    assert F==[-li[j]*sum(h[i][j]*R[i]for i in range(6))%p for j in range(6)]
    assert R==[-pow(6,-1,p)*sum(pow(h[i][j],-1,p)*pow(li[j],-1,p)*F[j]for j in range(6))%p
               for i in range(6)]
    return F


def check_fakes(h,p,sqrt3):
    assert sqrt3*sqrt3%p==3
    seen=set()
    for t in [(-2+sqrt3)%p,(-2-sqrt3)%p]:
        assert (t*t+4*t+1)%p==0 and t!=1
        for j in range(6):
            for k in range(6):
                x=[h[i][j]*pow(h[0][j],-1,p)*pow(t,int(i==k)-int(k==0),p)%p for i in range(6)]
                assert x[0]==1 and master_identity(h,x,p)==[0]*6
                seen.add(tuple(x))
    assert len(seen)==72
    rejected=0
    for offset in range(1,10):
        x=[1]+[offset+j*j+2 for j in range(1,6)]
        F=master_identity(h,x,p)
        if F is not None and any(F):
            rejected+=1
    assert rejected
    return {'distinct_fake_points':72,'generic_noncritical_controls':rejected}


TAO_EXP=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
         [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]


def tao_characteristic_zero():
    # Exact arithmetic in Z[w]/(w^2+w+1), with no modular inference.
    roots=[(1,0),(0,1),(-1,-1)]
    def add(x,y):return (x[0]+y[0],x[1]+y[1])
    def mul(x,y):return (x[0]*y[0]-x[1]*y[1],x[0]*y[1]+x[1]*y[0]-x[1]*y[1])
    def determinant(a):
        total=(0,0)
        for perm in it.permutations(range(len(a))):
            sign=(-1)**sum(perm[i]>perm[j]for i in range(len(a))for j in range(i+1,len(a)))
            term=(sign,0)
            for i,j in enumerate(perm):term=mul(term,a[i][j])
            total=add(total,term)
        return total
    h=[[roots[e]for e in row]for row in TAO_EXP]
    for i in range(6):
        for j in range(6):
            total=(0,0)
            for k in range(6):total=add(total,roots[(TAO_EXP[i][k]-TAO_EXP[j][k])%3])
            assert total==(6*int(i==j),0)
    counts={}
    for k in (2,3):
        counts[str(k)]=sum(determinant([[h[i][j]for j in cs]for i in rs])==(0,0)
                          for rs in it.combinations(range(6),k)for cs in it.combinations(range(6),k))
    assert counts=={'2':45,'3':0}
    return {'field':'Q[w]/(w^2+w+1)','type_II_verified':True,'zero_minor_counts':counts}


def verify():
    packet=json.loads((HERE/'controls.json').read_text());p=packet['prime']
    results={}
    for control in packet['controls']:
        assert type_ii(control['H'],p)
        result=arrangement(control['H'],p)
        assert result['zero_2_minors']==control['zero_2_minors']
        result.update(check_fakes(control['H'],p,packet['sqrt3']))
        results[control['name']]=result
        print('PASS',control['name'],'m=',result['zero_2_minors'],'chi=',result['Euler_characteristic'],flush=True)
    tao_exact=tao_characteristic_zero()
    w=14596
    assert (w*w+w+1)%p==0 and w!=1
    tao=[[pow(w,e,p)for e in row]for row in TAO_EXP]
    result=arrangement(tao,p);result.update(check_fakes(tao,p,packet['sqrt3']))
    assert result['zero_2_minors']==45 and result['Euler_characteristic']==-162
    results['tao_modular_matroid']=result
    print('PASS tao_modular m= 45 chi= -162',flush=True)
    z=-w*w%p
    assert pow(z,6,p)==1 and pow(z,3,p)==p-1
    fourier=[[pow(z,i*j,p)for j in range(6)]for i in range(6)]
    assert type_ii(fourier,p) and zero_minors(fourier,3,p)
    try:arrangement(fourier,p)
    except AssertionError:pass
    else:raise AssertionError('Fourier must fail the theorem hypothesis')
    wrong=[row[:]for row in packet['controls'][0]['H']];wrong[1][1]=(wrong[1][1]+1)%p
    assert not type_ii(wrong,p)
    assert sum((-1)**k*comb(12,k)*(6-k)for k in range(6))==-252
    for m in range(46):
        assert 252-2*m-72==180-2*m and 180-2*m-12==168-2*m
    return {'prime':p,'controls':results,'tao_characteristic_zero':tao_exact,
            'physical_control_active_reconstruction':active_control.verify(),
            'physical_control_archive_CWT_crosscheck':physical_control.verify(),
            'Fourier_hypothesis_rejected':True,'altered_carrier_rejected':True}


if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    parser=argparse.ArgumentParser();parser.add_argument('--emit',action='store_true');args=parser.parse_args()
    result=verify()
    if args.emit:
        print(json.dumps(result,indent=2,sort_keys=True,default=str))
    print('PASS exact minor-boundary finite-algebra controls; quartet exclusion OPEN')
