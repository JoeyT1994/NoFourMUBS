"""Exact cubic coefficients and simplex bounds for the cutoff-5 local route.

This is a Taylor-coefficient certificate, not yet a finite-radius theorem.
"""
from pathlib import Path
from itertools import combinations,combinations_with_replacement,product
from collections import defaultdict
import importlib.util,json,sys,time
import sympy as S

HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierCornerRigidity'))
from exact_algebra import determinant_terms


def run():
    started=time.monotonic()
    data=json.loads((HERE/'practical_local_jet.json').read_text())
    spec=importlib.util.spec_from_file_location('tangent_source_cubic',ROOT/'RouteC/averaging/task2_hessian_exact.py')
    source=importlib.util.module_from_spec(spec);spec.loader.exec_module(source)
    T=S.Matrix.hstack(*(S.Matrix(source.gauge_project(t)).reshape(36,1) for t in source.tangent_basis()))
    m2=list(combinations_with_replacement(range(4),2));m3=list(combinations_with_replacement(range(4),3))
    i3={p:i for i,p in enumerate(m3)}
    N2=S.Matrix(data['normal_quadratic_over_sqrt3'])
    co=list(map(S.Rational,[1,'1/2','-1/2',-1,'-1/2','1/2']))
    si=list(map(S.Rational,[0,'1/2','1/2',0,'-1/2','-1/2']))
    def times12(a,b):
        ans=[S.Integer(0)]*20
        for i in range(4):
            for k,(j,l) in enumerate(m2):ans[i3[tuple(sorted((i,j,l)))]]+=a[i]*b[k]
        return S.Matrix(1,20,ans)
    def cube(a):
        sq=[a[i]*a[j]*(1 if i==j else 2) for i,j in m2]
        return times12(a,sq)
    J=[];F3=[]
    for i,j in combinations(range(6),2):
        jr=[S.Integer(0)]*36;ji=jr.copy();r3=S.zeros(1,20);i3row=S.zeros(1,20)
        for c in range(6):
            k=(i-j)*c%6
            jr[6*i+c]=-si[k];jr[6*j+c]=si[k]
            ji[6*i+c]=co[k];ji[6*j+c]=-co[k]
            dv=T[6*i+c,:]-T[6*j+c,:]
            dn=N2[6*i+c,:]-N2[6*j+c,:]
            cross=times12(dv,dn);cub=cube(dv)
            r3+=-co[k]*cross+si[k]*cub/6
            i3row+=-3*si[k]*cross-co[k]*cub/6
        J += [jr,ji];F3 += [list(r3),list(i3row)]
    J=S.Matrix(J);F3=S.Matrix(F3);W=S.diag(*([3,1]*15))
    C=S.eye(6)-S.ones(6)/6;Pi=S.kronecker_product(C,C)
    PT=T*(T.T*T).inv()*T.T;PN=Pi-PT
    G=J.T*W*J
    K=(G+S.eye(36)-PN).inv()*J.T*W
    assert K*J==PN
    N3=-K*F3
    full_residual=J*N3+F3
    assert full_residual==S.zeros(30,20)
    print('normal cubic solved; full cubic residual zero:',full_residual==S.zeros(30,20),flush=True)
    records=[];terms=determinant_terms();triples=list(combinations(range(6),3))
    for rr in triples:
        for cc in triples:
            cub=S.zeros(1,20)
            for (a,b,c,d),coef in terms.items():
                raw=(a+b+c+d,-a-c,-b-d,-a-b,a,b,-c-d,c,d)
                indices=[6*r+s for r in rr for s in cc]
                lv=S.zeros(1,4);ln2=S.zeros(1,10);ln3=S.zeros(1,20)
                for e,idx in zip(raw,indices):
                    if e:
                        lv+=e*T[idx,:];ln2+=e*N2[idx,:];ln3+=e*N3[idx,:]
                k=sum(r*s*e for (r,s),e in zip(product(rr,cc),raw))%6
                cub+=coef*(co[k]*ln3-3*si[k]*times12(lv,ln2)-co[k]*cube(lv)/6)
            records.append(list(cub))
    print('400 corner cubic forms computed',flush=True)

    # A(a,b)<=1 is this exact rational hexagon, in cyclic order.
    verts=[(S.Rational(2,3),S.Rational(1,3)),(S.Rational(1,3),S.Rational(2,3)),
           (S.Rational(-1,3),S.Rational(1,3)),(S.Rational(-2,3),S.Rational(-1,3)),
           (S.Rational(-1,3),S.Rational(-2,3)),(S.Rational(1,3),S.Rational(-1,3))]
    forms=[(1,1),(-1,2),(-2,1),(-1,-1),(1,-2),(2,-1)]
    def bernstein_cubic(poly,vertices):
        # Homogeneous cubic on barycentric coordinates. Coefficients of
        # lambda_i lambda_j lambda_k divided by their multinomial weight
        # are the Bernstein coefficients, so bound the whole simplex.
        out=defaultdict(lambda:S.Integer(0))
        for coeff,(a,b,c) in zip(poly,m3):
            if not coeff:continue
            for i,j,k in product(range(4),repeat=3):
                out[tuple(sorted((i,j,k)))]+=coeff*vertices[i][a]*vertices[j][b]*vertices[k][c]
        vals=[]
        for idx in combinations_with_replacement(range(4),3):
            fac=1 if idx[0]==idx[2] else (3 if len(set(idx))==2 else 6)
            vals.append(out[idx]/fac)
        return min(vals),max(vals)
    sectors=[]
    for i,j in product(range(6),repeat=2):
        ell=tuple(S.Integer(12)*q for q in forms[i]+forms[j])
        witness=next(p for p in data['cancellation_pairs'] if tuple(map(S.Rational,p['linear']))==ell)
        ca,cb=witness['corners'];pol=[(a-b)/2 for a,b in zip(records[ca],records[cb])]
        v=[verts[i]+(0,0),verts[(i+1)%6]+(0,0),(0,0)+verts[j],(0,0)+verts[(j+1)%6]]
        # The normalized sector A+B=1 is a tetrahedron. Its cone with
        # the origin covers the full sector; homogeneity handles scaling.
        assert all(sum(ell[k]*x[k] for k in range(4))==12 for x in v)
        lo,hi=bernstein_cubic(pol,v)
        assert lo>=-2
        sectors.append(dict(i=i,j=j,corners=[ca,cb],lower=str(lo),upper=str(hi)))
    report=dict(scope='Exact cubic-jet bounds; higher-order remainder and global coverage remain open',
        monomials=m3,normal_cubic=[[str(x) for x in row] for row in N3.tolist()],
        corner_cubic=[[str(x) for x in row] for row in records],sectors=sectors,
        full_Hadamard_cubic_residual_zero=full_residual==S.zeros(30,20),
        paired_cubic_lower=str(min(S.Rational(r['lower']) for r in sectors)),
        paired_cubic_upper=str(max(S.Rational(r['upper']) for r in sectors)),
        normal_cubic_largest_coefficient=str(max(abs(x) for x in N3)),seconds=time.monotonic()-started)
    (HERE/'practical_cubic_bound.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k not in ['normal_cubic','corner_cubic','sectors']},indent=2))


if __name__=='__main__':run()
