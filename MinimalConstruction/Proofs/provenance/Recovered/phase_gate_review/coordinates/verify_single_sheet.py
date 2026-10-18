"""Independent exact audit and 80-digit integration checks of the one-sheet note."""
from itertools import permutations
from pathlib import Path
import json,random
import mpmath as mp
import sympy as sp
import compact_fourier as old
import single_sheet as new

ROOT=Path(__file__).resolve().parent
report={}


def exact_checks():
    s,S,t,T,r,R=sp.symbols('s S t T r R')
    star=lambda e:sp.sympify(e).xreplace({s:S,S:s,t:T,T:t,r:R,R:r})
    G=sp.Matrix([[3,S,T],[s,3,R],[t,r,3]])
    p=s*S+t*T+r*R; J=s*r*T+S*R*t
    W=s*S*t*T+s*S*r*R+t*T*r*R-s*S*t*T*r*R
    g=27-3*p+J; eta=9-p+J; chi=W-(p-9)*(p-18)+(p-15)*J
    adj=G.adjugate(); sig=sp.trace(adj)
    assert sp.expand(g-G.det())==0
    assert sp.expand(eta-g-36+2*sig)==0
    assert sp.expand(chi-sp.prod(adj[i,i]-8 for i in range(3))-2*(sig-16)**2-(12-sig)*g)==0
    assert sp.expand(G.det()+(6*sp.eye(3)-G).det()-54+6*p)==0
    P=[r*s*s+R*t*t+(3-r*R)*s*t,
       t*S*S+r*r*T+(3-t*T)*r*S,
       s*T*T+R*R*S+(3-s*S)*R*T]
    for i in range(3):
        ci=adj[i,i]
        assert sp.expand(P[i]*star(P[i])-g*g-ci*chi-ci*ci*eta)==0
    # Dephased generic phase block: independent invariants, not sampled seeds.
    a,b,c,d=sp.symbols('a b c d',nonzero=True)
    X=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    sharp=lambda e:sp.cancel(e.xreplace({a:1/a,b:1/b,c:1/c,d:1/d}))
    Xs=X.applyfunc(sharp); GX=X*Xs.T
    substitution={s:GX[1,0],S:GX[0,1],t:GX[2,0],T:GX[0,2],r:GX[2,1],R:GX[1,2]}
    det=X.det(); per=sum(sp.prod(X[i,pp[i]] for i in range(3)) for pp in permutations(range(3)))
    prod=sp.prod(X)
    assert sp.cancel(g.subs(substitution)-det*sharp(det))==0
    assert sp.cancel(eta.subs(substitution)-per*sharp(per))==0
    assert sp.cancel(chi.subs(substitution)+per*det*det/prod+sharp(per*det*det/prod))==0
    # Exact rational opposite-corner involution, for any dephased nonzero matrix.
    H=sp.Matrix(6,6,lambda i,j:1 if i==0 or j==0 else sp.Symbol(f'h{i}{j}',nonzero=True))
    order=[3,4,5,0,1,2]
    def transport(M):
        A=M.extract(order,order)
        return sp.Matrix(6,6,lambda i,j:sp.cancel(A[0,0]*A[i,j]/(A[i,0]*A[0,j])))
    HH=transport(transport(H))
    assert all(sp.cancel(v)==0 for v in HH-H)
    # Conjugate-diagonal equivalence and new cube-free intensity coefficient.
    tau,taubar,rho,q,k,delta,alphabar,n,z0,z1,z2,b0,b1,b2=sp.symbols(
        'tau taubar rho q k delta alphabar n z0 z1 z2 b0 b1 b2',nonzero=True)
    alpha=q*rho
    assert sp.cancel((q*taubar-alpha/tau).subs(taubar,rho/tau))==0
    cp=(k-delta*alphabar/rho)/n
    cm=(k*q+delta)/n
    assert sp.cancel((cp*tau-(k*tau-delta*alphabar/taubar)/n).subs(taubar,rho/tau))==0
    assert sp.cancel((cm*taubar-(k*alpha/tau+delta*taubar)/n).subs(taubar,rho/tau))==0
    corr=taubar*z0*b1+tau*tau*z1*b2+taubar*z2*b0
    psi=rho*(z0*b1+z2*b0)+tau**3*z1*b2
    assert sp.cancel((tau*corr-psi).subs(taubar,rho/tau))==0
    mu,mubar,u=sp.symbols('mu mubar u')
    assert sp.expand(mu**3+u*(rho-mu*mubar)-u*rho-mu*(mu**2-u*mubar))==0
    # Exact displayed Hadamard and its two transported corners.
    w=(-1+sp.I*sp.sqrt(3))/2
    clean=lambda v:sp.simplify(sp.expand_complex(v))
    H=sp.Matrix([[1,1,1,1,1,1],[1,1,w,w,w*w,w*w],
                 [1,w,1,w*w,w*w,w],[1,-1,-1,1,-1,1],
                 [1,-w,-1,w*w,-w*w,w],[1,-1,-w,w,-w*w,w*w]]).applyfunc(clean)
    assert all(clean(v)==0 for v in H*H.H-6*sp.eye(6))
    Ht=transport(H).applyfunc(clean)
    assert all(clean(Ht[i,j]-val)==0 for (i,j),val in zip([(1,1),(1,2),(2,1),(2,2)],[1,w*w,w,w]))
    def theta(Y):
        perm=sum(sp.prod(Y[i,pp[i]] for i in range(3)) for pp in permutations(range(3)))
        dd=Y.det()
        return clean(-perm*dd**2/(dd*sp.conjugate(dd)*sp.prod(Y)))
    assert clean(theta(H[:3,3:])-w+1)==0
    assert clean(theta(Ht[:3,3:])-w*w+1)==0
    EP=H[:3,:3].extract([1,2,0],[1,2,0])
    Eh=sp.Matrix(3,3,lambda i,j:clean(EP[0,0]*EP[i,j]/(EP[i,0]*EP[0,j])))
    assert all(clean(Eh[i,j]-val)==0 for (i,j),val in zip([(1,1),(1,2),(2,1),(2,2)],[w,w*w,w*w,1]))
    assert clean(sum(Eh[1,j] for j in range(3)))==0
    assert clean(sum(Eh[j,1] for j in range(3)))==0
    report['exact']={key:True for key in ['scalar_rewrite','variance_determinant_identity',
        'three_P_norm_identities','generic_phase_block_g_eta_chi_invariants',
        'generic_dephased_opposite_corner_involution','conjugate_diagonal_coefficients',
        'cube_rewrite','new_cube_free_intensity_identity','displayed_Hadamard',
        'displayed_sheet_reversal','displayed_seed_frame_with_zero_means']}
    print('PASS exact identities and transport',flush=True)


def maxabs(M):return max(abs(v) for v in M)


def distance(H,K):
    return min(max(abs(H[i,j]-K[r[i],c[j]]) for i in range(6) for j in range(6))
               for pp in permutations((3,4,5)) for qq in permutations((3,4,5))
               for r,c in [((0,1,2)+pp,(0,1,2)+qq)])


def numerical_checks():
    rng=random.Random(20260921)
    worst={k:mp.mpf(0) for k in ['flatness','unitarity','original_corner',
        'positive_sheet_comparison','negative_to_positive_transport','transport_scalars',
        'opposite_involution','frame_transport','cube_amplitude','vertical_intensities',
        'horizontal_intensities','pair_overlap','left_transport_unitarity']}
    minima={k:mp.inf for k in ['n','rho','cube_modulus']}
    count=0
    with mp.workdps(80):
        while count<100:
            phases=[mp.exp(1j*mp.mpf(str(rng.uniform(-3.14159,3.14159)))) for _ in range(4)]
            a,b,c,d=phases; E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
            if new.scalar_data(6*mp.eye(3)-E*E.H)[3]<=0:continue
            out=new.from_phases(phases,dps=80)
            H,Ha=out.matrix,out.adapted_matrix
            prior=old.from_phases(phases,sheet=1,dps=80)
            negative=old.from_phases(phases,sheet=-1,dps=80)
            opposite=new.opposite_corner(negative.matrix)
            transported=new.from_phases(new.seed_of(opposite),dps=80)
            worst['flatness']=max(worst['flatness'],max(abs(abs(v)-1) for v in H))
            worst['unitarity']=max(worst['unitarity'],maxabs(H*H.H-6*mp.eye(6)))
            worst['original_corner']=max(worst['original_corner'],maxabs(H[:3,:3]-E))
            worst['positive_sheet_comparison']=max(worst['positive_sheet_comparison'],distance(H,prior.matrix))
            worst['negative_to_positive_transport']=max(worst['negative_to_positive_transport'],distance(opposite,transported.matrix))
            worst['opposite_involution']=max(worst['opposite_involution'],maxabs(new.opposite_corner(opposite)-negative.matrix))
            worst['transport_scalars']=max(worst['transport_scalars'],
                *(abs(getattr(out,k)-getattr(transported,k)) for k in ['g','eta','chi','R']))
            worst['frame_transport']=max(worst['frame_transport'],maxabs(H-out.left_transport*Ha*out.right_transport))
            worst['left_transport_unitarity']=max(worst['left_transport_unitarity'],maxabs(out.left_transport.H*out.left_transport-mp.eye(6)))
            for sd in (out.horizontal,out.vertical):
                minima['n']=min(minima['n'],sd.n)
                minima['rho']=min(minima['rho'],sd.rho)
                minima['cube_modulus']=min(minima['cube_modulus'],abs(sd.cube))
                assert sd.n>mp.mpf(2)/3 and sd.rho>mp.mpf(1)/3
                assert abs(sd.L[1,2])<1+mp.mpf('1e-65')
                assert maxabs(sd.L)<mp.sqrt(3)
                worst['cube_amplitude']=max(worst['cube_amplitude'],abs(abs(sd.cube)**2-sd.rho**3))
            Ea=out.adapted_corner; F=out.vertical.gram.T
            w=mp.exp(2j*mp.pi/3); rays=[]
            for _ in range(2):
                v=[mp.exp(1j*mp.mpf(str(rng.uniform(-3,3)))) for j in range(5)]
                p=mp.matrix([1,*v[:2]]); xi=mp.matrix(v[2:])
                c=mp.lu_solve(F,mp.sqrt(6)*xi-Ea.H*p); ell=p-Ea*c
                zv=out.vertical.L.T*c; zh=out.horizontal.L.H*ell
                cv=new.psi(zv,out.vertical)/out.vertical.tau
                ch=new.psi(zh,out.horizontal,True)/mp.conj(out.horizontal.tau)
                actualv=out.vertical.matrix.T*c; actualh=out.horizontal.matrix.H*ell
                nv=(c.H*F*c)[0]/3; nh=(ell.H*out.horizontal.gram*ell)[0]/3
                worst['vertical_intensities']=max(worst['vertical_intensities'],
                    max(abs(abs(actualv[j])**2-nv-2*mp.re(w**(-j)*cv)) for j in range(3)))
                worst['horizontal_intensities']=max(worst['horizontal_intensities'],
                    max(abs(abs(actualh[j])**2-nh-2*mp.re(w**j*ch)) for j in range(3)))
                qa=mp.matrix(list(p)+list(actualv))
                qo=out.left_transport*qa
                worst['frame_transport']=max(worst['frame_transport'],maxabs(H.H*qo-out.right_transport.H*Ha.H*qa))
                rays.append((p,c,qo))
            p,c,q=rays[0]; pp,cc,qq=rays[1]
            worst['pair_overlap']=max(worst['pair_overlap'],abs((q.H*qq-p.H*pp-c.H*F*cc)[0]))
            count+=1
        edge=[]
        for phases in [(1,w,w,1),(-1,-1,-1,1j),(1j,-1j,-1j,1j),(-1,-1j,1,1j)]:
            out=new.from_phases(phases,dps=80,allow_boundary=True)
            error=max(max(abs(abs(v)-1) for v in out.matrix),maxabs(out.matrix*out.matrix.H-6*mp.eye(6)))
            assert error<mp.mpf('1e-60')
            assert min(out.horizontal.n,out.vertical.n)>mp.mpf(2)/3
            assert min(out.horizontal.rho,out.vertical.rho)>mp.mpf(1)/3
            edge.append({'phases':[mp.nstr(v,6) for v in phases],'error':mp.nstr(error,12),'R':mp.nstr(out.R,10)})
        assert max(worst.values())<mp.mpf('1e-60'),worst
        report['numerical']={'precision_digits':80,'strict_seeds':count,
            'negative_to_positive_transports':count,'arbitrary_ray_inputs':2*count,
            'maximum_absolute_residuals':{k:mp.nstr(v,12) for k,v in worst.items()},
            'observed_minima':{k:mp.nstr(v,12) for k,v in minima.items()},'additional_examples':edge,
            'scope':'Floating-point diagnostics, not interval certificates or physical ray-pair witnesses.'}
    print('PASS one-sheet coverage transport and measurement integration',flush=True)


if __name__=='__main__':
    exact_checks(); numerical_checks(); report['status']='PASS'
    (ROOT/'SINGLE_SHEET_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
