"""Independent audit of the two supplied notes and Fourier intensity reduction.

Run: OPENBLAS_NUM_THREADS=1 python3 verify.py
Requires NumPy and SymPy. The upstream scripts were not supplied.
"""
import json
from itertools import permutations
from pathlib import Path
import numpy as np
import sympy as sp

ROOT = Path(__file__).resolve().parent
report = {}


def symbolic_checks():
    A, B, C, D, s, t = sp.symbols('A B C D s t')
    alpha, beta, gamma = 9*A*B, 9*C*D, 9*(A*D+B*C)
    delta, h = 9*(A*D-B*C), 9*A*D
    assert sp.expand(gamma**2-4*alpha*beta-delta**2) == 0
    w = (-1+sp.sqrt(3)*sp.I)/2
    clean = lambda v: sp.simplify(sp.expand(v))
    x = [clean(s/3+A*w**j+B*w**(-j)) for j in range(3)]
    y = [clean(t/3+C*w**j+D*w**(-j)) for j in range(3)]
    X = sp.Matrix([[1]*3, x, y])
    assert clean(X.det()+sp.I*delta/sp.sqrt(3)) == 0
    for j in range(3):
        assert clean(h*x[j]-alpha*y[j]-(h*s-alpha*t)/3-delta*A*w**j) == 0
    U, V = sp.prod(x), sp.prod(y)
    ur = sum(y[j]*sp.prod(x[k] for k in range(3) if k != j) for j in range(3))
    vrbar = sum(x[j]*sp.prod(y[k] for k in range(3) if k != j) for j in range(3))
    numerator = U*h**3-ur*alpha*h**2+vrbar*alpha**2*h-V*alpha**3-(h*s-alpha*t)**3/27
    assert clean(numerator-delta**3*A**3) == 0
    # The alternative expression uses the coefficient of y in x^2.
    d0 = 9*(A**3-B**3)/delta
    U_sbar = (s**2-alpha)/3  # second elementary symmetric function of x
    assert clean(54*A**3-(2*s**3-9*s*U_sbar+27*U+3*d0*delta)) == 0

    z0,z1,z2,b0,b1,b2,tau,taubar = sp.symbols('z0 z1 z2 b0 b1 b2 tau taubar', nonzero=True)
    z = [z0,z1,z2]; zb = [b0,b1,b2]
    v = [z0,tau*z1,z2/tau]; vb = [b0,taubar*b1,b2/taubar]
    norm = sum(v[i]*vb[i] for i in range(3))
    corr = v[0]*vb[1]+v[1]*vb[2]+v[2]*vb[0]
    rho, T = tau*taubar, tau**3
    phi = rho*z0*b1+(T/rho)*z1*b2+z2*b0
    assert sp.cancel(tau*corr-phi) == 0
    corrbar = vb[0]*v[1]+vb[1]*v[2]+vb[2]*v[0]
    for j in range(3):
        value = sum(v[k]*w**(j*k) for k in range(3))
        valuebar = sum(vb[k]*w**(-j*k) for k in range(3))
        assert clean(value*valuebar-norm-w**(-j)*corr-w**j*corrbar) == 0
    report['exact_symbolic'] = {
        'affine_discriminant_and_determinant': True,
        'pure_cube_projection_and_product_formula': True,
        'alternative_cube_formula': True,
        'cube_free_autocorrelation_identity': True,
        'three_intensities_from_norm_and_complex_correlation': True,
    }


def finite_field_checks():
    p=101; T=sp.Symbol('T'); mod=lambda M: M.applyfunc(lambda x:int(x)%p)
    inv=lambda x:pow(int(x)%p,-1,p)
    points=[('A',[74,91,40,98],18,30,[44,35,92],[1,-36,41,15],[1,14,-37,-10]),
            ('B',[19,87,26,9],34,81,[17,27,36],[1,6,4,42],[1,46,-31,13]),
            ('C',[27,74,22,44],54,64,[66,22,11],[1,1,25,25],[1,50,37,-12]),
            ('D',[32,61,36,12],2,93,[8,85,53],[1,-7,22,25],[1,-32,26,7])]
    result=[]
    for name,seed,zh,zv,scalars,qhexp,qvexp in points:
        a,b,c,d=seed; E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
        Es=E.applyfunc(inv)
        Gh=mod(6*sp.eye(3)-E*Es.T); Gv=mod(6*sp.eye(3)-E.T*Es)
        ga=mod(Gh.adjugate()); g=int(Gh.det())%p; sigma=int(sp.trace(ga))%p
        eta=(g+36-2*sigma)%p
        chi=int(sp.prod(ga[j,j]-8 for j in range(3))+2*(sigma-16)**2+(12-sigma)*g)%p
        assert [g,eta,chi]==scalars
        assert (zh+zv-chi*inv(g))%p==0 and (zh*zv-eta)%p==0
        assert (chi*chi-4*g*g*eta)%p != 0
        def cubic(G,z):
            gam=mod(G.adjugate()); ss,tt,rr=map(int,[G[1,0],G[2,0],G[2,1]])
            S,V,R=map(int,[G[0,1],G[0,2],G[1,2]])
            PP=[rr*ss**2+R*tt**2+(3-rr*R)*ss*tt,
                tt*S**2+rr**2*V+(3-tt*V)*rr*S,
                ss*V**2+R**2*S+(3-ss*S)*R*V]
            pivots=[(g+z*int(gam[j,j]))%p for j in range(3)]
            assert all(pivots) and all(int(v)%p for v in PP)
            lam=[int(PP[j])*inv(pivots[j])%p for j in range(3)]
            u=lam[0]*inv(lam[1])%p
            poly=sp.Poly(T**3-ss*T**2+u*S*T-u,T,modulus=p)
            assert int(sp.discriminant(poly.as_expr(),T))%p != 0
            return poly
        qh,qv=cubic(Gh,zh),cubic(Gv,zv)
        cubic(Gh,zv); cubic(Gv,zh) # all guards on the other sheet
        assert [int(x)%p for x in qh.all_coeffs()]==[x%p for x in qhexp]
        assert [int(x)%p for x in qv.all_coeffs()]==[x%p for x in qvexp]
        roots=lambda q:[j for j in range(p) if int(q.eval(j))%p==0]
        rh,rv=roots(qh),roots(qv)
        dh,dv=[int(sp.discriminant(q.as_expr(),T))%p for q in (qh,qv)]
        if name=='A': assert not rh and [dh,dv]==[6,91]
        if name=='B': assert rh==[7,29,59] and not rv
        if name=='C': assert rh==[50,51,100] and rv==[74,79,100]
        if name=='D': assert [dh,dv]==[50,79]
        result.append(dict(point=name,horizontal_roots=rh,vertical_roots=rv,
                           discriminants=[dh,dv],legendre=[pow(dh,50,p),pow(dv,50,p)]))
    a=sp.Symbol('a'); E=sp.Matrix([[1,1,1],[1,a,2],[1,3,5]])
    G=6*sp.eye(3)-E*E.applyfunc(lambda x:1/x).T; gam=G.adjugate(); g=G.det()
    sigma=sp.trace(gam); eta=g+36-2*sigma
    chi=sp.prod(gam[j,j]-8 for j in range(3))+2*(sigma-16)**2+(12-sigma)*g
    num,den=sp.fraction(sp.cancel(chi**2-4*g*g*eta))
    P=sp.Poly(-17*a**8-21*a**7-24*a**6+39*a**5+3*a**4+11*a**3-4*a**2-21,a,modulus=p)
    assert sp.Poly(sp.expand(num*24*a**4-den*P.as_expr()),a,modulus=p).is_zero
    assert sp.gcd(P,P.diff()).degree()==0 and P.eval(0)!=0
    report['exact_mod101_degree_certificate']=result
    report['exact_squarefree_scalar_discriminant']=True


omega=np.exp(2j*np.pi/3)
F3=np.array([[omega**(i*j) for j in range(3)] for i in range(3)])


def side(G,z):
    g=np.linalg.det(G).real; gam=g*np.linalg.inv(G)
    s,t,r=G[1,0],G[2,0],G[2,1]
    PP=np.array([r*s*s+r.conjugate()*t*t+(3-abs(r)**2)*s*t,
                 t*s.conjugate()**2+r*r*t.conjugate()+(3-abs(t)**2)*r*s.conjugate(),
                 s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-abs(s)**2)*r.conjugate()*t.conjugate()])
    lam=PP/(g+z*np.diag(gam)); u,v=lam[0]/lam[1],lam[0]/lam[2]; per=z*lam[0]
    alpha=s*s-3*u*s.conjugate(); beta=t*t-3*v*t.conjugate(); gamma=2*s*t-3*per
    delta=np.sqrt(3*g*u*v/lam[0])
    if abs(gamma+delta)<abs(gamma-delta):delta=-delta
    h=(gamma+delta)/2
    T=(u*h*h*(h-alpha*r)+v*alpha*alpha*(h*r.conjugate()-alpha)-(h*s-alpha*t)**3/27)/delta**3
    tau=T**(1/3)
    L=np.array([[1,0,0],[s/3,1,alpha/9],[t/3,beta/h,h/9]])
    X=L@np.diag([1,tau,1/tau])@F3
    q=np.array([-(h*s-alpha*t)/3,h,-alpha])/delta
    rho=(q@G@q.conjugate()).real/3
    return dict(X=X,L=L,rho=rho,T=T,tau=tau,delta=delta,
                discriminant_error=abs(delta**2-(gamma*gamma-4*alpha*beta)))


def phi(z,sd,conjugate=False):
    rho=sd['rho']; T=sd['T'].conjugate() if conjugate else sd['T']
    return rho*z[0]*z[1].conjugate()+(T/rho)*z[1]*z[2].conjugate()+z[2]*z[0].conjugate()


def numerical_checks():
    rng=np.random.default_rng(20260920)
    worst={k:0. for k in ['entry_modulus','orthogonality','rho','discriminant','vertical_intensity_identity','horizontal_intensity_identity','equilateral_moment_identity','pair_overlap']}
    count=0; trials=0
    while count<100:
        trials+=1; a,b,c,d=np.exp(1j*rng.uniform(-np.pi,np.pi,4))
        E=np.array([[1,1,1],[1,a,b],[1,c,d]])
        Gh=6*np.eye(3)-E@E.conj().T; Gv=6*np.eye(3)-E.T@E.conj()
        g=np.linalg.det(Gh).real; gam=g*np.linalg.inv(Gh); sig=np.trace(gam).real
        eta=g+36-2*sig; chi=(np.prod(np.diag(gam)-8)+2*(sig-16)**2+(12-sig)*g).real
        R=4*g*g*eta-chi*chi
        if R<=0:continue
        for sign in [-1,1]:
            zh=(chi+sign*1j*np.sqrt(R))/(2*g)
            sh,sv=side(Gh,zh),side(Gv,zh.conjugate())
            B,C=sh['X'],sv['X'].T; FF=Gv.T
            H=np.block([[E,B],[C,-C@E.conj().T@np.linalg.solve(Gh,B)]])
            worst['entry_modulus']=max(worst['entry_modulus'],float(np.max(abs(abs(H)-1))))
            worst['orthogonality']=max(worst['orthogonality'],float(np.max(abs(H@H.conj().T-6*np.eye(6)))))
            for sd in [sh,sv]:
                worst['rho']=max(worst['rho'],abs(sd['rho']-abs(sd['tau'])**2))
                worst['discriminant']=max(worst['discriminant'],sd['discriminant_error'])
                XX=sd['X']; LL=sd['L']; hh=9*LL[2,2]; aa=9*LL[1,2]
                weights=hh*XX[1]-aa*XX[2]
                centered=weights-np.mean(weights)
                predicted=sd['delta']*sd['tau']*np.array([1,omega,omega**2])
                worst['equilateral_moment_identity']=max(worst['equilateral_moment_identity'],float(np.max(abs(centered-predicted))))
            rays=[]
            for _ in range(2):
                angles=rng.uniform(-np.pi,np.pi,5); pp=np.r_[1,np.exp(1j*angles[:2])]; xi=np.exp(1j*angles[2:])
                cc=np.linalg.solve(FF,np.sqrt(6)*xi-E.conj().T@pp); ell=pp-E@cc
                zv=sv['L'].T@cc; wh=sh['L'].conj().T@ell
                nv=np.vdot(cc,FF@cc).real/3
                nh=np.vdot(ell,Gh@ell).real/3
                cv=phi(zv,sv)/sv['tau']; ch=phi(wh,sh,True)/sh['tau'].conjugate()
                predv=np.array([nv+2*(omega**(-j)*cv).real for j in range(3)])
                predh=np.array([nh+2*(omega**j*ch).real for j in range(3)])
                worst['vertical_intensity_identity']=max(worst['vertical_intensity_identity'],float(np.max(abs(abs(C@cc)**2-predv))))
                worst['horizontal_intensity_identity']=max(worst['horizontal_intensity_identity'],float(np.max(abs(abs(B.conj().T@ell)**2-predh))))
                rays.append((pp,cc,np.r_[pp,C@cc]))
            p1,c1,q1=rays[0]; p2,c2,q2=rays[1]
            worst['pair_overlap']=max(worst['pair_overlap'],abs(np.vdot(q1,q2)-np.vdot(p1,p2)-np.vdot(c1,FF@c2)))
        count+=1
    # Exact repeated-coordinate example also exercises the new side evaluation.
    E=np.array([[1,1,1],[1,1,omega],[1,omega,1]])
    G=6*np.eye(3)-E@E.conj().T
    sd=side(G,omega-1)
    expected=np.array([[1,1,1],[omega,omega**2,omega**2],[omega**2,omega**2,omega]])
    error=min(float(np.max(abs(sd['X']-expected[:,perm]))) for perm in permutations(range(3)))
    assert error<1e-10
    assert max(worst.values())<1e-6, worst
    report['numerical']={'strict_seeds':count,'matrices':2*count,'arbitrary_ray_inputs':4*count,
                         'maximum_absolute_residuals':worst,'repeated_example_error':error,
                         'scope':'Floating-point identity checks, not pair-existence certificates.'}


if __name__=='__main__':
    symbolic_checks(); print('PASS symbolic identities',flush=True)
    finite_field_checks(); print('PASS exact degree certificates',flush=True)
    numerical_checks(); print('PASS numerical comparisons',flush=True)
    report['status']='PASS'
    (ROOT/'FOURIER_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
