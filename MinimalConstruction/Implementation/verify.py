"""Exact Fourier algebra plus high-precision independent block checks.

Usage: python verify.py. Writes verification.json beside this file.
The numerical cases are regression tests, not coverage certificates.
Global equivalence is proved in MeasurementCoordinates.md.
"""
from pathlib import Path
import json,random,itertools
import sympy as sp
import mpmath as mp
from model import Model,adj3,inner,norm2,conjugate


def symbolic_checks():
    # Formal conjugate symbols prove the Fourier formula as a polynomial identity.
    a,b,c,A,B,C=sp.symbols('a b c A B C')
    w=sp.symbols('w',nonzero=True)
    om=(-1+sp.sqrt(3)*sp.I)/2
    vals=[a+b/w*om**j+c*w*om**(-j) for j in range(3)]
    valsbar=[A+B*w*om**(-j)+C/w*om**j for j in range(3)]
    mean=a*A+b*B+c*C
    Q=w**3*(a*B+c*A)+b*C
    Qbar=(A*b+C*a)/w**3+B*c
    res=sp.expand(sum((v*vb-1)**2 for v,vb in zip(vals,valsbar)))
    assert sp.simplify(res-3*(mean-1)**2-6*Q*Qbar)==0
    # The opposite Fourier convention is w -> 1/w, omega -> 1/omega.
    tQ=a*B+c*A+w**3*b*C
    tQbar=A*b+C*a+B*c/w**3
    res2=res.subs(w,1/w)
    assert sp.simplify(res2-3*(mean-1)**2-6*tQ*tQbar)==0
    # Adjugates used in all displayed formulas really are cofactors, no solve.
    aa=sp.Matrix(3,3,sp.symbols('a0:9'))
    assert (aa*aa.adjugate()-sp.det(aa)*sp.eye(3)).applyfunc(sp.expand)==sp.zeros(3)
    return ['three-point Fourier residual identity',
            'opposite Fourier residual identity','adjugate identity']


mp.mp.dps=70
rng=random.Random(921067)
maxima={}

def check(name,val):
    err=max(abs(x) for x in val) if isinstance(val,mp.matrix) else abs(val)
    maxima[name]=max(maxima.get(name,mp.mpf(0)),err)
    assert err<mp.mpf('1e-48'),(name,mp.nstr(err,10))


def phases(n):
    return mp.matrix([mp.exp(2*mp.pi*mp.j*mp.mpf(str(rng.random()))) for _ in range(n)])


exact=symbolic_checks()
models=[];attempts=0
while len(models)<40:
    seeds=phases(4);attempts+=1
    try:m=Model(seeds,1 if len(models)%2==0 else -1)
    except ValueError:continue
    models.append(m)

branch_cases=0
for mi,m in enumerate(models):
    E=m.E;g=m.g
    check('horizontal Gram',3*m.h.M*m.h.M.H-m.Gh)
    check('vertical Gram',3*conjugate(m.v.M)*m.v.M.T-m.T)
    check('horizontal determinant modulus',abs(mp.det(m.h.M))**2-g/27)
    check('vertical determinant modulus',abs(mp.det(m.v.M))**2-g/27)
    check('horizontal phase target',abs(m.h.xi)**2-1)
    check('vertical phase target',abs(m.v.xi)**2-1)
    check('seed-only numerator Gram',m.Av.H*m.Av-m.JT/9)
    x,p,xp,pp=[phases(3) for _ in range(4)]
    z,r,t=m.coefficients(x,p);N,Cv,Ch=m.compatibility(x,p)
    check('one common norm',norm2(r)-norm2(t))
    check('norm numerator',N-(9*norm2(r)-3*g))
    for bh,bv in (list(itertools.product(range(3),repeat=2)) if mi<3 else [(0,0)]):
        branch_cases+=1
        H=m.hadamard(bh,bv)
        check('Hadamard unitarity',H.H*H-6*mp.eye(6))
        check('Hadamard entry modulus',mp.matrix([abs(q)**2-1 for q in H]))
        check('seed recovery',H[:3,:3]-E)
        v,out=m.reconstruct_ray(x,p,bh,bv)
        vp,outp=m.reconstruct_ray(xp,pp,bh,bv)
        check('transition reconstruction',H.H*v/mp.sqrt(6)-out)
        check('mixed coordinate recovery',mp.matrix(list(v[:3])+list(out[:3]))-mp.matrix(list(x)+list(p)))
        check('seed-only overlap',m.overlap_numerator(x,p,xp,pp)-g*inner(v,vp))
        defect=sum((abs(q)**2-1)**2 for q in list(v[3:])+list(out[3:]))
        rhs=mp.mpf(2)/3*N*N+54*(abs(Cv)**2+abs(Ch)**2)
        check('global SOS identity',g*g*defect-rhs)
    # The linear reconstruction and overlap identity hold without flatness.
    xx=mp.matrix([mp.mpc(str(rng.random()),str(rng.random())) for _ in range(3)])
    pp0=mp.matrix([mp.mpc(str(rng.random()),str(rng.random())) for _ in range(3)])
    zz,rr,tt=m.coefficients(xx,pp0)
    check('general norm balance',9*(norm2(rr)-norm2(tt))-g*(norm2(pp0)-norm2(xx)))

# An exact known positive-sheet carrier has a 12th-root third basis.
# Its side permutations can differ from the PDF root conventions. Transport
# the known rays by the matching lower-row permutation before testing them.
w=mp.exp(mp.pi*mp.j/3)
ex=[[0,0,0,0,0,0],[0,3,1,4,5,2],[0,1,3,2,5,4],
    [0,4,0,2,2,4],[0,3,3,0,3,0],[0,0,4,4,2,2]]
H0=mp.matrix([[w**k for k in row]for row in ex])
cols=[0,1,3,2,4,5]
Hstar=mp.matrix([[mp.conj(H0[i,j]) for j in cols]for i in range(6)])
eK=[[0,0,0,0,0,0],[1,3,5,7,9,11],[1,11,9,7,5,3],
    [4,8,0,4,8,0],[9,3,9,3,9,3],[4,0,8,4,0,8]]
w12=mp.exp(mp.pi*mp.j/6)
K=mp.matrix([[w12**k for k in row]for row in eK])
m=Model([Hstar[1,1],Hstar[1,2],Hstar[2,1],Hstar[2,2]])
H=m.hadamard();best=None
for rr in itertools.permutations(range(3,6)):
    for cc in itertools.permutations(range(3,6)):
        ri=[0,1,2]+list(rr);ci=[0,1,2]+list(cc)
        perm=mp.matrix([[Hstar[i,j] for j in ci]for i in ri])
        err=max(abs(x)for x in H-perm)
        if best is None or err<best[0]:best=(err,ri,ci)
check('known carrier root permutations',best[0])
KK=mp.matrix([[K[i,j]for j in range(6)]for i in best[1]])
coords=[]
for j in range(6):
    v=KK[:,j];out=H.H*v/mp.sqrt(6);x=v[:3,:];p=out[:3,:]
    N,Cv,Ch=m.compatibility(x,p)
    check('known third basis compatibility',mp.matrix([N,Cv,Ch]))
    coords.append((x,p))
for j in range(6):
    for k in range(6):
        ov=m.overlap_numerator(*coords[j],*coords[k])
        check('known third basis orthogonality',ov-(6*m.g if j==k else 0))

result={'status':'PASS','exact_symbolic_checks':exact,'precision_decimal_digits':mp.mp.dps,
        'generic_strict_seeds':len(models),'seed_draws':attempts,'both_sheets_tested':True,
        'reconstruction_branch_cases':branch_cases,'known_basis_rays':6,
        'maximum_absolute_residuals':{k:mp.nstr(v,8)for k,v in maxima.items()},
        'scope':'Regression evidence. General equivalence and coverage follow from the written proof and the accepted PDF reconstruction inputs.'}
Path(__file__).with_name('verification.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
