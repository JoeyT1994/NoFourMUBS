"""Self-contained exact Fourier-family subcase of MC1.

Adapted from the local sources below: universal Laurent generation,
monomial corner maps, and the 400-corner census/F6 witnesses. No runtime
imports from ProvenResults and no appeal to its results as axioms.
ProvenResults/CornerBounds/verify.py SHA256 1c5ae3bb644e436cb8ec19e87661cece25f7e1807f0db817899c95f6a6b0efe1
ProvenResults/FourierNeighbourhood/SeedAtlas/atlas.py SHA256 9cdd8382d56d0d9d48cbcc6aaf1a67448afa5e2fd595fa8858331a4319b37dbc
ProvenResults/FourierNeighbourhood/SeedLifting/verify_fourier_max_R.py SHA256 f73c4b3b3ab2806b85353e13d31a9d5b617863e5bb74b9681067fd4b8c56f332
"""
from collections import Counter,defaultdict
from fractions import Fraction as Q
from itertools import combinations,permutations,product
import json
import sympy as sp

def generic_polynomials():
    seeds = sp.symbols('a b c d', nonzero=True)
    a,b,c,d = seeds
    conjugate = lambda e: sp.sympify(e).subs(
        {x:1/x for x in seeds}, simultaneous=True)
    s,t,r = -(1+a+b), -(1+c+d), -(1+c/a+d/b)
    X,Y,Z = [sp.expand(x*conjugate(x)) for x in (s,t,r)]
    p = X+Y+Z
    J = sp.expand(s*r*conjugate(t)+conjugate(s*r)*t)
    W = X*Y+X*Z+Y*Z-X*Y*Z

    def R(sign):
        g = 27-3*p+sign*J
        eta = 9-p+sign*J
        chi = W-(p-9)*(p-18)+(p-15)*sign*J
        return sp.expand(4*g*g*eta-chi*chi)

    columns = []
    for x,y in zip((sp.Integer(1),a,b),(sp.Integer(1),c,d)):
        z = y/x
        columns.extend([sp.Matrix([x,-1/x,0,0,-z,1/z]),
                        sp.Matrix([0,0,y,-1/y,z,-1/z])])
    D = sp.expand(sp.det(sp.Matrix.hstack(*columns)))
    assert sp.expand(R(-1)+D*D) == 0
    assert sp.expand(conjugate(D)+D) == 0
    print('PASS: universal Laurent identity R(p,-J,W) = -det(L)^2; det(L) is imaginary', flush=True)
    return seeds,D,R(1)


def laurent_terms(expr, variables):
    result = []
    for term in sp.expand(expr).as_ordered_terms():
        powers = term.as_powers_dict()
        exponents = tuple(int(powers.get(x,0)) for x in variables)
        coefficient = term/sp.prod(x**e for x,e in zip(variables,exponents))
        assert coefficient.is_Integer
        result.append((int(coefficient),exponents))
    return tuple(result)


def family_entry(row, col):
    """ξ^h z^x w^y in [[F,F],[F diag(1,z,w),-F diag(1,z,w)]]."""
    s, i = divmod(row, 3)
    t, j = divmod(col, 3)
    return (3*s*t + 2*i*j, s*int(j == 1), s*int(j == 2))


def dephase(entry, rows, cols, transpose=False):
    result = []
    for i, j in ((1, 1), (1, 2), (2, 1), (2, 2)):
        terms = (entry(rows[i], cols[j]), entry(rows[i], cols[0]),
                 entry(rows[0], cols[j]), entry(rows[0], cols[0]))
        v = tuple(terms[0][k]-terms[1][k]-terms[2][k]+terms[3][k] for k in range(3))
        result.append((v[0] % 6, v[1], v[2]))
    return tuple(result[i] for i in ((0, 2, 1, 3) if transpose else range(4)))


def exact_census():
    variables,D,R=generic_polynomials()
    dt,rt=laurent_terms(D,variables),laurent_terms(R,variables)
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
        return tuple(sorted((e,(c,0)) for c,e in laurent_terms(expr,(z,w))))
    expected=Counter({():256})
    for s,t in product((-1,1),repeat=2):
        expected[key(sp.expand(36*(X+s*Y+t*Z)**2))]+=36
    observed=Counter()
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            direct=evaluate(rt,dephase(family_entry,rows,cols))
            complement=tuple(j for j in range(6) if j not in cols)
            square=minus_square(evaluate(dt,dephase(family_entry,rows,complement)))
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
        phases=[[((lambda h,x,y:h+a*x+b*y)(*family_entry(i,j)))%6
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


if __name__=='__main__':
    census=exact_census()
    grid=F6_grid()
    print(json.dumps(dict(status='PASS_EXACT_FOURIER_CRITICAL_LOCUS',
                         census=census,zero_grid=grid,
                         scope='The explicit Fourier family, its transpose and their monomial equivalences only; not global MC1.'),indent=2))
