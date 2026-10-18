"""Independent exact identities and numerical integration checks.

Run this file from any working directory. Requires SymPy, NumPy and mpmath.
Writes COMPACT_FOURIER_VERIFICATION.json beside this script.
"""
import json
import random
from itertools import permutations
from pathlib import Path
import mpmath as mp
import numpy as np
import sympy as sp
import compact_fourier as cf
import verify_fourier as old

ROOT = Path(__file__).resolve().parent
report = {}


def exact_checks():
    A,B,C,D,Ab,Bb,Cb,Db = sp.symbols('A B C D Ab Bb Cb Db')
    n,k,delta = A*Ab+B*Bb,C*Ab+D*Bb,A*D-B*C
    alpha,gamma = A*B,A*D+B*C
    assert sp.expand(n*gamma-2*alpha*k-(A*Ab-B*Bb)*delta)==0
    assert sp.expand(A*k-Bb*delta-n*C)==0
    assert sp.expand(B*k+Ab*delta-n*D)==0
    M=sp.Matrix([[Ab,Bb],[-B,A]])
    Ms=sp.Matrix([[A,-Bb],[B,Ab]])
    assert M*Ms==n*sp.eye(2)
    assert sp.expand(n*(C*Cb+D*Db)-k*(Cb*A+Db*B)-delta*(Ab*Db-Bb*Cb))==0
    w=(-1+sp.I*sp.sqrt(3))/2
    red=lambda v:sp.simplify(sp.cancel(sp.expand(v)))
    x=sp.symbols('x0:3',nonzero=True)
    mu=sum(x)/3
    aa=sum(x[j]*w**(-j) for j in range(3))/3
    bb=sum(x[j]*w**j for j in range(3))/3
    abar=sum(w**j/x[j] for j in range(3))/3
    bbar=sum(w**(-j)/x[j] for j in range(3))/3
    mubar=sum(1/v for v in x)/3
    u=sp.prod(x)
    assert red(aa*bb-mu**2+u*mubar)==0
    assert red(aa*abar+bb*bbar-1+mu*mubar)==0
    assert red(aa**3-u*aa*abar-mu*aa*bb)==0
    discriminant=sp.prod((x[i]-x[j])**2 for i in range(3) for j in range(i))
    assert red(discriminant+27*u*u*(aa*abar-bb*bbar)**2)==0
    mu,nu=sp.symbols('mu nu')
    X=sp.Matrix([[1]*3,[mu+A*w**j+B*w**(-j) for j in range(3)],
                 [nu+C*w**j+D*w**(-j) for j in range(3)]])
    assert red(X.det()+3*sp.I*sp.sqrt(3)*delta)==0
    alpha,rho,tau,k,delta,n=sp.symbols('alpha rho tau k delta n',nonzero=True)
    alphabar=sp.Symbol('alphabar')
    # Substitute conjugate(tau)=rho/tau and conjugate(alpha/tau)=alphabar*tau/rho.
    gp=(k*tau-delta*alphabar*tau/rho)/n
    gm=(k*alpha/tau+delta*rho/tau)/n
    assert red(gp/tau-(k*rho-delta*alphabar)/(n*rho))==0
    assert red(gm*tau-(k*alpha+delta*rho)/n)==0
    # Exact edge cases from actual phase triples.
    vals=[1,w,sp.I*w**2]
    a=red(sum(vals[j]*w**(-j) for j in range(3))/3)
    b=red(sum(vals[j]*w**j for j in range(3))/3)
    assert red(a-(2+sp.I)/3)==0 and red(b-(sp.I-1)*w/3)==0
    assert red(a**3-(2+11*sp.I)/27)==0
    repeated=[w,w**2,w**2]
    ar=red(sum(repeated[j]*w**(-j) for j in range(3))/3)
    br=red(sum(repeated[j]*w**j for j in range(3))/3)
    assert sp.simplify(ar*sp.conjugate(ar)-br*sp.conjugate(br))==0
    assert red(ar**3+sp.I/(3*sp.sqrt(3)))==0
    report['exact']={key:True for key in [
        'Fourier_power_difference','scaled_unitary_linear_solve','covariance_determinant',
        'phase_Laurent_centered_product','phase_Laurent_variance','two_term_cube',
        'coordinate_discriminant','oriented_block_determinant','quadratic_stage_L',
        'zero_old_pivot_example','repeated_coordinate_example']}
    print('PASS exact identities',flush=True)


def maxabs(M):
    return max(abs(v) for v in M)


def side_distance(A,B):
    return min(max(abs(A[i,j]-B[i,p[j]]) for i in range(3) for j in range(3))
               for p in permutations(range(3)))


def numerical_checks():
    random.seed(20260920)
    worst={k:mp.mpf(0) for k in ['flatness','unitarity','side_gram','L_factorization',
        'cube_amplitude','power_difference_imaginary','vertical_intensities','horizontal_intensities',
        'pair_overlap','side_permutations','old_double_precision_comparison']}
    count=0
    with mp.workdps(80):
        F3=cf.fourier3(); w=mp.exp(2j*mp.pi/3)
        samples=[]
        while len(samples)<100:
            angles=[str(random.uniform(-3.14159,3.14159)) for _ in range(4)]
            try: cf.from_angles(angles,dps=80)
            except cf.DomainError: continue
            samples.append(angles)
        for angles in samples:
            for sheet in (-1,1):
                out=cf.from_angles(angles,sheet=sheet,dps=80)
                H=out.matrix; E=out.corner
                worst['flatness']=max(worst['flatness'],max(abs(abs(v)-1) for v in H))
                worst['unitarity']=max(worst['unitarity'],maxabs(H*H.H-6*mp.eye(6)))
                for sd,zeta in [(out.horizontal,out.zeta),(out.vertical,mp.conj(out.zeta))]:
                    worst['side_gram']=max(worst['side_gram'],maxabs(sd.matrix*sd.matrix.H-sd.gram))
                    worst['L_factorization']=max(worst['L_factorization'],maxabs(sd.matrix-sd.L*mp.diag([1,sd.tau,1/sd.tau])*F3))
                    worst['cube_amplitude']=max(worst['cube_amplitude'],abs(abs(sd.cube)**2-sd.rho**3))
                    worst['power_difference_imaginary']=max(worst['power_difference_imaginary'],abs(mp.im((sd.n*sd.gamma-2*sd.alpha*sd.k)/sd.delta)))
                    assert sd.rho >= sd.n/2 and sd.rho>0
                    oldside=old.side(np.array(sd.gram.tolist(),dtype=complex),complex(zeta))['X']
                    olderror=side_distance(sd.matrix,oldside)
                    worst['old_double_precision_comparison']=max(worst['old_double_precision_comparison'],olderror)
                    if count<12:
                        for b in (0,1,2):
                            new=cf.side(sd.gram,zeta,cube_branch=b,determinant_sign=-1)
                            worst['side_permutations']=max(worst['side_permutations'],side_distance(sd.matrix,new.matrix))
                FF=out.vertical.gram.T
                rays=[]
                for _ in range(2):
                    v=[mp.exp(1j*mp.mpf(str(random.uniform(-3,3)))) for j in range(5)]
                    p=mp.matrix([1,*v[:2]]); xi=mp.matrix(v[2:])
                    c=mp.lu_solve(FF,mp.sqrt(6)*xi-E.H*p); ell=p-E*c
                    zv=out.vertical.L.T*c; zh=out.horizontal.L.H*ell
                    cv=cf.phi(zv,out.vertical)/out.vertical.tau
                    ch=cf.phi(zh,out.horizontal,True)/mp.conj(out.horizontal.tau)
                    actualv=out.vertical.matrix.T*c
                    actualh=out.horizontal.matrix.H*ell
                    nv=(c.H*FF*c)[0]/3; nh=(ell.H*out.horizontal.gram*ell)[0]/3
                    worst['vertical_intensities']=max(worst['vertical_intensities'],
                        max(abs(abs(actualv[j])**2-nv-2*mp.re(w**(-j)*cv)) for j in range(3)))
                    worst['horizontal_intensities']=max(worst['horizontal_intensities'],
                        max(abs(abs(actualh[j])**2-nh-2*mp.re(w**j*ch)) for j in range(3)))
                    rays.append((p,c,mp.matrix(list(p)+list(actualv))))
                p,c,q=rays[0]; pp,cc,qq=rays[1]
                worst['pair_overlap']=max(worst['pair_overlap'],abs((q.H*qq-p.H*pp-c.H*FF*cc)[0]))
                count+=1
        # Inherited boundary and coordinate-collision examples. Near-zero R is
        # rounded only in the explicitly requested numerical boundary mode.
        examples=[]
        for phases in [(1,w,w,1),(-1,-1,-1,1j),(1j,-1j,-1j,1j),(-1,-1j,1,1j)]:
            for sheet in (-1,1):
                out=cf.from_phases(phases,sheet=sheet,dps=80,allow_boundary=True)
                err=max(max(abs(abs(v)-1) for v in out.matrix),maxabs(out.matrix*out.matrix.H-6*mp.eye(6)))
                assert err<mp.mpf('1e-65')
                examples.append({'phases':[str(v) for v in phases], 'sheet':sheet,
                                 'R':mp.nstr(out.R,12),'error':mp.nstr(err,12),
                                 'boundary_roundoff_used':out.boundary_roundoff_used})
        # Side-only edge cases use the invariant computed directly from the
        # phase block, independently of the seed reconstruction.
        edge=[]
        for name,X in [('zero_old_pivot',mp.matrix([[1,1,1],[1,w,1j*w*w],[1,w,w*w]])),
                       ('zero_mean',mp.matrix([[1,1,1],[1,w,w*w],[1,1,1j]]))]:
            det=mp.det(X); per=sum(mp.fprod(X[i,p[i]] for i in range(3)) for p in permutations(range(3)))
            theta=-per*det**2/(abs(det)**2*mp.fprod(X))
            sd=cf.side(X*X.H,theta)
            err=side_distance(sd.matrix,X)
            assert err<mp.mpf('1e-65')
            edge.append({'case':name,'permutation_error':mp.nstr(err,12)})
        for key,value in worst.items():
            assert value < (mp.mpf('1e-6') if key=='old_double_precision_comparison' else mp.mpf('1e-60')), (key,value)
        report['numerical']={'precision_digits':80,'strict_seeds':100,'matrices':count,
                             'arbitrary_ray_inputs':2*count,
                             'maximum_absolute_residuals':{k:mp.nstr(v,12) for k,v in worst.items()},
                             'seed_examples':examples,'side_edge_examples':edge,
                             'scope':'Independent floating-point diagnostics; not interval certification or physical pair witnesses.'}
    print('PASS reconstruction and measurement integration',flush=True)


if __name__=='__main__':
    exact_checks()
    numerical_checks()
    report['status']='PASS'
    (ROOT/'COMPACT_FOURIER_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
