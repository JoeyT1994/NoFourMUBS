"""Exact replay for PhaseCollisions.md and TwoValuedAnchor.md.

Run with cwd = this folder: python3 verify.py   (add --emit for JSON)
Characteristic-zero arithmetic only: no sampling, modular arithmetic,
Groebner basis or historical solver.  The universal statements are the
written proofs; this script checks the exact identities, the finite case
splits, the completion certificate (10), the 72 relative placements, and
the sharp and positive controls.  No receipt or source-hash comparison.
"""
import argparse
from fractions import Fraction as F
import itertools as it
import json
from pathlib import Path
import sys
import sympy as sp

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent))
from qfield import Q, mul, star, physical, rank


def abs2(q):
    return q*q.bar()


def sign_sqrt6(q):
    """Exact real sign in Q(sqrt6), by a rational square comparison."""
    assert set(q.c) <= {0,6}
    a=q.c.get(0,F(0)); b=q.c.get(6,F(0))
    sgn=lambda x:(x>0)-(x<0)
    if not a:return sgn(b)
    if not b or a*b>0:return sgn(a)
    comparison=a*a-6*b*b
    assert comparison!=0  # sqrt6 is irrational, a,b are nonzero rationals
    return sgn(a) if comparison>0 else sgn(b)


def symbolic():
    t, c, S = sp.symbols('t c S', real=True)
    expanded = 6*(30-c*t)**2 + t*t*S - 12*t*6*c + 30*36
    target = 6480-432*c*t+(6*c*c+S)*t*t
    assert sp.expand(expanded-target) == 0
    for cc, ss, square in [
        (5, 30, sp.Rational(5,36)*(t-6)**2),
        (8, 120, sp.Rational(7,18)*(t-sp.Rational(24,7))**2+sp.Rational(3,7)),
        (9, 108, sp.Rational(11,24)*(t-sp.Rational(36,11))**2+sp.Rational(1,11)),
    ]:
        assert sp.expand(target.subs({c:cc, S:ss})/1296-square) == 0
    assert target.subs({c:9,S:108,t:sp.Rational(10,3)}) == 120
    # Every allowed three-value multiplicity is a degenerate triangle.
    multiplicities = []
    for m in range(1,5):
        sides = (1,m,5-m)
        if 2*max(sides) <= sum(sides):
            assert 2*max(sides) == sum(sides)
            multiplicities.append(list(sides))
    assert multiplicities == [[1,2,3],[1,3,2]]
    # The three-row feature bound and the obstruction to three eligible columns.
    assert F(18**2,2)+F(18**2,3)-162 == 108
    x,y,z = sp.symbols('x y z')
    sol = sp.solve([x+y-sp.Rational(18,5),x+z-sp.Rational(18,5),y+z-sp.Rational(18,5)], [x,y,z])
    assert sol == {x:sp.Rational(9,5),y:sp.Rational(9,5),z:sp.Rational(9,5)}
    assert 30*F(9,5)**2 == F(486,5) < 108
    beta = (-2+sp.I*sp.sqrt(5))/3
    assert sp.expand(beta*sp.conjugate(beta)) == 1
    assert sp.expand(9*(1+beta)*(1+sp.conjugate(beta))) == 6
    # Two real signs times ten positions, for every normalized anchor index.
    for anchor in range(6):
        assert len(list(it.combinations([i for i in range(6) if i!=anchor],2)))*2 == 20
    return {'defect_expansion':True, 'completed_squares':3,
            'mixed_collision_multiplicities':multiplicities,
            'fourth_moment_lower_bound':108, 'balanced_raw_defect_bound':120,
            'two_value_anchor_candidates_per_chart':20}


def sharp_matrix():
    ii=Q({1:1}); r6=Q({6:1})
    a=(-4-3*ii)/5
    b=(-2-3*r6+ii*(6-r6))/10
    c=(-2+3*r6+ii*(6+r6))/10
    H=[[1,1,1,1,1,1], [1,a,b,c,1,a], [1,a,c,b,a,1],
       [1,-a,-ii*a,-ii,ii*c,ii*b], [1,-a,-ii,-ii*a,ii*b,ii*c],
       [1,-1,-ii,-ii,ii,ii]]
    return [[Q(x) for x in row] for row in H]


def fourth_moment_controls(H):
    reports=[]
    for rows in it.combinations(range(6),3):
        X=[H[r] for r in rows]
        G=mul(star(X),X)
        w=[[abs2(q) for q in row] for row in G]
        M=[[X[r][j]*X[s][j].bar() for j in range(6)]
           for r,s in it.permutations(range(3),2)]
        assert all(sum(row,Q())==0 for row in M)
        Y=mul(M,star(M)); MTM=mul(star(M),M)
        assert all(Y[2*p][2*p+1]==0 for p in range(3))
        assert all(Y[i][i]==6 for i in range(6))
        assert MTM==[[q-3 for q in row] for row in w]
        assert all(sum(row,Q())==18 for row in w)
        moment=sum((w[j][k]**2 for j,k in it.permutations(range(6),2)),Q())
        traceY2=sum((abs2(q) for row in Y for q in row),Q())
        assert traceY2==162+moment
        assert sign_sqrt6(moment-108) >= 0
        reports.append(repr(moment))
    for rows in it.combinations(range(6),2):
        X=[H[r] for r in rows]; G=mul(star(X),X)
        moment=sum((abs2(G[j][k])**2 for j,k in it.permutations(range(6),2)),Q())
        ratio=[X[1][j]/X[0][j] for j in range(6)]
        assert sum(ratio,Q())==0
        assert moment==120+2*abs2(sum((q*q for q in ratio),Q()))
    return {'three_row_sets':20,'two_row_sets':15,
            'three_row_fourth_moments':reports,'feature_identity_and_pair_blocks':True}


def sharp_control():
    H=sharp_matrix();physical(H)
    r6=Q({6:1});lo=(42-12*r6)/5;hi=(42+12*r6)/5
    expected=[[6,6,6,6,6,6],[6,6,6,6,6,6],
              [6,6,6,F(6,5),lo,hi],[6,6,F(6,5),6,hi,lo],
              [6,6,lo,hi,6,F(6,5)],[6,6,hi,lo,F(6,5),6]]
    expected=[[Q(q) for q in row] for row in expected]
    G=mul(star(H[:3]),H[:3])
    # t=10/3 for beta=(-2+i sqrt5)/3; diagonal raw intensity=6.
    intensity=[[Q(6) if i==j else F(10,3)*abs2(G[i][j])
                for j in range(6)] for i in range(6)]
    assert intensity==expected
    eligible=[j for j in range(6) if all(intensity[i][j]==6 for i in range(6))]
    assert eligible==[0,1]
    defect=sum(((q-6)**2 for row in intensity for q in row),Q())/1296
    assert defect==F(8,25)
    count=0
    for rows,cols in it.product(it.combinations(range(6),3),repeat=2):
        assert rank([[H[r][c] for c in cols] for r in rows])[0]==3
        count+=1
    columns=(0,4,5,1,2,3)
    framed=[[row[c] for c in columns] for row in H]
    assert framed[1][1]==framed[2][2]==1
    assert framed[1][2]==framed[2][1]==(-4-3*Q({1:1}))/5
    assert H[0][0]*H[5][1]+H[0][1]*H[5][0]==0  # H2 permanent
    return {'field':'Q(i,sqrt(6)); diagonal intensities use exact |1-beta|^2=10/3',
            'physical_H':True,'eligible_columns_zero_based':eligible,
            'defect':'8/25','nonzero_ordinary_3_minors':count,
            'seed_frame_columns':list(columns), 'Karlsson_H2_witness':[[0,5],[0,1]],
            'full_triple':False, 'row_feature_controls':fourth_moment_controls(H)}


def independent_sympy():
    # Construct from the note again, without Q conversion or the guard helper.
    ii=sp.I; r6=sp.sqrt(6)
    a=(-4-3*ii)/5; b=(-2-3*r6+ii*(6-r6))/10; c=(-2+3*r6+ii*(6+r6))/10
    H=sp.Matrix([[1,1,1,1,1,1],[1,a,b,c,1,a],[1,a,c,b,a,1],
                 [1,-a,-ii*a,-ii,ii*c,ii*b],[1,-a,-ii,-ii*a,ii*b,ii*c],
                 [1,-1,-ii,-ii,ii,ii]])
    simp=lambda x:sp.expand(x)
    assert (H.conjugate().T*H-6*sp.eye(6)).applyfunc(simp)==sp.zeros(6)
    assert all(simp(x*sp.conjugate(x))==1 for x in H)
    beta=(-2+ii*sp.sqrt(5))/3
    Z=(H.conjugate().T*sp.diag(1,1,1,beta,beta,beta)*H).applyfunc(simp)
    intensity=Z.applyfunc(lambda x:simp(x*sp.conjugate(x)))
    lo=(42-12*r6)/5; hi=(42+12*r6)/5
    expected=sp.Matrix([[6,6,6,6,6,6],[6,6,6,6,6,6],
                       [6,6,6,sp.Rational(6,5),lo,hi],
                       [6,6,sp.Rational(6,5),6,hi,lo],
                       [6,6,lo,hi,6,sp.Rational(6,5)],
                       [6,6,hi,lo,sp.Rational(6,5),6]])
    assert (intensity-expected).applyfunc(simp)==sp.zeros(6)
    assert simp(sum((q-6)**2 for q in intensity)/1296)==sp.Rational(8,25)
    return {'independent_matrix_construction':True,'direct_beta_radical_product':True,
            'all_36_intensities':True,'defect':'8/25'}


def positive_triangle():
    z=(Q({4:1})+Q({1:1}))/2
    H=[[z**(2*r*j) for j in range(6)] for r in range(6)]
    v=[z**(r*r) for r in range(6)]
    K=[[v[r]*x for x in row] for r,row in enumerate(H)]
    physical(H);physical(K)
    assert all(abs2(q)==6 for row in mul(star(H),K) for q in row)
    count=0
    for i,j in it.product(range(6),repeat=2):
        for T in it.combinations(range(6),4):
            sos=sum((abs2(H[r][i]*K[s][j]-H[s][i]*K[r][j])
                     for r,s in it.combinations(T,2)),Q())
            # Sum of physical squared moduli: nonzero is exact strict positivity.
            assert sos!=0
            count+=1
    assert count==540
    distinct={tuple(sorted(q.c.items())) for q in v}
    assert len(distinct)==4
    return {'physical_full_triple':True,'distinct_diagonal_phases':4,
            'strict_mixed_collision_tests':count,'field':'Q(i,sqrt(3))'}


ii=Q({1:1});r6=Q({6:1})
a=(-4-3*ii)/5
b=(-2-3*r6+ii*(6-r6))/10
c=(-2+3*r6+ii*(6+r6))/10


def encoded(q):
    return {str(k):str(v) for k,v in sorted(q.c.items())}


def expr(q):
    assert set(q.c)<={0,1,6,7}
    return sp.expand(sum(sp.Rational(v.numerator,v.denominator)
                         *(sp.I if k&1 else 1)*(sp.sqrt(6) if k&6 else 1)
                         for k,v in q.c.items()))


def inverse(A):
    n=len(A);T=[row[:]+[Q(i==j) for j in range(n)] for i,row in enumerate(A)]
    for j in range(n):
        k=next(i for i in range(j,n) if T[i][j]!=0)
        T[j],T[k]=T[k],T[j]
        scale=1/T[j][j];T[j]=[scale*x for x in T[j]]
        for i in range(n):
            if i!=j:
                q=T[i][j];T[i]=[x-q*y for x,y in zip(T[i],T[j])]
    return [row[n:] for row in T]


def root_identity():
    t,z,w,A,B,C=sp.symbols('t z w A B C')
    p=t**5+t**4+A*t**3-B*t**2-C*t-C
    assert sp.expand(p.subs(t,1)-2*sp.diff(p,t).subs(t,-1)-5*p.subs(t,-1))==0
    level=z+1/z+w+1/w+w/z+z/w+sp.Rational(6,5)
    partner=w+z/w+z+1-sp.Rational(4,5)*z/(z+1)
    assert sp.cancel(partner-z*level/(z+1))==0
    assert sp.simplify(level.subs(z,-1))==-sp.Rational(4,5)
    assert a*a.bar()==1 and a+a.bar()==-Q(8)/5
    assert len(list(it.combinations(range(5),2)))*2==20
    # Direct independent derivation of the two-phase intensity formula.
    x,y,u,v=sp.symbols('x y u v',real=True)
    aa=x+sp.I*y;bb=u+sp.I*v;beta=(-2+sp.I*sp.sqrt(5))/3
    actual=sp.expand((aa+beta*bb)*sp.conjugate(aa+beta*bb))
    cc=aa*sp.conjugate(bb)
    rr=aa*sp.conjugate(aa)+bb*sp.conjugate(bb)-sp.Rational(2,3)*(cc+sp.conjugate(cc))
    ss=(cc-sp.conjugate(cc))/(3*sp.I)
    assert sp.expand(actual-rr-sp.sqrt(5)*ss)==0
    return {'quintic_identity':True,'unit_pair_partner_identity':True,
            'minus_one_forbidden_residual':'-4/5','anchor_candidates':20,
            'independent_intensity_expansion':True}


def pair_roots(sign1,sign2):
    if sign1==sign2:return [b,c] if sign1==0 else [b.bar(),c.bar()]
    return [(-1+2*ii*r6)/5,(-1-2*ii*r6)/5]


def row_cases():
    accepted=[];rejected=[];base=sharp_matrix()[:3]
    for sa,sb,sc in it.product([0,1],repeat=3):
        aa=[a,a.bar()][sa];bb=[a,a.bar()][sb];cc=[a,a.bar()][sc]
        zz=pair_roots(sb,sc);ww=pair_roots(sa,sc)
        sz=-2-bb-cc;sw=-2-aa-cc
        assert sz!=0 and sw!=0
        assert sum(zz,Q())==sz and sum(ww,Q())==sw
        assert zz[0]!=zz[1] and ww[0]!=ww[1]
        assert all(abs2(x)==1 for x in zz+ww)
        assert zz[0]*zz[1]==sz/sz.bar() and ww[0]*ww[1]==sw/sw.bar()
        for order in [0,1]:
            z=[Q(1),Q(1),bb,cc]+zz
            w=[Q(1),aa,Q(1),cc]+(ww if order==0 else ww[::-1])
            X=[[Q(1)]*6,z,w];case=[sa,sb,sc,order]
            residuals=[sum((w[j]/z[j] for j in range(6)),Q())]
            residuals += [abs2(1+z[j]+w[j])-Q(9)/5 for j in range(1,6)]
            if any(x!=0 for x in residuals):
                index=next(j for j,x in enumerate(residuals) if x!=0)
                rejected.append({'case':case,'equation_index':index,'residual':encoded(residuals[index])})
                continue
            assert mul(X,star(X))==[[Q(6 if i==j else 0) for j in range(3)] for i in range(3)]
            witness=None
            for conjugate in [False,True]:
                Y=[[x.bar() if conjugate else x for x in row] for row in base]
                for pr in it.permutations(range(3)):
                    Z=[[Y[r][j]/Y[pr[0]][j] for j in range(6)] for r in pr]
                    for pc0 in it.permutations(range(1,6)):
                        pc=(0,)+pc0
                        if [[row[j] for j in pc] for row in Z]==X:
                            witness={'conjugate':conjugate,'rows':list(pr),'columns':list(pc)}
                            break
                    if witness is not None:break
                if witness is not None:break
            assert witness is not None
            accepted.append({'case':case,'witness':witness})
    assert [x['case'] for x in accepted]==[[0,0,0,1],[0,1,0,0],[0,1,1,1],[1,0,0,0],[1,0,1,1],[1,1,1,1]]
    assert len(rejected)==10
    return {'cases':16,'accepted':accepted,'rejected':rejected,
            'scope':'Complete finite split after the analytic forced-root and uniqueness lemmas.'}


def completion_data():
    H=sharp_matrix();columns=[0,4,5,1,2,3]
    HF=[[row[j] for j in columns] for row in H]
    E=[row[:3] for row in HF[:3]];B=[row[3:] for row in HF[:3]]
    assert rank(E)[0]==rank(B)[0]==3
    M=[[-x for x in row] for row in mul(star(E),inverse(star(B)))]
    p,q=sp.symbols('p q')
    polys=[]
    for j in range(3):
        r=expr(M[0][j])+p*expr(M[1][j])+q*expr(M[2][j])
        rb=expr(M[0][j].bar())+expr(M[1][j].bar())/p+expr(M[2][j].bar())/q
        polys.append(sp.expand(p*q*(r*rb-1)))
    Gq=q-2*sp.I*p**3-(11+7*sp.I)*p**2/5-(9+8*sp.I)*p/5-(9+3*sp.I)/5
    Gp=p**4+(6-8*sp.I)*p**3/5+(3-9*sp.I)*p**2/5-2*sp.I*p-(4+3*sp.I)/5
    return p,q,polys,Gq,Gp,HF,M


def completion():
    p,q,polys,Gq,Gp,H,M=completion_data()
    field=sp.QQ.algebraic_field(sp.I,sp.sqrt(6))
    poly=lambda x:sp.Poly(x,p,q,domain=field)
    data=json.loads((HERE/'completion_certificate.json').read_text())
    assert data['degree']==6 and len(data['multipliers'])==2
    for strings,target in zip(data['multipliers'],[p*q*Gq,p*q*Gp]):
        assert len(strings)==3
        cs=[sp.sympify(s,locals={'p':p,'q':q,'I':sp.I,'sqrt':sp.sqrt}) for s in strings]
        assert all(poly(x).total_degree()<=3 for x in cs)
        assert poly(sum(x*f for x,f in zip(cs,polys))-target).is_zero
    fact=(p-sp.I)**2*(p-sp.I*expr(b))*(p-sp.I*expr(c))
    assert poly(Gp-fact).is_zero
    roots=[ii,ii*b,ii*c]
    assert all(roots[j]!=roots[k] for j,k in it.combinations(range(3),2))
    assert set(tuple(sorted(x.c.items())) for x in roots)==set(tuple(sorted(row[1].c.items())) for row in H[3:])
    physical(H)
    for row in H[3:]:
        pp,qq=row[1:3]
        assert abs2(pp)==abs2(qq)==1
        assert mul([[Q(1),pp,qq]],M)[0]==row[3:]
        assert all(sp.expand(f.subs({p:expr(pp),q:expr(qq)}))==0 for f in polys+[Gq,Gp])
    for R,C in it.product(it.combinations(range(6),3),repeat=2):
        assert rank([[H[r][c] for c in C] for r in R])[0]==3
    return {'direct_polynomial_identities':2,'multiplier_degree_at_most':3,
            'quartic_factorization':True,'distinct_flat_row_candidates':3,
            'repeated_root_retained':'p=i, multiplicity2',
            'all_candidates_are_actual_orthogonal_rows':True,
            'all_400_ordinary_3_minors_nonzero':True}


def orbit():
    H=sharp_matrix();physical(H)
    records=[];hist={str(k):0 for k in range(7)}
    for conjugate in [False,True]:
        for p,q in it.product(it.permutations(range(3)),it.permutations(range(3,6))):
            S=[H[r] for r in p+q]
            if conjugate:S=[[x.bar() for x in row] for row in S]
            physical(S)
            A=mul(star(H[:3]),S[:3]);B=mul(star(H[3:]),S[3:])
            failed=[];eligible=[]
            for j in range(6):
                passed=True
                for i in range(6):
                    cc=A[i][j]*B[i][j].bar()
                    real=abs2(A[i][j])+abs2(B[i][j])-F(2,3)*(cc+cc.bar())
                    coeff=(cc-cc.bar())/(3*ii)
                    assert set(real.c)<={0,6} and set(coeff.c)<={0,6}
                    if real!=6 or coeff!=0:
                        passed=False
                        failed.append({'entry':[i,j],'constant_residual':encoded(real-6),'sqrt5_coefficient':encoded(coeff)})
                if passed:eligible.append(j)
            assert failed and len(eligible)<=2
            hist[str(len(eligible))]+=1
            records.append({'conjugate':conjugate,'rows':list(p+q),'eligible_columns':eligible,'failed_entry':failed[0]})
    assert len(records)==72 and hist=={'0':0,'1':68,'2':4,'3':0,'4':0,'5':0,'6':0}
    return {'relative_cases':72,'both_beta_signs_handled_by_field_independence':True,
            'eligible_column_histogram':hist,'witnesses':records}


def positive_control():
    z=(Q({4:1})+ii)/2
    H=[[z**(2*r*j) for j in range(6)] for r in range(6)]
    K=[[z**(r*r)*x for x in row] for r,row in enumerate(H)]
    physical(H);physical(K)
    assert all(abs2(x)==6 for row in mul(star(H),K) for x in row)
    counts=[]
    for i,j in it.product(range(6),repeat=2):
        ratios=[K[r][j]/H[r][i] for r in range(6)]
        count=len({tuple(sorted(x.c.items())) for x in ratios})
        assert count>=3;counts.append(count)
    return {'physical_full_triple':True,'mixed_column_pairs_checked':36,
            'distinct_ratio_count_histogram':{str(k):counts.count(k) for k in sorted(set(counts))}}


def independent_orbit(records):
    """Direct radical intensities in an independent algebraic-number field.

    Rebuild H0 without Q or sharp_matrix; check every failed-entry witness
    for both actual beta signs, without the field-independence shortcut.
    """
    i=sp.I;s=sp.sqrt(6)
    aa=(-4-3*i)/5
    bb=(-2-3*s+i*(6-s))/10;cc=(-2+3*s+i*(6+s))/10
    H=sp.Matrix([[1,1,1,1,1,1],[1,aa,bb,cc,1,aa],
                 [1,aa,cc,bb,aa,1],[1,-aa,-i*aa,-i,i*cc,i*bb],
                 [1,-aa,-i,-i*aa,i*bb,i*cc],[1,-1,-i,-i,i,i]])
    field=sp.QQ.algebraic_field(i,sp.sqrt(6),sp.sqrt(5))
    cache={}
    def convert(x):
        x=sp.expand(x)
        if x not in cache:cache[x]=field.from_sympy(x)
        return cache[x]
    X=[[convert(H[r,c]) for c in range(6)] for r in range(6)]
    Y=[[convert(sp.conjugate(H[r,c])) for c in range(6)] for r in range(6)]
    beta=convert((-2+i*sp.sqrt(5))/3)
    betabar=convert((-2-i*sp.sqrt(5))/3)
    checked=0
    for record in records:
        r,c=record['failed_entry']['entry'];perm=record['rows']
        S,T=(Y,X) if record['conjugate'] else (X,Y)
        for phase,phasebar in [(beta,betabar),(betabar,beta)]:
            overlap=sum((Y[k][r]*S[perm[k]][c]*(field.one if k<3 else phase)
                         for k in range(6)),field.zero)
            opposite=sum((X[k][r]*T[perm[k]][c]*(field.one if k<3 else phasebar)
                          for k in range(6)),field.zero)
            assert overlap*opposite!=field.convert(6)
            checked+=1
    assert checked==144
    return {'independent_H0_construction':True,
            'field':'SymPy QQ(i,sqrt(6),sqrt(5))',
            'direct_failed_intensities_both_signs':checked}



def calculate():
    out={'collisions':{'symbolic':symbolic(),'sharp_control':sharp_control(),
                       'independent_sympy':independent_sympy(),'positive_triangle':positive_triangle()}}
    print('PASS phase-collision identities, sharp two-column control, independent SymPy, 540 positive-control tests',flush=True)
    mates=orbit()
    out['two_valued_anchor']={'root_identity':root_identity(),'row_classification':row_cases(),
            'completion':completion(),'relative_mates':mates,'positive_control':positive_control(),
            'independent_orbit':independent_orbit(mates['witnesses'])}
    print('PASS two-valued anchor: forced-root identity; all 16 blocks; completion certificates; all 72 relative mates fail',flush=True)
    return out


if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    parser=argparse.ArgumentParser();parser.add_argument('--emit',action='store_true')
    args=parser.parse_args();data=calculate()
    if args.emit:print(json.dumps(data,indent=2,sort_keys=True,default=str))
    print('PASS PhaseCollisions + TwoValuedAnchor exact replay')
