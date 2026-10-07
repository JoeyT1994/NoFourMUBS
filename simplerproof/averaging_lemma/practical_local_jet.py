"""Exact second jet at F6 for a practical cutoff-5 enclosure.

Uses a normal graph containing all nearby Hadamards, without assuming that
the full Hadamard set is a smooth manifold. No finite-radius bound yet.
"""
from collections import Counter
from fractions import Fraction
from itertools import combinations
from pathlib import Path
import importlib.util
import json
import sys
import sympy as S

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierCornerRigidity'))
from exact_algebra import determinant_terms


def run():
    spec=importlib.util.spec_from_file_location('tangent_source',ROOT/'RouteC/averaging/task2_hessian_exact.py')
    tangent=importlib.util.module_from_spec(spec);spec.loader.exec_module(tangent)
    basis=[S.Matrix(tangent.gauge_project(v)) for v in tangent.tangent_basis()]
    T=S.Matrix.hstack(*(v.reshape(36,1) for v in basis))
    monomials=[(i,j) for i in range(4) for j in range(i,4)]
    cos=[S.Rational(1),S.Rational(1,2),S.Rational(-1,2),S.Rational(-1),S.Rational(-1,2),S.Rational(1,2)]
    sin3=[0,S.Rational(1,2),S.Rational(1,2),0,S.Rational(-1,2),S.Rational(-1,2)]
    J=[];F2=[]
    for i,j in combinations(range(6),2):
        jr=[S.Integer(0)]*36;ji=jr.copy()
        f2r=[S.Integer(0)]*10;f2i=f2r.copy()
        for c in range(6):
            k=(i-j)*c%6
            jr[6*i+c]=-sin3[k];jr[6*j+c]=sin3[k]
            ji[6*i+c]=cos[k];ji[6*j+c]=-cos[k]
            dv=[T[6*i+c,a]-T[6*j+c,a] for a in range(4)]
            for m,(a,b) in enumerate(monomials):
                q=dv[a]*dv[b]*(1 if a==b else 2)
                f2r[m]-=cos[k]*q/6
                f2i[m]-=sin3[k]*q/2
        J += [jr,ji];F2 += [f2r,f2i]
    J=S.Matrix(J);F2=S.Matrix(F2)
    gauge=[]
    for i in range(6):gauge.append([int(r//6==i) for r in range(36)])
    for j in range(5):gauge.append([int(r%6==j) for r in range(36)])
    A=J.col_join(S.Matrix(gauge)).col_join(T.T)
    rhs=(-F2).col_join(S.zeros(15,10))
    rows=list(A.T.rref()[1]);assert len(rows)==36
    N=A[rows,:].inv()*rhs[rows,:]
    assert A*N==rhs
    assert J*T==S.zeros(30,4)
    assert all(N[:,m]==S.zeros(36,1) for m,(a,b) in enumerate(monomials) if (a<2)==(b<2))

    terms=determinant_terms();tr=list(combinations(range(6),3))
    records=[];effects=[]
    for rr in tr:
        for cc in tr:
            linear=S.zeros(1,36);q2=S.zeros(1,10)
            constant=0
            for (a,b,c,d),coef in terms.items():
                raw=(a+b+c+d,-a-c,-b-d,-a-b,a,b,-c-d,c,d)
                ell=S.zeros(1,36)
                for r in range(3):
                    for s in range(3):ell[0,6*rr[r]+cc[s]]=raw[3*r+s]
                k=sum(rr[r]*cc[s]*raw[3*r+s] for r in range(3) for s in range(3))%6
                constant+=coef*sin3[k]
                linear+=coef*cos[k]*ell
                dv=ell*T
                for m,(a,b) in enumerate(monomials):
                    q2[m]-=coef*sin3[k]*dv[a]*dv[b]*(1 if a==b else 2)/2
            effective=linear*N+q2
            assert constant==0
            effects.append(tuple(effective))
            records.append(dict(rows=rr,cols=cc,linear=[str(x) for x in linear*T],
                quadratic_over_sqrt3=[str(x) for x in effective]))
    histogram=Counter(effects)
    by_linear={}
    for idx,r in enumerate(records):
        by_linear.setdefault(tuple(S.Rational(x) for x in r['linear']),[]).append(idx)
    cancellation_pairs=[]
    for l,ids in by_linear.items():
        if not any(l):continue
        opposite=by_linear[tuple(-x for x in l)]
        pair=next((i,j) for i in ids for j in opposite if effects[i]==effects[j])
        cancellation_pairs.append(dict(linear=[str(x) for x in l],corners=pair))
    assert len(cancellation_pairs)==48
    z=S.symbols('a b c d')
    normal2=(N*S.Matrix([z[a]*z[b] for a,b in monomials])).reshape(6,6)
    h=S.Matrix([-S.Rational(1,2),S.Rational(1,2)]*3)
    w=S.Matrix([0,z[2],z[3],0,z[2],z[3]])
    w-=S.ones(6,1)*sum(w)/6
    assert all(S.expand((h.T*normal2[:,j])[0])==0 for j in range(6))
    assert all(S.expand((w.T*normal2[:,j])[0])==0 for j in range(6))
    data=dict(scope='Exact second jet only; no cutoff-5 or global claim',
        monomials=monomials,normal_quadratic_over_sqrt3=[[str(x) for x in row] for row in N.tolist()],
        corner_records=records,quadratic_zero_corners=sum(v for k,v in histogram.items() if not any(k)),
        cancellation_pairs=cancellation_pairs,columnwise_normal_orthogonality=True,
        distinct_quadratic_forms=len(histogram),
        maximum_quadratic_coefficient=str(max(abs(x) for row in effects for x in row)))
    (HERE/'practical_local_jet.json').write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps({k:v for k,v in data.items() if k not in ['corner_records','normal_quadratic_over_sqrt3','cancellation_pairs']},indent=2))


if __name__=='__main__':run()
