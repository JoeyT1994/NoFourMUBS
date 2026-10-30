"""Validated correlated predictor capture for one MUB column.

Only a capture conclusion is made: every full unbiasedness zero in the supplied
coarse Euclidean cap is in the returned affine tube.  No global root-completeness
or existence claim is made here.  All accept/reject inequalities use Arb.

Input coordinates: phases v = v0 + E x, E the orthonormal 6 x 5 Helmert frame.
The cap is ||x - center||_2 <= coarse_radius.  The H model is the supplied
Q = Q0 + U w + H2(w kron w)/2 + X xi, ||w|| <= r, ||xi|| <= tau.
"""
import math
import numpy as np
from flint import arb, arb_mat, ctx


def A(x):
    if isinstance(x, str) and '0x' in x.lower():
        result=arb(float.fromhex(x))
    else:
        result=arb(x)
    if not result.is_finite():
        raise ValueError('nonfinite interval')
    return result


def vecnorm(v):
    return sum((abs(x).upper()**2 for x in v), arb(0)).sqrt().upper()


def eye(n):
    return arb_mat([[int(i == j) for j in range(n)] for i in range(n)])


def numeric(M):
    return np.array([[float(M[i,j].mid()) for j in range(M.ncols())]
                     for i in range(M.nrows())])


def pd(M):
    n = M.nrows()
    L = [[arb(0) for _ in range(n)] for _ in range(n)]
    D = []
    for i in range(n):
        d = M[i,i] - sum((L[i][k]**2 * D[k] for k in range(i)), arb(0))
        if not d > 0:
            return False
        D.append(d)
        L[i][i] = arb(1)
        for j in range(i+1,n):
            L[j][i] = (M[j,i] - sum((L[j][k]*L[i][k]*D[k] for k in range(i)), arb(0))) / d
    return True


def spectral_upper(M):
    """Verified upper eigenvalue bound of a symmetric Arb matrix."""
    candidate = float(np.linalg.eigvalsh(numeric(M))[-1])
    for digits in (10,8,6,4,2,0):
        scale = 10**digits
        b = arb(math.ceil(candidate*scale)+2)/scale
        if pd(b*eye(M.nrows())-M):
            return b.upper()
    # Gershgorin is always valid, including broad interval inputs.
    return max((M[i,i].upper() + sum((abs(M[i,j]).upper() for j in range(M.ncols()) if j != i), arb(0))).upper()
               for i in range(M.nrows()))


def opnorm(M):
    square = M.transpose()*M if M.ncols() <= M.nrows() else M*M.transpose()
    return min(spectral_upper(square).sqrt().upper(),
               vecnorm([M[i,j] for i in range(M.nrows()) for j in range(M.ncols())])).upper()


def helmert():
    E = arb_mat(6,5)
    for j in range(5):
        d = arb((j+1)*(j+2)).sqrt()
        for a in range(j+1): E[a,j] = 1/d
        E[j+1,j] = -(j+1)/d
    return E


def outer(v,w):
    return arb_mat([[a*b for b in w] for a in v])


def symmetric_majorant(u,v):
    un,vn = vecnorm(u),vecnorm(v)
    ratio = float(vn.mid())/float(un.mid()) if float(un.mid()) > 1e-30 else 1.
    scale = arb(ratio if math.isfinite(ratio) and ratio > 0 else 1.)
    S = (outer(u,v)+outer(v,u))/2
    D = (scale*outer(u,u)+outer(v,v)/scale)/2
    return S,D


def matrix_sum_squares_norm(Ms):
    return spectral_upper(sum((M.transpose()*M for M in Ms), arb_mat(5,5))).sqrt().upper()


def build(model, v0, center, P=None, S=None, precision=160):
    """Build validated constants; optional P,S are untrusted numerical choices."""
    if not isinstance(precision,int) or precision < 64:
        raise ValueError('precision must be an integer at least 64')
    if len(v0)!=6 or len(center)!=5:
        raise ValueError('expected six phase centers and five Helmert coordinates')
    if len(model['Q0'])!=36:
        raise ValueError('Q0 must have 36 entries')
    for field,width in [('U',4),('H2',16)]:
        if len(model[field])!=36 or any(len(row)!=width for row in model[field]):
            raise ValueError('bad dimensions for '+field)
    if len(model['X'])!=36 or not model['X'][0] or any(len(row)!=len(model['X'][0]) for row in model['X']):
        raise ValueError('X must be a nonempty rectangular matrix with 36 rows')
    ctx.prec = precision
    E = helmert()
    v0 = [A(v) for v in v0]
    x0 = [A(v) for v in center]
    q0 = [A(v) for v in model['Q0']]
    U = [[A(v) for v in row] for row in model['U']]
    H2 = [[A(v) for v in row] for row in model['H2']]
    X = [[A(v) for v in row] for row in model['X']]
    r, tau = A(model['r']), A(model['tau'])
    if not r >= 0 or not tau >= 0:
        raise ValueError('nonnegative r and tau required')
    r,tau=r.upper(),tau.upper()
    center_phases = [v0[a] + sum((E[a,i]*x0[i] for i in range(5)), arb(0)) for a in range(6)]
    raw = []
    f = arb_mat(6,1)
    J = arb_mat(6,5)
    W = arb_mat(6,4)
    for a in range(6):
        for b in range(a+1,6):
            ell = [E[a,i]-E[b,i] for i in range(5)]
            for j in range(6):
                ai, bi = 6*a+j, 6*b+j
                phi = center_phases[a]-center_phases[b]-q0[ai]+q0[bi]
                co, si = phi.cos()/3, phi.sin()/3
                g = [U[bi][k]-U[ai][k] for k in range(4)]
                h2 = [H2[bi][k]-H2[ai][k] for k in range(16)]
                xg = [X[bi][k]-X[ai][k] for k in range(len(X[ai]))]
                error = (r*r/2*vecnorm(h2) + tau*vecnorm(xg)).upper()
                f[j,0] += co
                for i in range(5): J[j,i] -= si*ell[i]
                for k in range(4): W[j,k] -= si*g[k]
                raw.append((j, co, si, ell, g, error,h2,xg))
    if P is None:
        P = np.linalg.pinv(numeric(J))
    P = arb_mat([[A(v) for v in row] for row in P])
    if P.nrows() != 5 or P.ncols() != 6:
        raise ValueError('P must be 5 x 6')
    if S is None:
        # Solve the projected linearized equation accurately at the midpoint.
        S = -np.linalg.solve(numeric(P*J), numeric(P*W))
    S = arb_mat([[A(v) for v in row] for row in S])
    if S.nrows() != 5 or S.ncols() != 4:
        raise ValueError('S must be 5 x 4')
    terms = []
    Az = [arb_mat(5,5) for _ in range(5)]
    Bw = [arb_mat(5,5) for _ in range(4)]
    Cz = [arb_mat(5,5) for _ in range(5)]
    Dw = [arb_mat(5,5) for _ in range(4)]
    Dw0 = [arb_mat(5,5) for _ in range(4)]
    Q = [arb_mat(4,4) for _ in range(5)]
    N = arb_mat(5,len(X[0]))
    D = arb_mat(5,4)
    for j,co,si,ell,g0,error,h2,xg in raw:
        y = [P[i,j] for i in range(5)]
        g = [g0[k] + sum((ell[i]*S[i,k] for i in range(5)), arb(0)) for k in range(4)]
        ys = [v*si for v in y]
        yc = [v*co for v in y]
        base = outer([-v for v in yc], ell)
        AA,DA = symmetric_majorant([-v for v in ys],ell)
        BB,DB = symmetric_majorant([-v for v in yc],ell)
        for d in range(5): Az[d] += ell[d]*base
        for d in range(4): Bw[d] += g[d]*base
        for d in range(5): Cz[d] += ell[d]*BB
        for d in range(4): Dw[d] += g[d]*BB
        for d in range(4): Dw0[d] += g0[d]*BB
        for i in range(5):
            for k in range(4): D[i,k] -= ys[i]*g[k]
            for k in range(len(xg)): N[i,k] -= ys[i]*xg[k]
            for a in range(4):
                for b in range(4):
                    Q[i][a,b] -= ys[i]*(h2[4*a+b]+h2[4*b+a])/2 + yc[i]*g[a]*g[b]
        terms.append(dict(y=y,ell=ell,g=g,g0=g0,error=error,AA=AA,DA=DA,DB=DB,co=co))
    value = P*f
    zero_error = opnorm(eye(5)-P*J)
    fbound = (vecnorm([value[i,0] for i in range(5)]) + r*opnorm(D)
              + r*r/2*vecnorm([opnorm(q) for q in Q]) + tau*opnorm(N))
    erows = [arb(0) for _ in range(5)]
    for t in terms:
        linear = r*vecnorm(t['g'])
        width = (linear+t['error']).upper()
        e = abs(t['co']).upper()*(linear*t['error']+t['error']**2/2) + width**3/18
        for i in range(5): erows[i] += abs(t['y'][i]).upper()*e
    fbound = (fbound + vecnorm(erows)).upper()
    return dict(E=E,P=P,S=S,x0=x0,v0=v0,r=r,tau=tau,terms=terms,
                shift=(r*opnorm(S)).upper(),forcing=fbound,zero_error=zero_error,
                Lz=matrix_sum_squares_norm(Az),Lw=matrix_sum_squares_norm(Bw),
                sym0=(P*J+(P*J).transpose())/2,
                Lz_sym=matrix_sum_squares_norm(Cz),Lw_sym=matrix_sum_squares_norm(Dw),
                Lw_fixed=matrix_sum_squares_norm(Dw0),
                precision=precision)


def jacobian_error(problem, zradius):
    """Upper bound ||I-P F_x|| throughout predictor tube ||z|| <= zradius."""
    Z = A(zradius).upper()
    tail = arb(0)
    for t in problem['terms']:
        ln = vecnorm(t['ell'])
        width = (ln*Z + problem['r']*vecnorm(t['g']) + t['error']).upper()
        tail += vecnorm(t['y'])*ln*(t['error']+width*width/2)/3
    return (problem['zero_error'] + Z*problem['Lz'] + problem['r']*problem['Lw'] + tail).upper()


def monotonicity(problem,zradius,predictor=True):
    Z=A(zradius).upper()
    tail=arb_mat(5,5)
    for t in problem['terms']:
        width=(vecnorm(t['ell'])*Z+problem['r']*vecnorm(t['g' if predictor else 'g0'])+t['error']).upper()
        if not width < arb.pi():
            return arb(-1)
        tail += (1-width.cos())*(t['DA']+t['AA'])/2 + (width-width.sin()+t['error'])*t['DB']
    lower = -spectral_upper(-(problem['sym0']-tail))
    return (lower-Z*problem['Lz_sym']-problem['r']*problem['Lw_sym' if predictor else 'Lw_fixed']).lower()


def capture(model, v0, center, coarse_radius, P=None, S=None, precision=160, max_steps=12):
    p = build(model,v0,center,P=P,S=S,precision=precision)
    return capture_prepared(p,coarse_radius,max_steps=max_steps)


def capture_prepared(p,coarse_radius,max_steps=12):
    """Reuse build() for several candidate cap radii without rebuilding constants."""
    R = A(coarse_radius).upper()
    if not R > 0:
        raise ValueError('positive coarse radius required')
    Z = (R+p['shift']).upper()
    steps=[]
    for iteration in range(max_steps):
        gap=monotonicity(p,Z)
        mode='predictor'
        domain_radius=Z
        if iteration == 0:
            fixed_radius=max(R,p['shift']).upper()
            fixed_gap=monotonicity(p,fixed_radius,predictor=False)
            if fixed_gap > gap:
                gap=fixed_gap; mode='fixed'; domain_radius=fixed_radius
        step=dict(source_radius=domain_radius.str(radius=True,more=True),coordinates=mode,
                  monotonicity=gap.str(radius=True,more=True))
        if not gap > 0:
            steps.append(step)
            break
        eps = (p['forcing']/gap).upper()
        step['capture_radius']=eps.str(radius=True,more=True)
        steps.append(step)
        if eps >= Z:
            break
        old=Z; Z=eps
        if old < 1.000001*Z:
            break
    certified = bool(steps and 'capture_radius' in steps[0] and A(steps[0]['capture_radius']) < R+p['shift'])
    serial=lambda M:[[M[i,j].str(radius=True,more=True) for j in range(M.ncols())] for i in range(M.nrows())]
    return dict(status='PROVED CAPTURE' if certified else 'NOT ESTABLISHED',
                conclusion='Every full unbiasedness zero in the source cap has ||x-center-Sw||_2 <= epsilon.',
                coarse_radius=R.str(radius=True,more=True),epsilon=Z.str(radius=True,more=True) if certified else None,
                predictor=serial(p['S']),preconditioner=serial(p['P']),
                center=[x.str(radius=True,more=True) for x in p['x0']],
                shift=p['shift'].str(radius=True,more=True),forcing=p['forcing'].str(radius=True,more=True),
                Lz=p['Lz'].str(radius=True,more=True),Lw=p['Lw'].str(radius=True,more=True),
                Lz_symmetric=p['Lz_sym'].str(radius=True,more=True),Lw_symmetric=p['Lw_sym'].str(radius=True,more=True),
                steps=steps,precision=p['precision'])
