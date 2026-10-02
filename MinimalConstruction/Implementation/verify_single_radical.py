"""Exact generic moment identities and high-precision regression.
Run: python verify_single_radical.py. Requires SymPy and mpmath.
"""
from pathlib import Path
import json,random,itertools,collections
import sympy as sp
import mpmath as mp
from model import Model,inner,adj3,conjugate
from single_radical import SingleRadicalModel,AffineModel


def symbolic_checks():
    x=sp.symbols('x0:3',nonzero=True);y=sp.symbols('y0:3',nonzero=True);variables=x+y
    sharp=lambda f:f.xreplace({q:1/q for q in variables})
    S=sp.Matrix([[1,1,1],list(x),list(y)]);D=sp.expand(S.det())
    u=sp.prod(x);v=sp.prod(y);s=sum(x);t=sum(y);r=sum(y[j]/x[j]for j in range(3))
    Pi=s*t-sum(x[j]*y[j]for j in range(3));X=s*sharp(s);Y=t*sharp(t);Z=r*sharp(r)
    P=[r*s*s+sharp(r)*t*t+(3-Z)*s*t,
       t*sharp(s)**2+r*r*sharp(t)+(3-Y)*r*sharp(s),
       s*sharp(t)**2+sharp(r)**2*sharp(s)+(3-X)*sharp(r)*sharp(t)]
    identities=[sharp(P[0])-(9-Z)*sharp(Pi)+D*D/(u*v),
                sharp(P[1])-u*(9-Y)*sharp(Pi)+D*D/v,
                sharp(P[2])-v*(9-X)*sharp(Pi)+D*D/u]
    assert all(sp.expand(q)==0 for q in identities)
    NX=sp.Matrix([[s,3,sharp(r)],[s*s-2*u*sharp(s),s,s*sharp(r)-u*sharp(Pi)],
                  [s*t-Pi,t,s]])
    NY=sp.Matrix([[t,r,3],[s*t-Pi,t,s],
                  [t*t-2*v*sharp(t),t*r-v*sharp(Pi),t]])
    assert (S*sp.diag(*x)*S.T.applyfunc(sharp)-NX).applyfunc(sp.expand)==sp.zeros(3)
    assert (S*sp.diag(*y)*S.T.applyfunc(sharp)-NY).applyfunc(sp.expand)==sp.zeros(3)
    p,q,r0,t0=sp.symbols('p q r t');P,Q,R,T=sp.symbols('P Q R T')
    A=(P*r0-p*R)/(2*sp.I);Da=(Q*t0-q*T)/(2*sp.I)
    B=(P*t0+Q*r0-p*T-q*R)/(2*sp.I)
    C=(P*t0-Q*r0+p*T-q*R)/2
    assert sp.expand(B*B+C*C-4*A*Da-(p*t0-q*r0)*(P*T-Q*R))==0
    U,V,W,z=sp.symbols('U V W z',real=True)
    assert sp.expand((U-z*z*V)**2+4*z*z*(U*V-W*W)
                     -(U+z*z*V+2*z*W)*(U+z*z*V-2*z*W))==0
    return ['three universal side-product identities',
            'both moment matrices for arbitrary invertible phase side',
            'four-observable coverage identity',
            'root-free joint-sheet norm identity']


mp.mp.dps=80
rng=random.Random(921103)
maxima={};selection_counts=collections.Counter()

def check(name,val):
    err=max(abs(x)for x in val)if isinstance(val,mp.matrix)else abs(val)
    maxima[name]=max(maxima.get(name,mp.mpf(0)),err)
    assert err<mp.mpf('1e-56'),(name,mp.nstr(err,10))


def phases(n):
    return mp.matrix([mp.exp(2*mp.pi*mp.j*mp.mpf(str(rng.random()))) for _ in range(n)])


exact=symbolic_checks()
models=[];draws=0
while len(models)<40:
    seeds=phases(4);draws+=1;sheet=1 if len(models)%2==0 else -1
    try:m=SingleRadicalModel(seeds,sheet)
    except ValueError:continue
    old=Model(seeds,sheet)
    models.append((m,old))

minimum_bound_ratio=mp.inf
for m,old in models:
    g=m.g;H=old.hadamard();B=H[:3,3:];C=H[3:,:3]
    affine=AffineModel(m.seeds)
    tau=2*g*mp.im(m.zeta)
    for oldside,newside in [(m.h,affine.h),(m.v,affine.v)]:
        check('affine first moment',oldside.NX-newside['NX0']-tau*newside['NX1'])
        check('affine second moment',oldside.NY-newside['NY0']-tau*newside['NY1'])
    for side,S in [(m.h,B),(m.v,C.H)]:
        X=mp.diag([S[1,j]for j in range(3)]);Y=mp.diag([S[2,j]for j in range(3)])
        check('first moment matrix',side.NX-S*X*S.H)
        check('second moment matrix',side.NY-S*Y*S.H)
        check('row product X',side.ux-mp.fprod(S[1,j]for j in range(3)))
        check('row product Y',side.uy-mp.fprod(S[2,j]for j in range(3)))
        check('mixed permanent',side.Pi-side.s*side.t+sum(S[1,j]*S[2,j]for j in range(3)))
        selection_counts[side.choices[side.selected]['label']]+=1
        best=side.choices[side.selected]['area'];minimum_bound_ratio=min(minimum_bound_ratio,14*best/g)
        assert 14*best/g>1-mp.mpf('1e-56')
        for choice in side.choices:
            L=[choice['alpha']*S[1,j]+choice['beta']*S[2,j]for j in range(3)]
            V=mp.matrix([[1,1,1],[mp.re(q)for q in L],[mp.im(q)for q in L]])
            check('observable real Gram',choice['gram']-V*V.T)
            check('observable squared area',choice['area']-mp.det(V)**2)
    x,p=phases(3),phases(3);v,out=old.reconstruct_ray(x,p)
    N,Cv,Ch=m.compatibility(x,p);NN,Fv,Fh=m.all_compatibility(x,p)
    aa,bb=affine.coefficients([(x,p)])
    target=mp.matrix([N]+[part(z)for z in (*Fv,*Fh)for part in (mp.re,mp.im)])
    check('all affine equations',aa+tau*bb-target)
    result=affine.root_free_test([(x,p)])
    plus=aa+mp.sqrt(m.R)*bb;minus=aa-mp.sqrt(m.R)*bb
    lhs=result['P'];rhs=inner(plus,plus)*inner(minus,minus)
    check('root-free product relative error',(lhs-rhs)/(1+abs(rhs)))
    ev=mp.matrix([abs(q)**2-1 for q in v[3:]])
    eh=mp.matrix([abs(q)**2-1 for q in out[3:]])
    check('shared norm equation',N-NN)
    check('norm versus coordinate defect',N-g*sum(ev))
    for side,S,errors,forms,Cselected in [(m.v,C.H,ev,Fv,Cv),(m.h,B,eh,Fh,Ch)]:
        mom=mp.matrix([g*N,*forms])
        check('full weighted residuals',mom-g*g*S*errors)
        check('global positive identity',inner(mom,adj3(side.G)*mom)-g**5*inner(errors,errors))
        selected=side.choices[side.selected]
        rhs=mp.matrix([g*N,mp.re(Cselected),mp.im(Cselected)])
        check('selected positive identity',inner(rhs,adj3(selected['gram'])*rhs)-g**4*selected['area']*inner(errors,errors))
        expected=selected['alpha']*forms[0]+selected['beta']*forms[1]
        check('selected form recovery',Cselected-expected)
    xp,pp=phases(3),phases(3);vp,_=old.reconstruct_ray(xp,pp)
    check('unchanged seed-only overlaps',m.overlap_numerator(x,p,xp,pp)-g*inner(v,vp))

# A generic construction at random phases will not probe the zero-area cases.
# The side with X=(1,1,-1), Y=(1,-1,1) is invertible, but neither individual
# row distinguishes all probabilities. X+iY must work; verify exactly.
S=sp.Matrix([[1,1,1],[1,1,-1],[1,-1,1]])
areas=[]
for a,b in [(1,0),(0,1),(1,1),(1,sp.I)]:
    L=[a*S[1,j]+b*S[2,j]for j in range(3)]
    V=sp.Matrix([[1,1,1],[sp.re(z)for z in L],[sp.im(z)for z in L]])
    areas.append(sp.det(V)**2)
assert areas==[0,0,0,16]
exact.append('degenerate individual-observable example: areas 0,0,0,16')

# Independent exact-root carrier and a complete third basis, transported only
# by the finite side permutations used by the PDF representative.
w=mp.exp(mp.pi*mp.j/3)
ex=[[0,0,0,0,0,0],[0,3,1,4,5,2],[0,1,3,2,5,4],
    [0,4,0,2,2,4],[0,3,3,0,3,0],[0,0,4,4,2,2]]
H0=mp.matrix([[w**k for k in row]for row in ex]);cols=[0,1,3,2,4,5]
Hstar=mp.matrix([[mp.conj(H0[i,j])for j in cols]for i in range(6)])
eK=[[0,0,0,0,0,0],[1,3,5,7,9,11],[1,11,9,7,5,3],
    [4,8,0,4,8,0],[9,3,9,3,9,3],[4,0,8,4,0,8]]
w12=mp.exp(mp.pi*mp.j/6);K=mp.matrix([[w12**k for k in row]for row in eK])
seeds=[Hstar[1,1],Hstar[1,2],Hstar[2,1],Hstar[2,2]]
m=SingleRadicalModel(seeds);old=Model(seeds);H=old.hadamard();best=None
affine=AffineModel(seeds)
for rr in itertools.permutations(range(3,6)):
    for cc in itertools.permutations(range(3,6)):
        ri=[0,1,2]+list(rr);ci=[0,1,2]+list(cc)
        perm=mp.matrix([[Hstar[i,j]for j in ci]for i in ri]);err=max(abs(q)for q in H-perm)
        if best is None or err<best[0]:best=(err,ri)
check('known carrier alignment',best[0]);coords=[]
KK=mp.matrix([[K[i,j]for j in range(6)]for i in best[1]])
for j in range(6):
    v=KK[:,j];out=H.H*v/mp.sqrt(6);x=v[:3,:];p=out[:3,:]
    check('known third basis selected equations',mp.matrix(m.compatibility(x,p)))
    N,Fv,Fh=m.all_compatibility(x,p)
    check('known third basis all equations',mp.matrix([N,*Fv,*Fh]));coords.append((x,p))
for i in range(6):
    for j in range(6):
        check('known third basis overlaps',m.overlap_numerator(*coords[i],*coords[j])-(6*m.g if i==j else 0))
aa,bb=affine.coefficients(coords)
check('known third basis shared affine sheet',aa+mp.sqrt(m.R)*bb)
rootfree=affine.root_free_test(coords)
assert rootfree['W']<0
check('known third basis root-free relative equation',rootfree['P']/(1+rootfree['U']**2))

result={'status':'PASS','exact_checks':exact,'precision_decimal_digits':mp.mp.dps,
        'generic_strict_seeds':len(models),'seed_draws':draws,'both_sheets_tested':True,
        'observable_selection_counts':dict(selection_counts),
        'minimum_observed_14_area_over_g':mp.nstr(minimum_bound_ratio,12),
        'known_third_basis_rays':6,
        'maximum_absolute_residuals':{k:mp.nstr(v,8)for k,v in maxima.items()},
        'scope':'Exact symbolic identities plus numerical regression; global coverage is proved in SingleRadicalMeasurements.md conditional on the accepted PDF reconstruction.'}
Path(__file__).with_name('single_radical_verification.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
