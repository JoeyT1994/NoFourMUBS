"""Recenter the existing seed w frame at an exact known triple anchor."""
import itertools
import sys
from pathlib import Path

from flint import acb,acb_mat,arb,arb_mat

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parents[3]/'proof/seed_atlas/cert'))
import wholeball as Z
import patches as P
import known_family as KF


def build(ball,radius,template=KF.NATIVE_1879):
    """The Z whole-ball proof, with exact H(0) and the original rational Mth."""
    r=arb(radius)
    if not r>0: raise ValueError('positive radius required')
    h,k=KF.matrices([arb(0)]*4,template);H=acb_mat(h)
    # H at this anchor consists entirely of fourth roots of unity. These checks
    # are exact, including the Hadamard identity, not small-residual acceptance.
    if any(not (v*v.conjugate()==1) for v in H.entries()): raise ArithmeticError('anchor not exactly flat')
    if H.conjugate().transpose()*H != acb_mat([[6*int(i==j) for j in range(6)] for i in range(6)]):
        raise ArithmeticError('anchor not exactly Hadamard')
    qg=arb_mat(36,1)
    for i,j in itertools.product(range(1,6),repeat=2):
        ref=arb(float(ball.Pg[6*i+j]));angle=(H[i,j]*acb(0,-ref).exp()).arg()
        if not abs(angle)<arb.pi()/2: raise ArithmeticError('anchor lift ambiguous')
        qg[6*i+j,0]=ref+angle
    theta=arb_mat([[qg[6*i+j,0]] for i,j in Z.SEEDS]);m=Z.mat(ball.Mth)
    wa=m.solve(theta-arb_mat([[arb(float(v))] for v in ball.theta0]))
    if not Z.frob(wa)+r<arb(ball.r): raise ArithmeticError('recentered ball not contained in original seed ball')
    q0=Z.horizontal_vector(qg);v,x=Z.geometry()
    native=P.normal_form(ball,prec=160)
    prediction=native['Q0']+native['U']*wa+P.tensor_at(native['H2'],wa)*wa/2
    # Both lifts are horizontal with the same four seed phases. Their
    # difference lies in im(X) exactly, by the rational geometry identity.
    anchor_normal=(x.transpose()*x).solve(x.transpose()*(q0-prediction))
    if not Z.frob(anchor_normal)<native['tau']:
        raise ArithmeticError('anchor not identified with the native C1 branch')
    zz=[H[i,c]*H[j,c].conjugate() for i,j in Z.PAIRS for c in range(6)]
    jac=Z.real_jac(zz);w=Z.left_inverse(jac,x)
    u=(v-x*w*jac*v)*m
    s,dx=Z.differences(u),Z.differences(x)
    h2=-x*w*Z.derivative2(zz,s,s);t=Z.differences(h2)
    un,xn,beta=Z.spectral(u),Z.spectral(x),Z.spectral(h2)
    c=Z.spectral(w*Z.derivative2(zz,s,dx));d=Z.spectral(w*Z.derivative2(zz,dx,dx))
    wn=Z.spectral(w);l2=2*arb(3).sqrt()*wn;l3=2*arb(6).sqrt()*wn
    b0,b1,b2,t3,t4,l5,a2,l3a=Z.predictor_residual(w,zz,s,t,dx,r)
    base=un*r+beta*r*r/2;qb=c*r+a2*r*r/2+l3a*r**3/6
    def qfun(tau):return qb+(d+l3*xn*xn*base)*tau+l3*xn**3*tau*tau/2
    tau=(arb(11)/10*b0).upper()
    for _ in range(100):
        q=qfun(tau)
        if not q<1: raise ArithmeticError('H branch contraction failed')
        if b0+q*tau<tau:break
        tau=(arb(1001)/1000*b0/(1-q)).upper()
    else:raise ArithmeticError('H branch self-map failed')
    delta=base+xn*tau
    m1=c+a2*r+l3a*r*r/2+l3*xn*xn*(un+beta*r)*tau
    m2=l3*xn*(un+beta*r)**2+l2*xn*beta
    mzz=d+l3*xn*xn*delta
    z1=(b1+m1*tau)/(1-q)
    z2=(b2+m2*tau+2*m1*z1+mzz*z1*z1)/(1-q)
    oh=Z.orientation(H,u,h2,x,r,tau,'h');ov=Z.orientation(H,u,h2,x,r,tau,'v')
    if not (oh['ok'] and ov['ok'] and oh['sign']==ball.o and ov['sign']==-ball.o):
        raise ArithmeticError('native orientation is not certified')
    return dict(ball=ball,Q0=q0,Qbase=qg,U=u,H2=h2,X=x,W=w,H=H,tau=tau,q=q,Z1=z1,Z2=z2,r=r,
                native_anchor=wa,summary=dict(status='CERTIFIED',r=Z.upper(r),tau=Z.upper(tau),q=Z.upper(q),
                  Z1=Z.upper(z1),Z2=Z.upper(z2),native_anchor_norm_upper=Z.upper(Z.frob(wa)),
                  native_radius=ball.r,native_anchor_normal_upper=Z.upper(Z.frob(anchor_normal)),
                  native_normal_radius=Z.upper(native['tau']),
                  orientation_margin_lower=min(oh['margin_lower'],ov['margin_lower'])))
