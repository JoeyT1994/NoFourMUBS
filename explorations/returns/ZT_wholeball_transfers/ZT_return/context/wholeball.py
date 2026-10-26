"""Whole-ball C1 for a seed ball, without subdividing it (return Z, explorations/returns/Z_completion_hessian).

From the exact centre (side roots by a Krawczyk test), the projected Hadamard equations along a fixed normal basis
and a fixed Gram left inverse W give, for the whole ellipsoid theta0 + Mth w, ||w|| <= r: existence of the matched
analytic branch (a contraction tau), both orientation signs, R > 0, and ||h Q(w) - P_exact - U w|| <= n_direct.
Against the certificate's stored P and U: n_record = n_direct + ||P_exact - P|| + r ||U_exact - U||.  The theorem is
THEOREM.md of return Z; the code is its fullphase/certify.py, with the certificate's centre, frame and branch.
Every comparison is an Arb inequality; floats only propose (side roots, the spectral bound shifts).
"""
import itertools, json, math, time
from pathlib import Path
from collections import Counter
from itertools import permutations, product
import numpy as np
from flint import arb, acb, arb_mat, acb_mat, ctx

# the side and seed exponent tables of the side Gram equations (Z numerics/core.py)
SIDE_A = np.zeros((9, 6)); SEED_A = np.zeros((9, 4))
for j in range(3):
    SIDE_A[j, j] = -1; SIDE_A[3 + j, 3 + j] = -1; SIDE_A[6 + j, j] = 1; SIDE_A[6 + j, 3 + j] = -1
SEED_A[1, 0] = -1; SEED_A[2, 1] = -1; SEED_A[4, 2] = -1; SEED_A[5, 3] = -1
SEED_A[7, 0] = 1; SEED_A[7, 2] = -1; SEED_A[8, 1] = 1; SEED_A[8, 3] = -1


def signature_terms():
    perms = list(permutations(range(3)))
    sgn = [(-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
           for p in perms]
    coefficients = Counter()
    for a, b, d in product(range(6), repeat=3):
        nu = [-1] * 9
        for p in (perms[a], perms[b], perms[d]):
            for i, j in enumerate(p):
                nu[3 * i + j] += 1
        coefficients[tuple(nu)] += sgn[b] * sgn[d]
    coefficients = {nu: z for nu, z in coefficients.items() if z}
    assert len(coefficients) == 55
    seen, terms = set(), []
    frequency_set = set(coefficients) | {tuple(-x for x in v) for v in coefficients}
    for nu in sorted(frequency_set):
        if nu in seen:
            continue
        neg = tuple(-x for x in nu)
        seen.update((nu, neg))
        z = coefficients.get(nu, 0) - coefficients.get(neg, 0)
        if z:
            assert abs(z) == 1
            terms.append((z, nu))
    return coefficients, terms




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
    frozen=json.loads((Path(__file__).resolve().parent/'wholeball_basis.json').read_text())
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



def wholeball_c1(theta0, Mth, r, o, P, U, phih, phiv, prec=224):
    """theta0 (4), Mth (4, 4), r, o, the stored horizontal P (36), U (36, 4), float side guesses (6 each); floats are
    exact binary64.  Returns dict(ok, n_record, status, ...): ok iff the branch contracts and both signs certify."""
    old = ctx.prec; ctx.prec = prec
    started = time.perf_counter()
    try:
        V, X = geometry()
        ra = arb(float(r))
        th = [arb(float(t)) for t in theta0]
        B, bh = certified_side(th, phih)
        Vs, bv = certified_side([th[k] for k in [0, 2, 1, 3]], phiv)
        C = Vs.transpose()
        E = acb_mat([[1, 1, 1], [1, acb(0, th[0]).exp(), acb(0, th[1]).exp()], [1, acb(0, th[2]).exp(), acb(0, th[3]).exp()]])
        D = -(C * E.conjugate().transpose() * B.conjugate().transpose().inv())
        H = acb_mat(6, 6)
        for i, j in itertools.product(range(3), repeat=2):
            H[i, j] = E[i, j]; H[i, 3 + j] = B[i, j]; H[3 + i, j] = C[i, j]; H[3 + i, 3 + j] = D[i, j]
        sh = signature(B).imag; sv = signature(Vs).imag
        if not (o * sh > 0 and o * sv < 0): return dict(ok=False, status='centre orientation not certified')
        z = [H[i, k] * H[l, k].conjugate() for i, l in PAIRS for k in range(6)]
        J = real_jac(z); W = left_inverse(J, X); M = mat(Mth)
        Ue = (V - X * W * J * V) * M
        s = differences(Ue); dx = differences(X)
        h2 = -(W * derivative2(z, s, s)); H2 = X * h2; t = differences(H2)
        Cm = W * derivative2(z, s, dx); Dm = W * derivative2(z, dx, dx)
        u = spectral(Ue); x = spectral(X); beta = spectral(H2)
        c = spectral(Cm); d = spectral(Dm); kn = spectral(W)
        L2 = 2 * arb(3).sqrt() * kn; L3 = 2 * arb(6).sqrt() * kn
        b0, b1, b2, t3, t4, L5, a2, L3a = predictor_residual(W, z, s, t, dx, ra)
        base = u * ra + beta * ra * ra / 2
        qbase = c * ra + a2 * ra * ra / 2 + L3a * ra ** 3 / 6
        def qfun(tau): return qbase + (d + L3 * x * x * base) * tau + L3 * x ** 3 * tau ** 2 / 2
        tau = arb(upper(b0) * 1.1); valid = False
        for _ in range(100):
            q = qfun(tau)
            if not q < 1: break
            if b0 + q * tau < tau: valid = True; break
            tau = arb(upper(b0 / (1 - q)) * 1.001)
        if not valid: return dict(ok=False, status='whole-ball contraction not certified', seconds=time.perf_counter() - started)
        oh = orientation(H, Ue, H2, X, ra, tau, 'h'); ov = orientation(H, Ue, H2, X, ra, tau, 'v')
        if not (oh['ok'] and ov['ok'] and oh['sign'] == o and ov['sign'] == -o):
            return dict(ok=False, status='orientation over the ball not certified', seconds=time.perf_counter() - started)
        ndirect = beta * ra * ra / 2 + x * tau
        # the centre phases on the certificate's branch: lift near the stored centre's dephased form
        G = np.zeros((36, 36))
        for a in range(6):
            for b in range(6):
                G[6 * a + b, 6 * a + b] += 1; G[6 * a + b, 6 * a] -= 1; G[6 * a + b, b] -= 1; G[6 * a + b, 0] += 1
        ref = G @ np.asarray(P, float)
        pg = arb_mat([[arb(float(ref[6 * i + j])) + (H[i, j] * acb(0, -arb(float(ref[6 * i + j]))).exp()).arg()]
                      for i in range(6) for j in range(6)])
        pexact = horizontal_vector(pg)
        ep = frob(pexact - arb_mat([[arb(float(v))] for v in P]))
        eu = spectral(Ue - mat(np.asarray(U, float)))
        nrec = ndirect + ep + ra * eu
        return dict(ok=True, status='CERTIFIED', n_record=upper(nrec), n_direct=upper(ndirect), P_gap=upper(ep), U_gap=upper(eu),
                    tau=upper(tau), q=upper(q), strict_margin_R=lower(4 * arb(min(oh['margin_lower'], ov['margin_lower'])) ** 2),
                    seconds=time.perf_counter() - started)
    except ArithmeticError as e:
        return dict(ok=False, status='arith: %s' % e, seconds=time.perf_counter() - started)
    finally:
        ctx.prec = old
