"""Boundary transfers on sphere patches from one whole-ball normal form (return ZT).

For a seed ball whose whole-ball certificate (return Z) closes, Q(w) = Q0 + U w + H2[w, w]/2 + X z(w) with
||z|| <= tau on the whole ball.  A general T1 transfer on a dyadic box beta is then certified on beta intersected
with the sphere by an affine bound at the 16 vertices plus ||A H2|| h^2/2 + ||A X|| tau (polynomial mode), or by an
enclosed centre jet with a quadratic remainder (local mode), and the two Psi signs by the 24-frequency identity
||D^2 psi|| <= 72 (proof/theorems/ZT_wholeball_transfers/ZT_return/REPORT.md section 2, Appendix A).  The code
is return ZT's zt_patch.py (normal_form, Transfer.check, Transfer.check_local), unchanged except for its imports.
Floats only propose; every inequality is decided in Arb.
"""
import itertools, math, time
import numpy as np
from flint import arb, acb, arb_mat, acb_mat, ctx
import wholeball as Z
import seedcert as SC

BITS = list(itertools.product((-1, 1), repeat=4))

def col(v):
    return arb_mat([[x if isinstance(x, arb) else arb(float(x))] for x in v])

def normal_form(ball, prec=224):
    """Rigorous centre predictor and all Z constants on the ORIGINAL ball."""
    ctx.prec = prec
    started = time.perf_counter()
    V, X = Z.geometry()
    r = arb(ball.r)
    phh, phv, ok = SC.centre_sides(ball)
    if not ok:
        raise ArithmeticError('numerical side proposal failed')
    th = [arb(float(v)) for v in ball.theta0]
    B, bh = Z.certified_side(th, phh)
    Vs, bv = Z.certified_side([th[k] for k in [0,2,1,3]], phv)
    C = Vs.transpose()
    E = acb_mat([[1,1,1],[1,acb(0,th[0]).exp(),acb(0,th[1]).exp()],
                 [1,acb(0,th[2]).exp(),acb(0,th[3]).exp()]])
    D = -(C * E.conjugate().transpose() * B.conjugate().transpose().inv())
    H = acb_mat(6,6)
    for i,j in itertools.product(range(3),repeat=2):
        H[i,j]=E[i,j]; H[i,3+j]=B[i,j]
        H[3+i,j]=C[i,j]; H[3+i,3+j]=D[i,j]
    sh,sv=Z.signature(B).imag,Z.signature(Vs).imag
    if not (ball.o*sh>0 and ball.o*sv<0):
        raise ArithmeticError('centre orientation failed')
    zz=[H[i,k]*H[l,k].conjugate() for i,l in Z.PAIRS for k in range(6)]
    J=Z.real_jac(zz); W=Z.left_inverse(J,X)
    M=Z.mat(ball.Mth);M.inv()  # the supplied source frame must be invertible
    U=(V-X*W*J*V)*M
    s,dx=Z.differences(U),Z.differences(X)
    h2=-(W*Z.derivative2(zz,s,s)); H2=X*h2
    t=Z.differences(H2)
    u,x,beta=Z.spectral(U),Z.spectral(X),Z.spectral(H2)
    c=Z.spectral(W*Z.derivative2(zz,s,dx))
    d=Z.spectral(W*Z.derivative2(zz,dx,dx))
    wn=Z.spectral(W); L2=2*arb(3).sqrt()*wn; L3=2*arb(6).sqrt()*wn
    b0,b1,b2,t3,t4,L5,a2,L3a=Z.predictor_residual(W,zz,s,t,dx,r)
    base=u*r+beta*r*r/2
    qb=c*r+a2*r*r/2+L3a*r**3/6
    def qfun(tau):
        return qb+(d+L3*x*x*base)*tau+L3*x**3*tau*tau/2
    tau=arb(Z.upper(b0)*1.1)
    for _ in range(100):
        q=qfun(tau)
        if not q<1: raise ArithmeticError('whole-ball contraction not certified')
        if b0+q*tau<tau: break
        tau=arb(Z.upper(b0/(1-q))*1.001)
    else: raise ArithmeticError('whole-ball contraction iteration exhausted')
    delta=base+x*tau
    m1=c+a2*r+L3a*r*r/2+L3*x*x*(u+beta*r)*tau
    m2=L3*x*(u+beta*r)**2+L2*x*beta
    mzz=d+L3*x*x*delta
    Z1=(b1+m1*tau)/(1-q)
    Z2=(b2+m2*tau+2*m1*Z1+mzz*Z1*Z1)/(1-q)
    oh=Z.orientation(H,U,H2,X,r,tau,'h')
    ov=Z.orientation(H,U,H2,X,r,tau,'v')
    if not (oh['ok'] and ov['ok'] and oh['sign']==ball.o and ov['sign']==-ball.o):
        raise ArithmeticError('orientation over original ball not certified')
    # Fix the continuous dephased phase lift from the recorded centre.
    # The four seed entries are forced to theta0, so L q0=theta0 exactly.
    qg=arb_mat(36,1)
    for i,j in itertools.product(range(1,6),repeat=2):
        ref=arb(float(ball.Pg[6*i+j]))
        angle=(H[i,j]*acb(0,-ref).exp()).arg()
        if not abs(angle)<arb.pi()/2:
            raise ArithmeticError('centre phase lift is ambiguous')
        qg[6*i+j,0]=ref+angle
    for k,(i,j) in enumerate(Z.SEEDS):
        if not abs(qg[6*i+j,0]-th[k])<arb(2)**-60:
            raise ArithmeticError('recorded seed lift differs by a winding')
        qg[6*i+j,0]=th[k]
    Q0=Z.horizontal_vector(qg)
    # FORMAT's stored windings refer to the lift nearest the recorded affine
    # phase. Certify that the continuous Z lift is that same lift everywhere.
    G=Z.mat(np.array(SC.gauge_matrix(),dtype=float))
    lift_gap=Z.frob(qg-col(ball.Pg))+r*Z.spectral(G*U-Z.mat(ball.Ug))
    lift_gap+=Z.spectral(G*H2)*r*r/2+Z.spectral(G*X)*tau
    if not lift_gap<arb.pi():
        raise ArithmeticError('continuous lift not identified with stored winding convention')
    summary={k:Z.upper(v) for k,v in dict(r=r,tau=tau,q=q,Z1=Z1,Z2=Z2,
        beta=beta,u=u,x=x,wn=wn,base=base,t3=t3,t4=t4,L5=L5,c=c,d=d,a2=a2,L3a=L3a).items()}
    summary.update(status='CERTIFIED',seconds=time.perf_counter()-started,
                   strict_R_lower=Z.lower(4*arb(min(oh['margin_lower'],ov['margin_lower']))**2),
                   dephased_lift_gap_upper=Z.upper(lift_gap))
    return dict(ball=ball,Q0=Q0,Qbase=qg,U=U,H2=H2,X=X,W=W,H=H,tau=tau,q=q,
                Z1=Z1,Z2=Z2,r=r,summary=summary)

def pd(A):
    """Arb LDL test. Strict PD is sufficient for the PSD majorant."""
    n=A.nrows(); L=[[arb(0) for _ in range(n)] for _ in range(n)]; ds=[]
    for i in range(n):
        di=A[i,i]-sum((L[i][k]*L[i][k]*ds[k] for k in range(i)),arb(0))
        if not di>0: return False
        ds.append(di)
        for j in range(i+1,n):
            L[j][i]=(A[j,i]-sum((L[j][k]*L[i][k]*ds[k] for k in range(i)),arb(0)))/di
    return True

def sphere_lambda(B):
    G=B.transpose()*B
    sm=float(np.linalg.svd(Z.mid_np(B),compute_uv=False)[-1])
    lam=arb(max(0,sm*sm*(1-1e-9)))
    if lam>0 and pd(G-Z.eye(4)*lam): return lam
    return arb(0)

def box_geometry(box,r):
    if len(box)!=5 or any(not isinstance(v,int) or isinstance(v,bool) for v in box):
        raise ValueError('box must contain five integers')
    m,*idx=box
    if not 0<=m<=20 or any(not 0<=i<2**m for i in idx):
        raise ValueError('malformed dyadic box')
    h=r*arb(2)**(-m)
    c=col([r*(arb(-1)+arb(2*i+1)*arb(2)**(-m)) for i in idx])
    vertices=[c+col([h*t for t in bits]) for bits in BITS]
    return c,h,vertices

def tensor_at(H2,c):
    return arb_mat([[sum((H2[a,4*i+j]*c[j,0] for j in range(4)),arb(0))
                    for i in range(4)] for a in range(H2.nrows())])

def affine_sphere_upper(a,B,c,vertices,r,use_sphere=True):
    lam=sphere_lambda(B) if use_sphere else arb(0)
    values=[]
    for v in vertices:
        f=a+B*(v-c)
        values.append((sum((t*t for t in f.entries()),arb(0)),sum((t*t for t in v.entries()),arb(0))-r*r))
    # Every fraction of a verified lambda is valid, and lambda=0 is always
    # valid. Choosing the smallest proved upper bound is itself rigorous.
    choices=[]
    for k in range(5 if use_sphere else 1):
        la=lam*arb(k)/4
        choices.append((max(0,max(Z.upper(f-la*t) for f,t in values)),la))
    val,la=min(choices,key=lambda t:t[0])
    return arb(val).sqrt(),la

def orientation_terms(g,rows,cols,side):
    G=SC.g_matrix(g)
    ri=list(rows); ci=list(cols)
    rc=[x for x in range(6) if x not in ri]; cc=[x for x in range(6) if x not in ci]
    inds=[6*i+j for i in ri for j in cc] if side=='h' else [6*i+j for j in ci for i in rc]
    P3=np.eye(3)-np.ones((3,3))/3
    # Construct projection exactly, not with the numerical P3 above.
    T=arb_mat([[arb(3*int(i==j)-1)/3 for j in range(3)] for i in range(3)])
    S=arb_mat([[int(k==idx) for k in range(36)] for idx in inds])*Z.mat(G)
    R=arb_mat([[T[i//3,j//3]*T[i%3,j%3] for j in range(9)] for i in range(9)])
    return S,R*S

def psi_gradient(v):
    f=arb(0); grad=[arb(0) for _ in range(9)]
    for sg,nu in Z.signature_terms()[1]:
        t=sum((nu[k]*v[k,0] for k in range(9)),arb(0))
        f+=sg*t.sin()
        co=sg*t.cos()
        for k in range(9): grad[k]+=nu[k]*co
    return f,arb_mat([grad])

def matrix_norm(A):
    # Rows may vanish identically for seed-corner symmetries.
    if all(x==0 for x in A.entries()): return arb(0)
    try:
        return Z.spectral(A)
    except ArithmeticError:
        # Near exact cancellations can make the floating proposal a severe
        # underestimate of interval radii. A Frobenius upper bound always
        # remains valid, including intervals containing zero.
        return sum((arb(Z.upper(abs(x)))**2 for x in A.entries()),arb(0)).sqrt()

def residual_jacobian(q):
    """Full row-pair residual and Jacobian at a phase enclosure."""
    ee=[acb(0,q[i,0]).exp() for i in range(36)]
    zz=[ee[6*i+k]*ee[6*j+k].conjugate() for i,j in Z.PAIRS for k in range(6)]
    sums=[sum(zz[6*p:6*p+6],acb(0)) for p in range(15)]
    F=col([v.real for v in sums]+[v.imag for v in sums])
    return F,Z.real_jac(zz)

def centre_jet(model,c):
    """Enclose Q(c), DQ(c) with the ORIGINAL contraction; c must lie in B_r.

    A floating Newton iteration proposes a rational normal coordinate only.
    Its residual and global contraction yield a rigorous root enclosure.
    """
    qp=model['Qbase']+model['U']*c+tensor_at(model['H2'],c)*c/2
    qph=model['Q0']+model['U']*c+tensor_at(model['H2'],c)*c/2
    P1=model['U']+tensor_at(model['H2'],c)
    zm=arb_mat(21,1)
    for _ in range(5):
        F,J=residual_jacobian(qp+model['X']*zm)
        dz=(model['W']*J*model['X']).solve(model['W']*F)
        zm=(zm-dz).mid()
    if not Z.frob(zm)<model['tau']:
        raise ArithmeticError('centre proposal outside original normal tube')
    F,_=residual_jacobian(qp+model['X']*zm)
    eta=Z.frob(model['W']*F)/(1-model['q'])
    rad=arb(Z.upper(eta))
    zc=col([arb(zm[i,0],rad) for i in range(21)])
    _,Jc=residual_jacobian(qp+model['X']*zc)
    Dz=-(model['W']*Jc*model['X']).solve(model['W']*Jc*P1)
    return qph+model['X']*zc,P1+model['X']*Dz,eta

def anchor_for_box(box,r):
    """Exact radial projection of the box midpoint into the closed ball."""
    m,*idx=box
    ints=[2*i+1-2**m for i in idx];sq=sum(v*v for v in ints)
    den=2**m
    if sq<=den*den:
        return col([r*arb(v)/den for v in ints])
    return col([r*arb(v)/arb(sq).sqrt() for v in ints])

class Transfer:
    def __init__(self,model,target,group):
        self.model=model; self.target=target; self.group=group
        self.kind=group['kind']; self.r=model['r']
        if self.kind not in ('T0','T1'):
            raise ValueError('this verifier handles T0 and T1; T3 requires the edge inverse test')
        wind=group.get('wind')
        if not isinstance(wind,list) or len(wind)!=4 or any(not isinstance(x,int) or isinstance(x,bool) for x in wind):
            raise ValueError('invalid transfer winding')
        Mi=Z.mat(target.Mth).inv()
        self.offset=Mi*(col([2*arb.pi()*n for n in wind])-col(target.theta0))
        self.target_r=arb(target.r)
        ball=model['ball']
        self.linear=False
        if self.kind=='T0':
            if target.o!=ball.o: raise ValueError('T0 orientation mismatch')
            self.linear=True
            self.a0=Mi*col(ball.theta0)+self.offset
            self.B0=Mi*Z.mat(ball.Mth)
            return
        rows,cols,g=group['rows'],group['cols'],group['g']
        L=SC.corner_L(rows,cols)@SC.g_matrix(g)
        self.A=Mi*Z.mat(L)
        # Cross-ratios annihilate horizontal-gauge differences.
        self.a0=self.A*model['Q0']+self.offset
        self.B0=self.A*model['U']
        self.AH=self.A*model['H2']; self.AX=self.A*model['X']
        self.hnorm=matrix_norm(self.AH); self.xnorm=matrix_norm(self.AX)
        self.sides=[]
        if sorted(rows)==[0,1,2] and sorted(cols)==[0,1,2] and not model.get('edge_chart',False):
            so=ball.o*(1 if g in ('id','conjT') else -1)
            if target.o!=so: raise ValueError('linear corner orientation mismatch')
            self.linear=True
            # Exact linear seed map avoids a numerical cancellation of H2.
            Emb=np.zeros((36,4),int)
            for k,(i,j) in enumerate(Z.SEEDS): Emb[6*i+j,k]=1
            LL=Z.mat(L@Emb)
            self.a0=Mi*LL*col(ball.theta0)+self.offset
            self.B0=Mi*LL*Z.mat(ball.Mth)
        else:
            for side,sg in [('h',target.o),('v',-target.o)]:
                S,R=orientation_terms(g,rows,cols,side)
                RH=R*model['H2']; RX=R*model['X']
                self.sides.append(dict(S=S,R=R,sg=sg,RH=RH,RX=RX,
                    hn=matrix_norm(RH),xn=matrix_norm(RX)))

    def check(self,box,use_sphere=True):
        c,h,vertices=box_geometry(box,self.r)
        if self.linear:
            a=self.a0+self.B0*c; B=self.B0; eps=arb(0)
        else:
            Hc=tensor_at(self.AH,c)
            a=self.a0+self.B0*c+Hc*c/2
            B=self.B0+Hc
            eps=self.hnorm*(4*h*h)/2+self.xnorm*self.model['tau']
        mx,lam=affine_sphere_upper(a,B,c,vertices,self.r,use_sphere)
        target_margin=self.target_r-mx-eps
        ans=dict(ok=False,target_margin_lower=Z.lower(target_margin),
                 target_bound_upper=Z.upper(mx+eps),error_upper=Z.upper(eps),
                 lambda_lower=Z.lower(lam),box=list(box))
        if not target_margin>0: ans['reason']='target'; return ans
        if self.linear: ans['ok']=True; ans['reason']='CERTIFIED'; return ans
        Qpc=self.model['Q0']+self.model['U']*c+tensor_at(self.model['H2'],c)*c/2
        Dpc=self.model['U']+tensor_at(self.model['H2'],c)
        margins=[]
        for side in self.sides:
            f,g=psi_gradient(side['S']*Qpc)
            RB=side['R']*Dpc
            eh=side['hn']*(4*h*h)/2+side['xn']*self.model['tau']
            ed=matrix_norm(RB)*(2*h)+eh
            # Gradient applied before norms: scalar quadratic is a 4x4 form.
            gh=g*side['RH']
            gh4=arb_mat([[gh[0,4*i+j] for j in range(4)] for i in range(4)])
            eg=matrix_norm(gh4)*(4*h*h)/2+matrix_norm(g*side['RX'])*self.model['tau']
            lin=g*RB
            lo=min(Z.lower(side['sg']*(f+(lin*(v-c))[0,0])) for v in vertices)
            margin=arb(lo)-eg-36*ed*ed
            margins.append(Z.lower(margin))
        ans['orientation_margins_lower']=margins
        if not all(v>0 for v in margins): ans['reason']='orientation'; return ans
        ans['ok']=True; ans['reason']='CERTIFIED'; return ans

    def check_local(self,box,use_sphere=True,jet=None):
        """True-centre Taylor test, with error vanishing quadratically."""
        if self.linear:return self.check(box,use_sphere)
        _,_,vertices=box_geometry(box,self.r)
        c=anchor_for_box(box,self.r)
        Qc,Dc,eta=centre_jet(self.model,c) if jet is None else jet
        dsq=arb(max(Z.upper(sum(((v[k,0]-c[k,0])*(v[k,0]-c[k,0]) for k in range(4)),arb(0))) for v in vertices))
        delta=dsq.sqrt()
        a=self.A*Qc+self.offset;B=self.A*Dc
        C_A=self.hnorm+self.xnorm*self.model['Z2']
        eps=C_A*dsq/2
        mx,lam=affine_sphere_upper(a,B,c,vertices,self.r,use_sphere)
        margin=self.target_r-mx-eps
        ans=dict(ok=False,box=list(box),mode='local',target_margin_lower=Z.lower(margin),
                 target_bound_upper=Z.upper(mx+eps),error_upper=Z.upper(eps),
                 weighted_hessian_upper=Z.upper(C_A),centre_root_error_upper=Z.upper(eta))
        if not margin>0:ans['reason']='target';return ans
        margins=[]
        for side in self.sides:
            f,g=psi_gradient(side['S']*Qc)
            RB=side['R']*Dc
            C_R=side['hn']+side['xn']*self.model['Z2']
            eps_R=C_R*dsq/2
            eta_R=matrix_norm(RB)*delta+eps_R
            gh=g*side['RH']
            gh4=arb_mat([[gh[0,4*i+j] for j in range(4)] for i in range(4)])
            C_g=matrix_norm(gh4)+matrix_norm(g*side['RX'])*self.model['Z2']
            lin=g*RB
            lo=min(Z.lower(side['sg']*(f+(lin*(v-c))[0,0])) for v in vertices)
            margins.append(Z.lower(arb(lo)-C_g*dsq/2-36*eta_R**2))
        ans['orientation_margins_lower']=margins
        if not all(v>0 for v in margins):ans['reason']='orientation';return ans
        ans['ok']=True;ans['reason']='CERTIFIED';return ans



_MODELS = {}


def model_for(ball):
    """The ZT normal form of a seed ball (cached per ball object), or None when its whole-ball contraction, orientation
    or lift identification does not certify (the caller then uses the box Taylor models)."""
    key = id(ball)
    if key not in _MODELS:
        old = ctx.prec
        try:
            _MODELS[key] = normal_form(ball)
        except (ArithmeticError, ZeroDivisionError, ValueError):
            _MODELS[key] = None
        finally:
            ctx.prec = old
    return _MODELS[key]


def certify_boxes(model, target, group, boxes, local=True):
    """Indices of the boxes of a general T1 group certified on box intersected with the sphere (polynomial mode, then
    local mode); the rest are for the box Taylor-model test.  local=False for an edge ball: ZT's local mode there needs
    the augmented system's centre jets (edge_replay.py), which are not ported."""
    old = ctx.prec
    try:
        tr = Transfer(model, target, group)
        done = []
        for k, b in enumerate(boxes):
            b = [int(x) for x in b]
            try:
                if tr.check(b)['ok'] or (local and tr.check_local(b)['ok']): done.append(k)
            except (ArithmeticError, ZeroDivisionError, ValueError):
                pass
        return done
    finally:
        ctx.prec = old
