"""The X-ball's C1e from one augmented whole-ball contraction (return ZT, edge appendix).

The F6-012 chart's phases on the whole ball, Q(w) = Q0 + U w + H2[w, w]/2 + X z(w), ||z|| <= tau, from a
22-normal-coordinate augmented Z system: the row-orthogonality residual Phi and the signed side signature
psi_h(Q) = -p_4/2, with the first three seed cross-ratios fixed (proof/theorems/ZT_wholeball_transfers/
ZT_return/edge/EDGE_REPORT.md).  The code is ZT's edge_augmented.py, with its bound helpers local to this module
instead of patched into wholeball.  Every verdict is an Arb inequality.
"""
import itertools, math, time
import numpy as np
from flint import arb, acb, arb_mat, ctx
import wholeball as W

def upper_finite(x):
    if not x.is_finite():raise ArithmeticError('nonfinite interval in upper bound')
    return W.upper(x)

def lower_finite(x):
    if not x.is_finite():raise ArithmeticError('nonfinite interval in lower bound')
    return W.lower(x)

def spectral_safe(a):
    # python-flint 0.9 generic pow returns NaN for intervals straddling zero.
    if a.nrows()>a.ncols():a=a.transpose()
    n=a.nrows()
    if n==1:return sum((arb(upper_finite(abs(z)))**2 for z in a.entries()),arb(0)).sqrt()
    gram=a*a.transpose();proposal=float(np.linalg.norm(W.mid_np(a),2))**2
    lam=max(1e-80,proposal*(1+1e-9)+1e-30)
    for _ in range(12):
        b=W.eye(n)*arb(lam)-gram;L=[[arb(0) for _ in range(n)] for _ in range(n)];ds=[];good=True
        for i in range(n):
            di=b[i,i]-sum((L[i][k]*L[i][k]*ds[k] for k in range(i)),arb(0))
            if not di>0:good=False;break
            ds.append(di)
            for j in range(i+1,n):L[j][i]=(b[j,i]-sum((L[j][k]*L[i][k]*ds[k] for k in range(i)),arb(0)))/di
        if good:return arb(lam).sqrt()
        lam=lam*1.01+1e-25
    raise ArithmeticError('spectral Gram test failed')

def coefficients():
    """Phi_aug(q) = Re(C exp(i N q)); last coordinate is psi_h(q)."""
    N=[]; cols=[]
    for p,(a,b) in enumerate(W.PAIRS):
        for j in range(6):
            n=[0]*36;n[6*a+j]=1;n[6*b+j]=-1
            c=[acb(0)]*31;c[p]=acb(1);c[15+p]=acb(0,-1)
            N.append(n);cols.append(c)
    _,st=W.signature_terms()
    for sg,nu in st:
        n=[0]*36
        for a in range(3):
            for b in range(3):n[6*a+3+b]=nu[3*a+b]
        c=[acb(0)]*31;c[30]=acb(0,-sg)
        N.append(n);cols.append(c)
    return arb_mat(N),cols,st

def realmul(K, A):
    """Re(K A) for complex 22 x m and real m x n."""
    kr=arb_mat([[z.real for z in row] for row in K]);ki=arb_mat([[z.imag for z in row] for row in K])
    return kr*A,ki*A

def tensor2(K,a,b):
    m=a.nrows(); d=a.ncols(); e=b.ncols();nf=len(K)
    ar=arb_mat(m,d*e)
    for k in range(m):
        for i in range(d):
            for j in range(e):ar[k,i*e+j]=-a[k,i]*b[k,j]
    kr=arb_mat([[z.real for z in row] for row in K])
    return kr*ar

def predictor_residual(K,s,t,dx,r,return_cache=False):
    nf=len(K);m=s.nrows();d=s.ncols(); nx=dx.ncols()
    kr=arb_mat([[z.real for z in row] for row in K]);ki=arb_mat([[z.imag for z in row] for row in K])
    p3r=arb_mat(m,d**3);p3i=arb_mat(m,d**3);p4r=arb_mat(m,d**4);p4i=arb_mat(m,d**4)
    a2r=arb_mat(m,d*d*nx);a2i=arb_mat(m,d*d*nx)
    L5=arb(0);L3a=arb(0);L5weights=[];L3aweights=[]
    triples=list(itertools.product(range(d),repeat=3)); quads=list(itertools.product(range(d),repeat=4))
    for a in range(m):
        sa=[s[a,j] for j in range(d)];ta=[[t[a,d*i+j] for j in range(d)] for i in range(d)]
        for col,(i,j,k) in enumerate(triples):
            p3r[a,col]=-(ta[i][j]*sa[k]+ta[i][k]*sa[j]+ta[j][k]*sa[i]);p3i[a,col]=-sa[i]*sa[j]*sa[k]
        for col,(i,j,k,l) in enumerate(quads):
            p4r[a,col]=sa[i]*sa[j]*sa[k]*sa[l]-ta[i][j]*ta[k][l]-ta[i][k]*ta[j][l]-ta[i][l]*ta[j][k]
            p4i[a,col]=-(ta[i][j]*sa[k]*sa[l]+ta[i][k]*sa[j]*sa[l]+ta[i][l]*sa[j]*sa[k]+ta[j][k]*sa[i]*sa[l]+ta[j][l]*sa[i]*sa[k]+ta[k][l]*sa[i]*sa[j])
        for i,j,k in itertools.product(range(d),range(d),range(nx)):
            col=(d*i+j)*nx+k;a2r[a,col]=-ta[i][j]*dx[a,k];a2i[a,col]=-sa[i]*sa[j]*dx[a,k]
        sn=sum((z*z for z in sa),arb(0)).sqrt();tn=spectral_safe(arb_mat(ta))
        ca=sum((kr[i,a]*kr[i,a] for i in range(nf)),arb(0));cb=sum((kr[i,a]*ki[i,a] for i in range(nf)),arb(0));cc=sum((ki[i,a]*ki[i,a] for i in range(nf)),arb(0))
        cn=spectral_safe(arb_mat([[kr[i,a],ki[i,a]] for i in range(nf)]));an=sn+r*tn
        w5=an**5+10*tn*an**3+15*tn**2*an;L5weights.append(w5);L5+=cn*w5
        dxn=sum((dx[a,k]*dx[a,k] for k in range(nx)),arb(0)).sqrt();w3a=dxn*(an**3+3*tn*an);L3aweights.append(w3a);L3a+=cn*w3a
    R3=kr*p3r-ki*p3i;R4=kr*p4r-ki*p4i;A2=kr*a2r-ki*a2i
    t3=spectral_safe(R3);t4=spectral_safe(R4)
    b0=t3*r**3/6+t4*r**4/24+L5*r**5/120
    b1=t3*r**2/2+t4*r**3/6+L5*r**4/24
    b2=t3*r+t4*r**2/2+L5*r**3/6
    a2=spectral_safe(A2)
    result=(b0,b1,b2,t3,t4,L5,a2,L3a)
    return (result,dict(R3=R3,R4=R4,A2=A2,L5weights=L5weights,L3aweights=L3aweights)) if return_cache else result

def setup(Mth):
    fixed=[(1,1),(1,2),(2,1)];free=[(i,j) for i in range(1,6) for j in range(1,6) if (i,j) not in fixed]
    V=W.horizontal_basis(fixed);X0=W.horizontal_basis(free)
    # Exact binary rational change of basis, independently verified invertible.
    Qf,Rf=np.linalg.qr(W.mid_np(X0));T=W.mat(np.linalg.inv(Rf));T.inv();X=X0*T
    N,C,st=coefficients();n=N.nrows()
    q0=arb_mat([[arb.pi()*((i*j)%6)/3] for i in range(6) for j in range(6)])
    z=[acb(0,(N*q0)[k,0]).exp() for k in range(n)]
    J=arb_mat(31,36)
    for a in range(31):
        for j in range(36):J[a,j]=sum(((acb(0,1)*C[k][a]*z[k]*N[k,j]).real for k in range(n)),arb(0))
    JX=J*X;Y=(JX.transpose()*JX).solve(JX.transpose())
    M=W.mat(Mth);M3=arb_mat([[M[i,j] for j in range(4)] for i in range(3)])
    Rhs=arb_mat(31,4)
    for j in range(4):Rhs[30,j]=-M[3,j]/2
    base=V*M3;U=base+X*Y*(Rhs-J*base)
    K=[[sum((acb(Y[i,a])*C[k][a]*z[k] for a in range(31)),acb(0)) for k in range(n)] for i in range(22)]
    s=N*U;dx=N*X;H2=-(X*tensor2(K,s,s));t=N*H2
    Wphi=arb_mat([[Y[i,j] for j in range(30)] for i in range(22)]);Wpsi=arb_mat([[Y[i,30]] for i in range(22)])
    # Exact sum nu nu^T = 72(P3 tensor P3); max ||nu||^2 is verified from the integer frequencies.
    maxnu=max(sum(k*k for k in nu) for _,nu in st)
    gram=np.zeros((9,9),dtype=int)
    for _,nu in st:gram+=np.outer(nu,nu)
    P3n=3*np.eye(3,dtype=int)-np.ones((3,3),dtype=int)
    assert np.array_equal(gram,8*np.kron(P3n,P3n))
    L2=2*arb(3).sqrt()*spectral_safe(Wphi)+72*spectral_safe(Wpsi)
    L3=2*arb(6).sqrt()*spectral_safe(Wphi)+72*arb(maxnu).sqrt()*spectral_safe(Wpsi)
    return dict(X=X,U=U,H2=H2,K=K,s=s,t=t,dx=dx,Y=Y,N=N,C=C,Rhs=Rhs,L2=L2,L3=L3,q0=W.horizontal_vector(q0),max_frequency_squared=maxnu,
                Cm=tensor2(K,s,dx),Dm=tensor2(K,dx,dx),c=spectral_safe(tensor2(K,s,dx)),d=spectral_safe(tensor2(K,dx,dx)),u=spectral_safe(U),x=spectral_safe(X),beta=spectral_safe(H2))

def certify(Mth,r):
    st=time.monotonic();D=setup(Mth);ra=arb(float(r));U,X,H2=D['U'],D['X'],D['H2']
    u,x,beta,c,d,L2,L3=[D[k] for k in ('u','x','beta','c','d','L2','L3')]
    (b0,b1,b2,t3,t4,L5,a2,L3a),cache=predictor_residual(D['K'],D['s'],D['t'],D['dx'],ra,True)
    D['residual_cache']=cache
    base=u*ra+beta*ra**2/2;qbase=c*ra+a2*ra**2/2+L3a*ra**3/6
    def qfun(tau):return qbase+(d+L3*x*x*base)*tau+L3*x**3*tau*tau/2
    tau=arb(upper_finite(b0)*1.1);valid=False
    for _ in range(100):
        q=qfun(tau)
        if not q<1:break
        if b0+q*tau<tau:valid=True;break
        tau=arb(upper_finite(b0/(1-q))*1.001)
    out={k:upper_finite(v) for k,v in dict(r=ra,u=u,x=x,beta=beta,c=c,d=d,L2=L2,L3=L3,b0=b0,b1=b1,b2=b2,t3=t3,t4=t4,L5=L5,a2=a2,L3a=L3a,base=base,qbase=qbase,tau=tau,q=q).items()}
    out.update(ok=bool(valid),status='CERTIFIED' if valid else 'NOT ESTABLISHED',seconds=time.monotonic()-st,normal_dimension=22,max_signature_frequency_squared=D['max_frequency_squared'])
    if not valid:return out,D
    delta=base+x*tau
    m1=c+a2*ra+L3a*ra*ra/2+L3*x*x*(u+beta*ra)*tau
    m2=L3*x*(u+beta*ra)**2+L2*x*beta;mzz=d+L3*x*x*delta
    Z1=(b1+m1*tau)/(1-q);Z2=(b2+m2*tau+2*m1*Z1+mzz*Z1*Z1)/(1-q)
    Cw=beta+x*Z2
    for k,v in dict(Z1=Z1,Z2=Z2,Hessian=Cw,n_direct=beta*ra*ra/2+x*tau,n_Hessian=Cw*ra*ra/2,m1=m1,m2=m2,mzz=mzz).items():out[k]=upper_finite(v)
    D.update(tau=tau,q=q,Z1=Z1,Z2=Z2)
    return out,D

def weighted_hessian(D,r,A):
    """Output-weighted refinement; all scalars are rigorous Arb bounds.

    Identity AX z'' = -AX rhs - AX(G_z-I) z'' retains the output map before
    estimating projected residuals. Global Z1,Z2 certify the final factors.
    """
    ra=arb(float(r)); AX=A*D['X'];K=D['K'];n=len(K[0]);m=A.nrows()
    KA=[[sum((acb(AX[i,j])*K[j][a] for j in range(22)),acb(0)) for a in range(n)] for i in range(m)]
    cache=D['residual_cache'];t3=spectral_safe(AX*cache['R3']);t4=spectral_safe(AX*cache['R4']);a2=spectral_safe(AX*cache['A2'])
    cn=[spectral_safe(arb_mat([[KA[i][a].real,KA[i][a].imag] for i in range(m)])) for a in range(n)]
    L5=sum((cn[a]*cache['L5weights'][a] for a in range(n)),arb(0));L3a=sum((cn[a]*cache['L3aweights'][a] for a in range(n)),arb(0))
    b0=t3*ra**3/6+t4*ra**4/24+L5*ra**5/120
    b2=t3*ra+t4*ra*ra/2+L5*ra**3/6
    AW=AX*D['Y'];Wph=arb_mat([[AW[i,j] for j in range(30)] for i in range(m)]);Wps=arb_mat([[AW[i,30]] for i in range(m)])
    L2=2*arb(3).sqrt()*spectral_safe(Wph)+72*spectral_safe(Wps)
    L3=2*arb(6).sqrt()*spectral_safe(Wph)+72*arb(D['max_frequency_squared']).sqrt()*spectral_safe(Wps)
    u,x,beta,tau,Z1,Z2=[D[k] for k in ('u','x','beta','tau','Z1','Z2')]
    c=spectral_safe(AX*D['Cm']);d=spectral_safe(AX*D['Dm']);base=u*ra+beta*ra*ra/2;delta=base+x*tau
    qA=c*ra+a2*ra*ra/2+L3a*ra**3/6+(d+L3*x*x*base)*tau+L3*x**3*tau*tau/2
    m1=c+a2*ra+L3a*ra*ra/2+L3*x*x*(u+beta*ra)*tau
    m2=L3*x*(u+beta*ra)**2+L2*x*beta;mzz=d+L3*x*x*delta
    weightedZ2=b2+m2*tau+2*m1*Z1+mzz*Z1*Z1+qA*Z2
    betaA=spectral_safe(A*D['H2']);basic=spectral_safe(AX)*Z2
    refined=betaA+weightedZ2;simple=betaA+basic
    selected=refined if upper_finite(refined)<upper_finite(simple) else simple
    out={k:upper_finite(v) for k,v in dict(weighted_Hessian=selected,refined_Hessian=refined,simple_Hessian=simple,beta_A=betaA,weighted_Z2=weightedZ2,q_A=qA,weighted_tau=b0+qA*tau,weighted_b0=b0).items()}
    out['status']='CERTIFIED';return out

def edge_source_signature(record):
    """Validate and bind the exact binary64 source fields used by edge_model."""
    if not isinstance(record, dict) or record.get('chart') != 'F6-012':
        raise ValueError('edge cap source must use chart F6-012')
    def hx(value):
        if isinstance(value, bool) or not isinstance(value, (str, int, float)):
            raise ValueError('malformed edge source scalar')
        result = float.fromhex(value) if isinstance(value, str) else float(value)
        if not math.isfinite(result):
            raise ValueError('nonfinite edge source scalar')
        return result
    def vector(key, size, default=None):
        value = record.get(key, default)
        if not isinstance(value, (list, tuple)) or len(value) != size:
            raise ValueError('edge source %s must have %d entries' % (key, size))
        return tuple(hx(v) for v in value)
    q0 = vector('q0', 4, [0] * 4)
    if any(v != 0 for v in q0):
        raise ValueError('this whole-ball replay is implemented only at p=0 in F6-012')
    radius = hx(record['r'])
    if not radius > 0:
        raise ValueError('edge source radius must be positive')
    return ('F6-012', q0, vector('Mth', 16), radius,
            vector('P', 36), vector('U', 144))


def edge_model(record,prec=224):
    """Model in zt_patch.Transfer format, with FORMAT's phase lift certified."""
    ctx.prec=prec
    signature = edge_source_signature(record)
    M=np.array(signature[2]).reshape(4,4);r=signature[3]
    out,D=certify(M,r)
    if not out['ok']:raise ArithmeticError('edge whole-ball contraction failed')
    G=np.zeros((36,36))
    for i in range(6):
        for j in range(6):
            G[6*i+j,6*i+j]+=1;G[6*i+j,6*i]-=1;G[6*i+j,j]-=1;G[6*i+j,0]+=1
    Ga=W.mat(G);qbase=Ga*D['q0'];P=np.array(signature[4]);Ur=np.array(signature[5]).reshape(36,4)
    turns=np.rint((P-W.mid_np(qbase)[:,0])/(2*np.pi)).astype(int)
    qbase=qbase+arb_mat([[2*arb.pi()*int(k)] for k in turns])
    Pm=arb_mat([[arb(float(v))] for v in P])
    if not W.frob(qbase-Pm)<arb.pi()/4:raise ArithmeticError('edge centre phase lift ambiguous')
    q0=W.horizontal_vector(qbase)
    ra=arb(r);lift_gap=W.frob(qbase-Pm)+ra*spectral_safe(Ga*D['U']-W.mat(Ur))
    lift_gap+=spectral_safe(Ga*D['H2'])*ra*ra/2+spectral_safe(Ga*D['X'])*D['tau']
    if not lift_gap<arb.pi():raise ArithmeticError('edge stored winding convention not certified')
    out['dephased_lift_gap_upper']=upper_finite(lift_gap);out['centre_lift_turns']=turns.tolist()
    Mi=W.mat(M).inv();minv=spectral_safe(Mi);Cw=D['beta']+D['x']*D['Z2']
    out['raw_parameter_Hessian_same_ellipsoid_upper']=upper_finite(Cw*minv*minv)
    out['inverse_frame_norm_upper']=upper_finite(minv)
    from types import SimpleNamespace
    D.update(ball=SimpleNamespace(r=r,Mth=M,P=P,U=Ur),r=ra,Q0=q0,Qbase=qbase,W=D['Y'],summary=out,edge_chart=True,
             edge_source_signature=signature)
    return D



# ---------------------------------------------------------------- the edge ball's own sphere transfers (ZT edge_replay.py)
import patches as P


def _edge_res_jac(q, model, c):
    """The augmented residual F(q) - T c (31) and its Jacobian (31 x 36) at a phase enclosure q."""
    F, J = P.residual_jacobian(q)
    inds = [6 * i + 3 + j for i in range(3) for j in range(3)]
    f, g = P.psi_gradient(arb_mat([[q[i, 0]] for i in inds]))
    FF = arb_mat(31, 1); JJ = arb_mat(31, 36)
    for i in range(30):
        FF[i, 0] = F[i, 0]
        for j in range(36): JJ[i, j] = J[i, j]
    FF[30, 0] = f - (model['Rhs'] * c)[30, 0]
    for k, i in enumerate(inds): JJ[30, i] = g[0, k]
    return FF, JJ


def edge_centre_jet(model, c):
    """Q(c) and DQ(c) at an anchor c in the closed ball, from the ORIGINAL contraction (EDGE_REPORT.md section 5): a
    float Newton proposal z_m, then ||z(c) - z_m|| <= ||Y (F(q_p(c) + X z_m) - T c)|| / (1 - q)."""
    qp = model['Qbase'] + model['U'] * c + P.tensor_at(model['H2'], c) * c / 2
    qph = model['Q0'] + model['U'] * c + P.tensor_at(model['H2'], c) * c / 2
    P1 = model['U'] + P.tensor_at(model['H2'], c); zm = arb_mat(22, 1)
    for _ in range(5):
        F, J = _edge_res_jac(qp + model['X'] * zm, model, c)
        zm = (zm - (model['Y'] * J * model['X']).solve(model['Y'] * F)).mid()
    if not P.matrix_norm(zm) < model['tau']: raise ArithmeticError('edge centre proposal outside the normal tube')
    F, _ = _edge_res_jac(qp + model['X'] * zm, model, c)
    eta = P.matrix_norm(model['Y'] * F) / (1 - model['q']); rad = arb(upper_finite(eta))
    zc = arb_mat([[arb(zm[i, 0], rad)] for i in range(22)])
    _, J = _edge_res_jac(qp + model['X'] * zc, model, c)
    Dz = -(model['Y'] * J * model['X']).solve(model['Y'] * (J * P1 - model['Rhs']))
    return qph + model['X'] * zc, P1 + model['X'] * Dz, eta


class EdgeTransfer(P.Transfer):
    """A T1 transfer from the X-ball's sphere, with the output-weighted normal error tau_A (EDGE_REPORT.md section 4)
    in the one-centre test and the weighted Hessian in the actual-centre test."""

    def __init__(self, model, target, group):
        super().__init__(model, target, group)
        self.weighted = weighted_hessian(model, model['ball'].r, self.A)

    def check_global(self, box):
        old = self.xnorm
        try:
            self.xnorm = arb(self.weighted['weighted_tau']) / self.model['tau']
            return super().check(box)
        finally:
            self.xnorm = old

    def check_true_centre(self, box):
        c = P.anchor_for_box(box, self.r); jet = edge_centre_jet(self.model, c); old = self.xnorm
        try:
            self.xnorm = (arb(self.weighted['weighted_Hessian']) - self.hnorm) / self.model['Z2']
            return super().check_local(box, jet=jet)
        finally:
            self.xnorm = old


def cap_target_bounds(transfer):
    """The cap_weighted target interface for an augmented F6-012 model.

    Every stored float in weighted_hessian is a strict proved Arb upper
    bound, converted back to an exact binary rational here.  The full
    local_hessian is used directly; subtracting independently rounded
    predictor bounds would not define a reliable normal-Hessian bound.
    """
    if not transfer.model.get('edge_chart', False) or transfer.kind != 'T1':
        raise ValueError('edge cap target bounds require an F6-012 T1 transfer')
    data = getattr(transfer, 'weighted', None)
    if data is None:
        data = weighted_hessian(transfer.model, transfer.model['ball'].r, transfer.A)
        transfer.weighted = data
    normal = min(data['weighted_Z2'], upper_finite(transfer.xnorm * transfer.model['Z2']))
    return dict(T0=arb(data['weighted_tau']), T2=arb(normal),
                predictor_hessian=transfer.hnorm,
                local_hessian=arb(data['weighted_Hessian']),
                old_T0=transfer.xnorm * transfer.model['tau'],
                old_T2=transfer.xnorm * transfer.model['Z2'],
                old_local_hessian=transfer.hnorm + transfer.xnorm * transfer.model['Z2'],
                edge_augmented=True)


def certify_edge_boxes(model, target, group, boxes):
    """Indices of the boxes of an edge-sphere T1 group certified on box cap sphere (weighted one-centre test, then the
    actual-centre test); the rest are for the box Taylor models."""
    old = ctx.prec
    try:
        tr = EdgeTransfer(model, target, group)
        done = []
        for k, b in enumerate(boxes):
            b = [int(x) for x in b]
            try:
                if tr.check_global(b)['ok'] or tr.check_true_centre(b)['ok']: done.append(k)
            except (ArithmeticError, ZeroDivisionError, ValueError):
                pass
        return done
    finally:
        ctx.prec = old
