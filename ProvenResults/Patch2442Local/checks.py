"""Independent exact algebra, arithmetic, symmetry and negative controls."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from fractions import Fraction as Q
from itertools import product
from math import factorial,isqrt
import json,importlib.util,time
from intervals import IV,CX,SCALE,SQRT3,exprel
from geometry import PI,SEEDS,PERMS,parse_box,local_offsets,in_punctured_ball,classify
from cones import RADIUS
from formal import K,Jet,direction
HERE=Path(__file__).resolve().parent

def factorization_checks():
    import sympy as S
    from sympy.polys.rings import ring
    from sympy.polys.domains import QQ
    data=json.loads((HERE/'symbolic_coefficients.json').read_text());expected=json.loads((HERE/'Q26_coefficients.json').read_text())
    rr,*u=ring('u1,u2,u3,u4',QQ)
    def read(tab):return (rr.from_dict({tuple(e):QQ(a) for e,a,b in tab if a!='0'}),rr.from_dict({tuple(e):QQ(b) for e,a,b in tab if b!='0'}))
    mul=lambda x,y:(x[0]*y[0]+3*x[1]*y[1],x[0]*y[1]+x[1]*y[0])
    add=lambda x,y:(x[0]+y[0],x[1]+y[1])
    scale=lambda x,c:(x[0]*c,x[1]*c)
    R4,R5,R6=[read(data['R'][str(k)]) for k in (4,5,6)]
    x,y,z,w=u;d=x*w-y*z
    X=x*x-x*y+y*y;Y=z*z-z*w+w*w;Z=(z-x)**2-(z-x)*(w-y)+(w-y)**2;xyz=X*Y*Z
    L1=2*x*y-x*w-y*z+2*z*w
    L2=2*x*x-2*x*y-2*x*z+x*w+y*z+2*z*z-2*z*w
    L3=2*x*y-x*w-2*y*y-y*z+2*y*w+2*z*w-2*w*w
    assert L1*L2-L1*L3-L2*L3==3*d*d
    qs=[L1*L2,-L1*L3,-L2*L3]
    reduced=[]
    for idx,pair in enumerate(data['pairs']):
        A0,A1,A2=[read(pair['A'][str(k)]) for k in (12,13,14)]
        B0,B1,B2=[read(pair['B'][str(k)]) for k in (10,11,12)]
        q26=add(add(mul(A1,A1),scale(mul(A0,A2),2)),scale(add(add(mul(add(mul(B1,B1),scale(mul(B0,B2),2)),R4),scale(mul(mul(B0,B1),R5),2)),mul(mul(B0,B0),R6)),-1))
        assert not q26[1]
        target=3**17*d*d*xyz**3*qs[idx]
        assert q26[0]==target
        retained=rr.from_dict({tuple(e):QQ(c) for e,c in expected[idx]['terms']})
        assert expected[idx]['pair']==pair['pair'] and retained==target
        pol=qs[idx]**2-81*d**4
        reduced.append({'pair':pair['pair'],'terms':[[list(e),str(c)] for e,c in sorted(pol.items())]})
    # F52=3^34 d^4 (XYZ)^6 * (Q_i^2-81d^4); no numerical tests needed.
    retained_path=HERE/'F52_reduced_polynomials.json'
    if retained_path.exists():assert reduced==json.loads(retained_path.read_text())
    return {'status':'PASS','Q26_factored_identities':3,'quartic_relation':True,'F52_factors':3},reduced

def ray_checks():
    v=[Q(-1),Q(0),Q(0),Q(-1)];R,de,AB=direction(v,18)
    assert R.valuation()==4 and R.v[4]==243
    assert de.valuation()==12 and de.v[12]==6561
    records=[]
    for idx,(A,B) in enumerate(AB):
        assert A.valuation()==12 and B.valuation()==10
        # Inputs through order 18 determine C through 30, T through 28,
        # and therefore F through 54. Higher padded coefficients are not used.
        a,b,r,d=[Jet(z.v,54) for z in (A,B,R,de)]
        C=a*a+(b*b-9*d*d)*r;T=2*a*b;F=C*C-T*T*r
        assert C.v[24]==K(Q(3**21,2))
        assert all(z==0 for z in F.v[:52])
        if idx<2:assert F.v[52]==-72*3**40
        else:
            assert F.v[52]==0
            assert F.v[53]==K(0,-600*3**40)
        records.append({'pair':[[0,1],[0,2],[1,2]][idx],
                        'F52':[str(x) for x in F.v[52].v],
                        'F53':[str(x) for x in F.v[53].v]})
    return {'status':'PASS','direction':['-1','0','0','-1'],'transpose_fixed':True,
            'interpretation':'All six separate C>0,F>0 tests fail for sufficiently small positive radial parameter; not a physical counterexample.',
            'pairs':records}

def arithmetic_checks():
    values=[Q(-7,3),Q(-1),Q(-1,2),Q(0),Q(1,2),Q(1),Q(13,7),Q(1,2**150),Q(2**100)]
    tests=0
    def has(z,x):return Q(z.lo,SCALE)<=x<=Q(z.hi,SCALE)
    for a,b in product(values,repeat=2):
        assert has(IV(a)+IV(b),a+b);assert has(IV(a)*IV(b),a*b)
        assert has(IV(a)-IV(b),a-b);tests+=3
        if b and not (IV(b).lo<=0<=IV(b).hi):assert has(IV(a)/IV(b),a/b);tests+=1
    for a,b in [(Q(-2),Q(3)),(Q(-3),Q(-1)),(Q(1,5),Q(2,3))]:
        z=IV(a,b)
        assert has(z**2,a*a) and has(z**2,b*b)
        if a<=0<=b:assert has(z**2,0)
    assert SQRT3.lo**2<=3*SCALE*SCALE<=SQRT3.hi**2
    assert PI.lo>3*SCALE and PI.hi*7<22*SCALE
    t=Q(1,5);tan2=2*t/(1-t*t);tan4=2*tan2/(1-tan2*tan2)
    assert (tan4-Q(1,239))/(1+tan4/Q(239))==1
    rem=Q(2**13)*RADIUS**12/factorial(13)
    assert rem==Q(2187,763702392578125000000000) and rem<Q(1,10**20)
    for v in [Q(-2),Q(-1,3),Q(0),Q(1),Q(2)]:
        z=exprel(IV(v),IV(0));assert z.re.contains(0) and has(z.im,v)
    return {'status':'PASS','exact_arithmetic_comparisons':tests,'precision_bits':112,'uniform_exprel_remainder_bound':str(rem)}

def physical_and_frame_checks():
    path=HERE/'inputs/repo/ProvenResults/Patch2442Region_v3/physical_algebra.py'
    spec=importlib.util.spec_from_file_location('pinned_physical_algebra',path);alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg)
    D,R=alg.corner_algebra();physical=alg.physical_controls(D,R)
    assert R.star()==R
    # Integer linear maps implementing all 36 row/column rephasings.
    U=[[(0,0,0,0)]*3 for _ in range(3)]
    U[1][1]=(1,0,0,0);U[1][2]=(0,1,0,0);U[2][1]=(0,0,1,0);U[2][2]=(0,0,0,1)
    matrices=[]
    for rows in PERMS:
        for cols in PERMS:
            r0,c0=rows[0],cols[0]
            M=[tuple(U[i][j][k]-U[i][c0][k]-U[r0][j][k]+U[r0][c0][k] for k in range(4)) for i in rows[1:] for j in cols[1:]]
            target={}
            for e,co in R.d.items():
                f=tuple(sum(e[i]*M[i][j] for i in range(4)) for j in range(4));target[f]=target.get(f,Q(0))+co
            assert {e:co for e,co in target.items() if co}==R.d
            base=[((i-r0)*(j-c0))%3 for i in rows[1:] for j in cols[1:]]
            assert base in ([1,2,2,1],[2,1,1,2])
            matrices.append({'rows':list(rows),'cols':list(cols),'matrix':[list(x) for x in M],'base_cube_root_exponents':base})
    neg=[]
    for delta in [Q(1,100),Q(1,5),Q(1,2)]:
        exact=[-2*PI/3,-PI/3+delta,IV(0),-PI+delta]
        for tr in (False,True):
            z=[exact[i] for i in ([0,2,1,3] if tr else [0,1,2,3])]
            c=[Q(x.lo+x.hi,2*SCALE) for x in z];rad=Q(1,10**8)
            assert all(IV(cc-rad,cc+rad).contains(x) for cc,x in zip(c,z))
            rec={'id':f'physical_{delta}_{tr}','centers':list(map(str,c)),'radii':[str(rad)]*4}
            ans=classify(rec);assert not ans['ok']
            # The zero coordinate has circular distance exactly 2pi/3
            # from both target seeds, irrespective of delta.
            assert (2*PI/3).lo>IV(RADIUS).hi
            neg.append({'delta':str(delta),'transpose':tr,'distance_lower_bound':'2*pi/3','result':ans})
    return {'status':'PASS','physical_census':physical,'negative_controls':neg,'frame_identities':len(matrices)},matrices

def geometry_controls():
    def box(off,r=Q(1,10**8),seed=SEEDS[0],periods=(0,0,0,0)):
        angles=[PI*(Q(n,3)+2*k)+x for n,k,x in zip(seed,periods,off)]
        return {'id':'geometry_control','centers':[str(Q(x.lo+x.hi,2*SCALE)) for x in angles],'radii':[str(r)]*4}
    records=[]
    for seed in SEEDS:
        for sign in (-1,1):
            off=[sign*Q(1,25),0,0,sign*Q(1,25)]
            for periods in [(0,0,0,0),(5,-7,11,-13)]:
                z=classify(box(off,seed=seed,periods=periods));assert z['ok'];records.append(z)
    tests=[box([Q(7,100),0,0,Q(7,100)]),box([0]*4,Q(1,1000)),
           box([Q(59,1000),0,0,Q(59,1000)],Q(1,100)),
           box([Q(1,25),0,Q(1,25),0])]
    for rec in tests:
        z=classify(rec);assert not z['ok'];records.append(z)
    bad=box([Q(1,25),0,0,Q(1,25)]);bad['radii'][0]='-1';assert not classify(bad)['ok']
    bad=box([Q(1,25),0,0,Q(1,25)]);bad['centers'][0]=0.5;assert not classify(bad)['ok']
    return {'status':'PASS','geometric_controls':records,'invalid_input_controls':2}
