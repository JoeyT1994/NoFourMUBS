"""Independent audit of the supplied phase-gate note, not its missing verifier."""
from pathlib import Path
from itertools import permutations
import sys,json,random
import sympy as sp
import mpmath as mp

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
import single_sheet as previous
from compact_fourier import fourier3,adjugate3

report={}


def exact():
    w,xi,a,b,abar,bbar,C,Cbar=sp.symbols('w xi a b abar bbar C Cbar',nonzero=True)
    # Use the known locking relation a*conj(m)+m*conj(b)=-b*conj(a)*xi.
    coefficient=(-b*abar*xi)/w+b*abar*w*w
    assert sp.cancel(coefficient-b*abar*(w**3-xi)/w)==0
    starcoef=(-bbar*a/xi)*w+bbar*a/(w*w)
    target=(w**3-xi)*(1/w**3-1/xi)
    assert sp.cancel(coefficient*starcoef-a*abar*b*bbar*target)==0
    omega=(-1+sp.I*sp.sqrt(3))/2
    assert sp.simplify(sp.expand(sum((C*omega**j+Cbar*omega**(-j))**2 for j in range(3))-6*C*Cbar))==0
    tau,rho,sigma=sp.symbols('tau rho sigma',nonzero=True)
    # tau_bar=rho/tau, T=tau^3, sigma=T/rho, w=tau/tau_bar.
    ww=tau*tau/rho; sig=tau**3/rho
    assert sp.cancel(ww**3-sig**2/rho)==0
    assert sp.cancel(sig/ww-tau)==0
    # Measurement identity: Psi_old=sigma*Omega_new after |sigma|^2=rho.
    z0,z1,z2,b0,b1,b2=sp.symbols('z0 z1 z2 b0 b1 b2')
    sb=rho/sigma
    Omega=z0*sb*b1+sb*z2*b0+(rho/sigma**2)*(sigma*z1)*(sigma*b2)
    Psi=rho*(z0*b1+z2*b0)+rho*sigma*z1*b2
    assert sp.cancel(sigma*Omega-Psi)==0
    # Correlation of diag(1,conj(w),w)*y at a locked gate, w^3=xi.
    corr=w*(z0*b1+z2*b0)+z1*b2/(w*w)
    Om=z0*b1+z2*b0+z1*b2/(w**3)
    assert sp.cancel(corr-w*Om)==0
    # Explicit nontrivial phase radicand.
    A=(2+sp.I)/3; rho=sp.Rational(5,9); sig=(2+11*sp.I)/15
    xi=(-117+44*sp.I)/125; ww=(3+4*sp.I)/5
    clean=lambda v:sp.simplify(sp.expand_complex(v))
    assert clean(sig**2/rho-xi)==0 and clean(ww**3-xi)==0
    assert clean(sig*sp.conjugate(ww)-A)==0
    # Exact H_cross core: Fourier transform the supplied actual sides, then
    # verify the claimed w=1 factorization and both weights independently.
    I=sp.I
    H=sp.Matrix([[1,1,1,1,1,1],[1,-1,-1,1,I,-I],[1,-1,I,-1,-I,1],
                 [1,1,-1,I,-I,-1],[1,I,-I,-I,-1,I],[1,-I,1,-1,I,-1]])
    F=sp.Matrix(3,3,lambda j,k:clean(omega**(j*k)))
    E=H[:3,:3]; B=H[:3,3:]; Cv=H[3:,:3]
    Mh=(B*F.H/3).applyfunc(clean); Mv=(Cv.T*F.H/3).applyfunc(clean)
    Gh=6*sp.eye(3)-E*E.H
    K=(E.row_join(sp.sqrt(3)*Mh).col_join((sp.sqrt(3)*Mv.T).row_join(-3*Mv.T*E.H*Gh.inv()*Mh))/sp.sqrt(6)).applyfunc(clean)
    FF=sp.diag(sp.eye(3),F/sp.sqrt(3))
    assert all(clean(v)==0 for v in K*K.H-sp.eye(6))
    assert all(clean(v)==0 for v in sp.sqrt(6)*FF*K*FF-H)
    assert H*H.H==6*sp.eye(6)
    weights=[]
    for M in (Mh,Mv):
        weight=clean(6*sum(abs(M[i,1]*M[i,2])**2 for i in (1,2)))
        assert weight==sp.Rational(16,27)
        assert clean(M[1,1]-(1+sp.sqrt(3))/3)==0
        weights.append(str(weight))
    report['exact']={'row_residual_factorization':True,'three_point_sum_of_squares':True,
        'unit_phase_root_equivalence':True,'cube_free_measurement_rewrite':True,
        'nontrivial_phase_radicand_example':True,'Hcross_core_unitarity':True,
        'Hcross_factorization':True,'Hcross_side_weights':weights}
    print('PASS exact new identities and H_cross',flush=True)


def maximum(M):return max(abs(v) for v in M)


def block(A,B,C,D):
    M=mp.matrix(6)
    for i in range(3):
        for j in range(3):M[i,j],M[i,j+3],M[i+3,j],M[i+3,j+3]=A[i,j],B[i,j],C[i,j],D[i,j]
    return M


def numerical():
    worst={k:mp.mpf(0) for k in ['core_unitarity','unit_target_modulus','arbitrary_orbit_unitarity',
        'locked_reconstruction','side_residual_identity','measurement_moment_identity',
        'all_nine_branch_permutations']}
    rng=random.Random(20260922);count=0
    with mp.workdps(80):
        F=fourier3(); FF=mp.diag([1,1,1,1,1,1]); FF[3:,3:]=F/mp.sqrt(3)
        gate=lambda w:mp.diag([1,1,1,1,mp.conj(w),w])
        while count<30:
            phases=[mp.exp(1j*mp.mpf(str(rng.uniform(-3.14,3.14)))) for _ in range(4)]
            a,b,c,d=phases; E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
            if previous.scalar_data(6*mp.eye(3)-E*E.H)[3]<=0:continue
            out=previous.from_phases(phases,dps=80); E=out.adapted_corner
            data=[]
            for sd in (out.horizontal,out.vertical):
                sigma=sd.cube/sd.rho; target=sigma*sigma/sd.rho
                M=sd.L*mp.diag([1,sigma,mp.conj(sigma)])
                weight=6*sum(abs(M[i,1]*M[i,2])**2 for i in (1,2))
                assert weight>0 and maximum(M)<=1+mp.mpf('1e-60')
                worst['unit_target_modulus']=max(worst['unit_target_modulus'],abs(abs(target)-1))
                locking=sd.tau/mp.conj(sd.tau)
                data.append((M,target,weight,locking,sd))
            Mh,Mv=data[0][0],data[1][0]
            K=block(E,mp.sqrt(3)*Mh,mp.sqrt(3)*Mv.T,-3*Mv.T*E.H*adjugate3(out.horizontal.gram)*Mh/out.g)/mp.sqrt(6)
            worst['core_unitarity']=max(worst['core_unitarity'],maximum(K*K.H-mp.eye(6)))
            wh,wv=data[0][3],data[1][3]
            locked=mp.sqrt(6)*FF*gate(wv)*K*gate(wh)*FF
            worst['locked_reconstruction']=max(worst['locked_reconstruction'],maximum(locked-out.adapted_matrix))
            for _ in range(3):
                gates=[mp.exp(1j*mp.mpf(str(rng.uniform(-3.14,3.14)))) for j in range(2)]
                U=FF*gate(gates[1])*K*gate(gates[0])*FF
                worst['arbitrary_orbit_unitarity']=max(worst['arbitrary_orbit_unitarity'],maximum(U*U.H-mp.eye(6)))
                for ww,(M,target,weight,locking,sd) in zip(gates,data):
                    X=M*mp.diag([1,mp.conj(ww),ww])*F
                    error=sum((abs(v)**2-1)**2 for v in X)
                    worst['side_residual_identity']=max(worst['side_residual_identity'],abs(error-weight*abs(ww**3-target)**2))
                    z=mp.matrix([mp.mpc(str(rng.uniform(-1,1)),str(rng.uniform(-1,1))) for j in range(3)])
                    sigma=sd.cube/sd.rho
                    y=mp.diag([1,sigma,mp.conj(sigma)])*z
                    Omega=y[0]*mp.conj(y[1])+y[2]*mp.conj(y[0])+mp.conj(target)*y[1]*mp.conj(y[2])
                    worst['measurement_moment_identity']=max(worst['measurement_moment_identity'],abs(previous.psi(z,sd)-sigma*Omega))
            if count<3:
                omega=mp.exp(2j*mp.pi/3)
                for j in range(3):
                    for k in range(3):
                        branch=mp.sqrt(6)*FF*gate(wv*omega**k)*K*gate(wh*omega**j)*FF
                        err=min(max(abs(branch[i,l]-locked[r[i],c[l]]) for i in range(6) for l in range(6))
                            for p in permutations((3,4,5)) for q in permutations((3,4,5))
                            for r,c in [((0,1,2)+p,(0,1,2)+q)])
                        worst['all_nine_branch_permutations']=max(worst['all_nine_branch_permutations'],err)
            count+=1
        assert max(worst.values())<mp.mpf('1e-60'),worst
        report['numerical']={'precision_digits':80,'strict_seeds':count,'arbitrary_phase_orbits':3*count,
            'branch_matrices':27,'maximum_absolute_residuals':{k:mp.nstr(v,12) for k,v in worst.items()},
            'scope':'Independent floating-point diagnostics, not interval certification or MUB-existence proofs.'}
    print('PASS fixed-core orbit and measurement identities',flush=True)


if __name__=='__main__':
    exact();numerical();report['status']='PASS'
    (HERE/'PHASE_GATE_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
