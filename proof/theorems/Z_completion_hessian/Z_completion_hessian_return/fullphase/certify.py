"""Arb replay of whole-ball matched-completion enclosures and Hessian bounds.

Only the centre side roots use a Krawczyk test. No seed subdivision is used.
The theorem and exact-rational input conventions are in REPORT.md.
Requires numpy, scipy, python-flint. Run with --limit 1 for a quick check.
"""
import argparse, csv, itertools, json, math, sys, time
from pathlib import Path
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'deps'))
sys.path.insert(0,str(ROOT/'numerics'))
sys.path.insert(0,str(ROOT))
from flint import arb, acb, arb_mat, acb_mat, ctx
from core import SIDE_A, SEED_A
from signature_replay import signature_terms

PAIRS=list(itertools.combinations(range(6),2))
SEEDS=[(1,1),(1,2),(2,1),(2,2)]
FREE=[(i,j) for i in range(1,6) for j in range(1,6) if (i,j) not in SEEDS]

def mat(a): return arb_mat([[arb(float(x)) for x in row] for row in np.asarray(a)])
def mid_np(a): return np.array([[float(a[i,j].mid()) for j in range(a.ncols())] for i in range(a.nrows())])
def eye(n): return arb_mat([[int(i==j) for j in range(n)] for i in range(n)])
def frob(a): return sum((x*x for x in a.entries()),arb(0)).sqrt()
def upper(x):
    # This decimal/binary float is a PROVED strict upper bound, not just formatting.
    y=math.nextafter(float(x.upper()),math.inf)
    while not arb(y)>x: y=math.nextafter(y,math.inf)
    return y
def lower(x):
    y=math.nextafter(float(x.lower()),-math.inf)
    while not arb(y)<x: y=math.nextafter(y,-math.inf)
    return y

def spectral(a):
    """Certified Euclidean operator norm via a positive-definite Gram shift.

    SVD proposes a bound only. An Arb LDL^T factorization verifies it.
    """
    if a.nrows()>a.ncols(): a=a.transpose()
    n=a.nrows()
    if n==1: return frob(a)
    gram=a*a.transpose()
    proposal=float(np.linalg.norm(mid_np(a),2))**2
    lam=max(1e-80,proposal*(1+1e-9)+1e-30)
    for attempt in range(8):
        b=eye(n)*arb(lam)-gram
        L=[[arb(0) for _ in range(n)] for _ in range(n)]
        ds=[]; good=True
        for i in range(n):
            di=b[i,i]-sum((L[i][k]**2*ds[k] for k in range(i)),arb(0))
            if not di>0: good=False; break
            ds.append(di)
            for j in range(i+1,n):
                L[j][i]=(b[j,i]-sum((L[j][k]*L[i][k]*ds[k] for k in range(i)),arb(0)))/di
        if good: return arb(lam).sqrt()
        lam=lam*1.01+1e-25
    raise ArithmeticError('spectral Gram test failed')

def horizontal_basis(indices):
    return arb_mat([[arb(36*int(i==a and j==b)-6*int(i==a)-6*int(j==b)+1)/36
                    for a,b in indices] for i in range(6) for j in range(6)])

def horizontal_vector(a):
    total=sum((a[i,0] for i in range(36)),arb(0))/36
    rows=[sum((a[6*i+j,0] for j in range(6)),arb(0))/6 for i in range(6)]
    cols=[sum((a[6*i+j,0] for i in range(6)),arb(0))/6 for j in range(6)]
    return arb_mat([[a[6*i+j,0]-rows[i]-cols[j]+total] for i in range(6) for j in range(6)])

def geometry():
    V=horizontal_basis(SEEDS); X0=horizontal_basis(FREE)
    frozen=json.loads((Path(__file__).resolve().parent/'basis.json').read_text())
    assert frozen['free_indices']==[list(t) for t in FREE]
    T=mat(np.array([[float.fromhex(v) for v in row] for row in frozen['T_hex']]))
    T.inv()  # full-rank exact rational basis; raises if not verified.
    X=X0*T
    return V,X

def left_inverse(J,X):
    """Unique exact Gram left inverse, enclosed by Arb.

    Fixing this definition and the rational basis makes stored certificate
    constants and independently replayed witness calculations refer to the
    identical projected equation, without depending on floating SVD choices.
    """
    A=J*X
    return (A.transpose()*A).solve(A.transpose())

def phase_exp(v): return [acb(0,x).exp() for x in v]

def side_f_j(phi,theta):
    sp=phase_exp([sum((arb(int(SIDE_A[k,j]))*phi[j] for j in range(6)),arb(0)) for k in range(9)])
    se=phase_exp([sum((arb(int(SEED_A[k,j]))*theta[j] for j in range(4)),arb(0)) for k in range(9)])
    f=[sum((sp[3*p+k]+se[3*p+k] for k in range(3)),acb(0)) for p in range(3)]
    jc=[[sum((acb(0,int(SIDE_A[3*p+k,j]))*sp[3*p+k] for k in range(3)),acb(0)) for j in range(6)] for p in range(3)]
    F=arb_mat([[z.real] for z in f]+[[z.imag] for z in f])
    J=arb_mat([[z.real for z in row] for row in jc]+[[z.imag for z in row] for row in jc])
    return F,J

def certified_side(theta,guess):
    p=arb_mat([[arb(float(v))] for v in guess])
    for _ in range(6):
        F,J=side_f_j([p[i,0] for i in range(6)],theta)
        p=(p-J.solve(F)).mid()
    epsilon=arb(2)**-100
    pv=[p[i,0] for i in range(6)]
    tube=[arb(v,epsilon) for v in pv]
    F0,J0=side_f_j(pv,theta)
    Y=J0.inv().mid()
    Ft,Jt=side_f_j(tube,theta)
    A=eye(6)-Y*Jt
    b=Y*F0
    # Arb's order is a separated-interval comparison, not max of upper bounds.
    # Convert each candidate to a proved outward upper bound before taking max.
    q=arb(max(upper(sum((abs(A[i,j]) for j in range(6)),arb(0))) for i in range(6)))
    bmax=arb(max(upper(abs(b[i,0])) for i in range(6)))
    if not q<1 or not bmax+q*epsilon<epsilon: raise ArithmeticError('centre Krawczyk test failed')
    e=phase_exp(tube)
    S=acb_mat([[1,1,1],e[:3],e[3:]])
    return S,dict(side_q=upper(q),side_b=upper(bmax),side_radius=upper(epsilon))

def signature(S):
    perm=sum((S[0,p[0]]*S[1,p[1]]*S[2,p[2]] for p in itertools.permutations(range(3))),acb(0))
    prod=acb(1)
    for z in S.entries(): prod*=z
    return perm*S.det()**2/prod

def center(row,co):
    th=[arb(row['theta0_'+str(k)]) for k in range(1,5)]
    B,bh=certified_side(th,co['phih'])
    V,bv=certified_side([th[k] for k in [0,2,1,3]],co['phiv'])
    C=V.transpose()
    E=acb_mat([[1,1,1],[1,acb(0,th[0]).exp(),acb(0,th[1]).exp()],
               [1,acb(0,th[2]).exp(),acb(0,th[3]).exp()]])
    D=-(C*E.conjugate().transpose()*B.conjugate().transpose().inv())
    H=acb_mat(6,6)
    for i,j in itertools.product(range(3),repeat=2):
        H[i,j]=E[i,j]; H[i,3+j]=B[i,j];H[3+i,j]=C[i,j];H[3+i,3+j]=D[i,j]
    sh=signature(B).imag; sv=signature(V).imag
    if not int(row['o'])*sh>0 or not int(row['o'])*sv<0: raise ArithmeticError('centre orientation failed')
    return H,sh,sv,dict(h=bh,v=bv,detB_lower=lower(abs(B.det())),detC_lower=lower(abs(C.det())))

def differences(A):
    return arb_mat([[A[6*i+k,j]-A[6*l+k,j] for j in range(A.ncols())] for i,l in PAIRS for k in range(6)])

def real_jac(z):
    j=arb_mat(30,36)
    for p,(i,l) in enumerate(PAIRS):
        for k in range(6):
            q=acb(0,1)*z[6*p+k]
            j[p,6*i+k]=q.real;j[p,6*l+k]=-q.real
            j[p+15,6*i+k]=q.imag;j[p+15,6*l+k]=-q.imag
    return j

def derivative2(z,a,b):
    out=arb_mat(30,a.ncols()*b.ncols())
    for p in range(15):
        for i in range(a.ncols()):
            for j in range(b.ncols()):
                v=-sum((z[6*p+k]*a[6*p+k,i]*b[6*p+k,j] for k in range(6)),acb(0))
                out[p,i*b.ncols()+j]=v.real;out[p+15,i*b.ncols()+j]=v.imag
    return out

def predictor_residual(W,z,s,t,dx,r):
    kr=arb_mat(21,90);ki=arb_mat(21,90)
    for i in range(21):
        for a in range(90):
            q=acb(W[i,a//6],-W[i,15+a//6])*z[a]
            kr[i,a]=q.real;ki[i,a]=q.imag
    p3r=arb_mat(90,64);p3i=arb_mat(90,64)
    p4r=arb_mat(90,256);p4i=arb_mat(90,256)
    a2r=arb_mat(90,16*21);a2i=arb_mat(90,16*21)
    L5=arb(0);L3a=arb(0)
    triples=list(itertools.product(range(4),repeat=3))
    quads=list(itertools.product(range(4),repeat=4))
    for a in range(90):
        sa=[s[a,j] for j in range(4)]
        ta=[[t[a,4*i+j] for j in range(4)] for i in range(4)]
        for col,(i,j,k) in enumerate(triples):
            p3r[a,col]=-(ta[i][j]*sa[k]+ta[i][k]*sa[j]+ta[j][k]*sa[i])
            p3i[a,col]=-sa[i]*sa[j]*sa[k]
        for col,(i,j,k,l) in enumerate(quads):
            p4r[a,col]=sa[i]*sa[j]*sa[k]*sa[l]-ta[i][j]*ta[k][l]-ta[i][k]*ta[j][l]-ta[i][l]*ta[j][k]
            p4i[a,col]=-(ta[i][j]*sa[k]*sa[l]+ta[i][k]*sa[j]*sa[l]+ta[i][l]*sa[j]*sa[k]
                           +ta[j][k]*sa[i]*sa[l]+ta[j][l]*sa[i]*sa[k]+ta[k][l]*sa[i]*sa[j])
        for i,j,k in itertools.product(range(4),range(4),range(21)):
            col=(4*i+j)*21+k
            a2r[a,col]=-ta[i][j]*dx[a,k]
            a2i[a,col]=-sa[i]*sa[j]*dx[a,k]
        sn=sum((v*v for v in sa),arb(0)).sqrt()
        tn=spectral(arb_mat(ta))
        ca=sum((kr[i,a]**2 for i in range(21)),arb(0))
        cb=sum((kr[i,a]*ki[i,a] for i in range(21)),arb(0))
        cc=sum((ki[i,a]**2 for i in range(21)),arb(0))
        cn=((ca+cc+((ca-cc)**2+4*cb**2).sqrt())/2).sqrt()
        an=sn+r*tn
        L5+=cn*(an**5+10*tn*an**3+15*tn**2*an)
        dxn=sum((dx[a,k]**2 for k in range(21)),arb(0)).sqrt()
        L3a+=cn*dxn*(an**3+3*tn*an)
    R3=kr*p3r-ki*p3i;R4=kr*p4r-ki*p4i
    t3=spectral(R3);t4=spectral(R4)
    b0=t3*r**3/6+t4*r**4/24+L5*r**5/120
    b1=t3*r**2/2+t4*r**3/6+L5*r**4/24
    b2=t3*r+t4*r**2/2+L5*r**3/6
    a2=spectral(kr*a2r-ki*a2i)
    return b0,b1,b2,t3,t4,L5,a2,L3a

def side_selection(which):
    inds=[(i,3+j) for i in range(3) for j in range(3)] if which=='h' else [(3+j,i) for i in range(3) for j in range(3)]
    P3=arb_mat([[arb(int(i==j))-arb(1)/3 for j in range(3)] for i in range(3)])
    A=arb_mat(9,36)
    for a in range(9):
        for b,(i,j) in enumerate(inds): A[a,6*i+j]=P3[a//3,b//3]*P3[a%3,b%3]
    return A,inds

def orientation(H,U,H2,X,r,tau,which):
    A,inds=side_selection(which)
    entries=[H[i,j] for i,j in inds]
    _,terms=signature_terms()
    grad=[arb(0) for _ in range(9)]; f=arb(0)
    for sg,nu in terms:
        z=acb(1)
        for a,k in enumerate(nu):
            if k: z*=entries[a]**k
        f+=sg*z.imag
        for a,k in enumerate(nu): grad[a]+=sg*k*z.real
    g=arb_mat([grad]);AU=A*U;AH=A*H2;AX=A*X
    eps=spectral(AU)*r+spectral(AH)*r*r/2+spectral(AX)*tau
    gh=g*AH
    gh4=arb_mat([[gh[0,4*i+j] for j in range(4)] for i in range(4)])
    variation=spectral(g*AU)*r+spectral(gh4)*r*r/2+spectral(g*AX)*tau+36*eps**2
    margin=abs(f)-variation
    return dict(ok=bool(margin>0),sign=1 if f>0 else -1,f_abs_lower=lower(abs(f)),variation_upper=upper(variation),margin_lower=lower(margin))

def certify(row,co,Mfloat,V,X):
    started=time.perf_counter();r=arb(row['r'])
    H,sh,sv,center_meta=center(row,co)
    z=[H[i,k]*H[l,k].conjugate() for i,l in PAIRS for k in range(6)]
    J=real_jac(z)
    W=left_inverse(J,X)
    M=mat(Mfloat)
    U=(V-X*W*J*V)*M
    s=differences(U);dx=differences(X)
    h2=-(W*derivative2(z,s,s));H2=X*h2;t=differences(H2)
    C=W*derivative2(z,s,dx);D=W*derivative2(z,dx,dx)
    u=spectral(U);x=spectral(X);gamma=spectral(h2);beta=spectral(H2)
    c=spectral(C);d=spectral(D);kn=spectral(W)
    L2=2*arb(3).sqrt()*kn;L3=2*arb(6).sqrt()*kn
    b0,b1,b2,t3,t4,L5,a2,L3a=predictor_residual(W,z,s,t,dx,r)
    base=u*r+beta*r*r/2
    qbase=c*r+a2*r*r/2+L3a*r**3/6
    def qfun(tau): return qbase+(d+L3*x*x*base)*tau+L3*x**3*tau**2/2
    tau=arb(upper(b0)*1.1)
    valid=False
    for _ in range(100):
        q=qfun(tau)
        if not q<1:break
        if b0+q*tau<tau:valid=True;break
        tau=arb(upper(b0/(1-q))*1.001)
    out=dict(j=int(row['j']),r=float(row['r']),R_input=float(row['R_centre']),contraction=valid,
             center=center_meta,status='CERTIFIED' if valid else 'NOT ESTABLISHED',
             beta=upper(beta),gamma=upper(gamma),u=upper(u),x=upper(x),c=upper(c),d=upper(d),W_norm=upper(kn),
             residual_3=upper(t3),residual_4=upper(t4),residual_5=upper(L5),b0=upper(b0),b1=upper(b1),b2=upper(b2),
             q=upper(q),tau=upper(tau),qbase=upper(qbase),a2=upper(a2),L3a=upper(L3a))
    if valid:
        delta=base+x*tau
        m1=c+a2*r+L3a*r*r/2+L3*x*x*(u+beta*r)*tau
        m2=L3*x*(u+beta*r)**2+L2*x*beta
        mzz=d+L3*x*x*delta
        dz=(b1+m1*tau)/(1-q)
        ddz=(b2+m2*tau+2*m1*dz+mzz*dz**2)/(1-q)
        Cw=beta+x*ddz; ndirect=beta*r*r/2+x*tau
        oh=orientation(H,U,H2,X,r,tau,'h');ov=orientation(H,U,H2,X,r,tau,'v')
        orient=oh['ok'] and ov['ok'] and oh['sign']==int(row['o']) and ov['sign']==-int(row['o'])
        # Derivatives in raw seed coordinates over this same ellipsoid.
        Mi=M.inv();minv=spectral(Mi)
        tensor_Mi=arb_mat([[Mi[a,i]*Mi[b,j] for i in range(4) for j in range(4)]
                          for a in range(4) for b in range(4)])
        beta_theta=spectral(H2*tensor_Mi)
        out.update(Cw=upper(Cw),n_direct=upper(ndirect),n_hessian=upper(Cw*r*r/2),dz=upper(dz),ddz=upper(ddz),
                   Ctheta_ellipsoid=upper(beta_theta+x*ddz*minv**2),beta_theta=upper(beta_theta),
                   Ctheta_coarse=upper(Cw*minv**2),M_inverse_norm=upper(minv),orientation=orient,sign_h=oh,sign_v=ov,
                   strict_margin_R=lower(4*arb(min(oh['margin_lower'],ov['margin_lower']))**2) if orient else None)
        # Supply an explicitly rounded C1 record, not only exact-centre formulas.
        # Rotating each entry near +1 selects an unambiguous analytic phase lift.
        ref=np.angle(co['H']).reshape(36)
        pg=arb_mat([[arb(float(ref[6*i+j]))+
                     (H[i,j]*acb(0,-arb(float(ref[6*i+j]))).exp()).arg()]
                    for i in range(6) for j in range(6)])
        pexact=horizontal_vector(pg)
        pf=mid_np(pexact);uf=mid_np(U)
        ep=frob(pexact-mat(pf));eu=spectral(U-mat(uf))
        out.update(P_rounding=upper(ep),U_rounding=upper(eu),n_record=upper(ndirect+ep+r*eu),
                   rounded_record=dict(theta0_decimal=[row['theta0_'+str(k)] for k in range(1,5)],
                                       r_decimal=row['r'],o=int(row['o']),
                                       Mth_hex=[[float(v).hex() for v in rr] for rr in Mfloat],
                                       P_hex=[float(v).hex() for v in pf[:,0]],
                                       U_hex=[[float(v).hex() for v in rr] for rr in uf]))
        if not orient:out['status']='CONTRACTION CERTIFIED; STRICT IDENTIFICATION NOT ESTABLISHED'
    out['seconds']=time.perf_counter()-started
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int,default=300);ap.add_argument('--offset',type=int,default=0)
    ap.add_argument('--precision',type=int,default=224);ap.add_argument('--out',default='certified_results.jsonl')
    ap.add_argument('--metric',choices=['canonical','euclidean'],default='canonical')
    ap.add_argument('--radius',help='optional exact decimal radius replacing the CSV radius')
    args=ap.parse_args();ctx.prec=args.precision
    rows=list(csv.DictReader(open(ROOT/'Z_completion_hessian/context/ball_table.csv')))
    data=np.load(ROOT/'numerics/centres.npz')
    V,X=geometry();outfile=Path(args.out)
    if not outfile.is_absolute():outfile=Path(__file__).resolve().parent/outfile
    with open(outfile,'w') as f:
        for i in range(args.offset,min(len(rows),args.offset+args.limit)):
            co={k:data[k][i] for k in ['H','Q1','Q2','phih','phiv']}
            row=dict(rows[i])
            if args.radius is not None:row['r']=args.radius
            frame=data['M'][i] if args.metric=='canonical' else np.eye(4)
            try:out=certify(row,co,frame,V,X)
            except Exception as exc:
                out=dict(j=int(rows[i]['j']),status='ERROR',error=repr(exc))
                import traceback;traceback.print_exc()
            out['metric']=args.metric
            f.write(json.dumps(out)+'\n');f.flush()
            print({k:out.get(k) for k in ['j','status','q','n_direct','Cw','orientation','seconds','error']},flush=True)

if __name__=='__main__':main()
