"""Independent direct-R and complementary-square census of all 400 corners."""
from collections import Counter,defaultdict
from fractions import Fraction as Q
from itertools import combinations,permutations,product
from pathlib import Path
import importlib.util,json,argparse,sys,time
import sympy as sp
from flint import arb,ctx
import fourier_max_R as bound
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'SeedAtlas'))
import atlas


def exact_census():
    path=HERE.parents[1]/'CornerBounds/verify.py'
    spec=importlib.util.spec_from_file_location('corner_identity_audit',path)
    old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
    variables,D,R=old.generic_polynomials()
    dt,rt=old.laurent_terms(D,variables),old.laurent_terms(R,variables)
    assert {e:c for c,e in rt}=={(e[0],e[2],e[1],e[3]):c for c,e in rt}
    roots=((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
    def evaluate(terms,coords):
        result=defaultdict(lambda:[0,0])
        for c,e in terms:
            h,x,y=[sum(a*b[i] for a,b in zip(e,coords)) for i in range(3)]
            A,B=roots[h%6];result[x,y][0]+=c*A;result[x,y][1]+=c*B
        return tuple(sorted((p,tuple(c)) for p,c in result.items() if c!=[0,0]))
    def minus_square(poly):
        out=defaultdict(lambda:[0,0])
        for (x,y),(A,B) in poly:
            for (u,v),(C,E) in poly:
                out[x+u,y+v][0]-=A*C-B*E
                out[x+u,y+v][1]-=A*E+B*C+B*E
        return tuple(sorted((p,tuple(c)) for p,c in out.items() if c!=[0,0]))
    z,w=sp.symbols('z w',nonzero=True)
    X=(w*w/z-z/(w*w))/(2*sp.I)
    Y=(z*w-1/(z*w))/(2*sp.I)
    Z=(w/(z*z)-z*z/w)/(2*sp.I)
    def key(expr):
        return tuple(sorted((e,(c,0)) for c,e in old.laurent_terms(expr,(z,w))))
    expected=Counter({():256})
    for s,t in product((-1,1),repeat=2):
        expected[key(sp.expand(36*(X+s*Y+t*Z)**2))]+=36
    observed=Counter()
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            direct=evaluate(rt,atlas.dephase(atlas.family_entry,rows,cols))
            complement=tuple(j for j in range(6) if j not in cols)
            square=minus_square(evaluate(dt,atlas.dephase(atlas.family_entry,rows,complement)))
            assert direct==square
            observed[direct]+=1
    assert observed==expected and len(observed)==5
    assert sp.expand(sum(n*sum(c[0]*z**p[0]*w**p[1] for p,c in f)
                         for f,n in observed.items())-5184*(X*X+Y*Y+Z*Z))==0
    print('PASS: all 400 corners by two exact computations; multiplicities 256+4*36; sum-of-squares identity',flush=True)
    return dict(corners=400,zero_multiplicity=256,other_multiplicities=[36]*4)


def F6_grid():
    witnesses=[]
    for a,b in product(range(6),repeat=2):
        if (a+b)%3:continue
        phases=[[((lambda h,x,y:h+a*x+b*y)(*atlas.family_entry(i,j)))%6
                  for j in range(6)] for i in range(6)]
        witness=None
        for tail in permutations(range(1,6)):
            cols=(0,)+tail;rows=[]
            for values in phases:
                candidates=[k for k in range(6) if all(k*c%6==v for c,v in zip(cols,values))]
                if len(candidates)!=1:break
                rows.append(candidates[0])
            if sorted(rows)==list(range(6)):
                assert all(phases[i][j]==rows[i]*cols[j]%6 for i,j in product(range(6),repeat=2))
                witness=dict(a=a,b=b,rows=rows,columns=cols);break
        assert witness is not None,(a,b)
        witnesses.append(witness)
    assert len(witnesses)==12
    # Nearest multiples X=m*pi,Y=n*pi give alpha=(2n-m)pi/3,beta=(m+n)pi/3.
    for m,n in product(range(6),repeat=2):
        a,b=Q(2*n-m,3),Q(m+n,3)
        assert 2*b-a==m and a+b==n and ((2*n-m)+(m+n))%3==0
    print('PASS: all twelve zero-maximum parameter points have explicit F6 row/column permutations',flush=True)
    return witnesses


def controls():
    # Exact affine-phase audit of the balanced row/column gauge in (5).
    # Coefficients are those of (d_alpha,d_beta,lambda), independently.
    for i,j in product(range(6),repeat=2):
        bottom=int(i>=3);dj=(Q(j%3==1),Q(j%3==2),Q(0))
        original=(bottom*dj[0],bottom*dj[1],Q(0))
        actual=tuple(original[k]-bottom*int(k==2)-(dj[k]-int(k==2))/2 for k in range(3))
        expected=tuple((Q(bottom)-Q(1,2))*(dj[k]-int(k==2)) for k in range(3))
        assert actual==expected
    records=[]
    for precision in (96,160):
        ctx.prec=precision
        for q in (Q(0),Q(1,48),Q(1,7),Q(1,3)):
            a=arb.pi()*q.numerator/q.denominator
            # Independent one-parameter specializations of the maximum.
            assert (bound.maximum_corner_R(a,2*a)-144*(3*a).sin()**2).contains(0)
            if q<=Q(1,3):
                v=(a/2).tan()
                assert (bound.maximum_corner_R(a,0)-2304*v*v/(1+v*v)**4).contains(0)
        r=bound.reference_radius(arb(1)/1000,0)
        assert r['reason']=='analytic_F6_transfer' and r['radius']>arb(1)/36
        r=bound.reference_radius(arb.pi()/6,0)
        assert r['reason']=='uniform_family_tube'
        assert arb.pi()/96<arb(1)/30
        assert arb(1)/30-arb.pi()/288>arb(1)/48  # M<=1/4
        assert arb(1)/30-arb.pi()/144>arb(1)/96  # M<=1
        records.append(dict(precision=precision,checks='curve identities, analytic margin, uniform fallback, rational thresholds'))
    try:bound.reference_radius(arb('nan'),0)
    except ValueError:pass
    else:raise AssertionError('Nonfinite angle accepted')
    return records


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    started=time.monotonic();census=exact_census();grid=F6_grid();checks=controls()
    print('PASS: exact maximum formula and outward reference-margin controls',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',census=census,zero_grid=grid,controls=checks,
            scope='Explicit Fourier reference matrices and their transpose; not an off-family seed lift',seconds=time.monotonic()-started),indent=2)+'\n')


if __name__=='__main__':main()
