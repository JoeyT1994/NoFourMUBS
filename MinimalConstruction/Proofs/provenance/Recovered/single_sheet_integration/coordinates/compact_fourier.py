"""Independent mpmath implementation of the supplied compact Fourier form.

This reconstructs matrices numerically, not with interval or exact certification.
The source note's upstream scripts were not supplied. Earlier constructions are
retained separately for comparison. Precision is in decimal digits.
"""
from dataclasses import dataclass
import mpmath as mp


class DomainError(ValueError):
    """The supplied phases fail the construction's numerical domain checks."""


@dataclass
class Side:
    matrix: object
    L: object
    gram: object
    lam: tuple
    mu: object
    nu: object
    n: object
    k: object
    alpha: object
    gamma: object
    delta: object
    d_F: object
    rho: object
    cube: object
    tau: object


@dataclass
class Construction:
    matrix: object
    horizontal: Side
    vertical: Side
    corner: object
    g: object
    eta: object
    chi: object
    R: object
    zeta: object
    sheet: int
    boundary_roundoff_used: bool


def fourier3():
    w = mp.exp(2j*mp.pi/3)
    return mp.matrix([[w**(j*k) for k in range(3)] for j in range(3)])


def adjugate3(G):
    return mp.matrix([
        [(-1)**(i+j)*mp.det(mp.matrix([
            [G[r,c] for c in range(3) if c != i]
            for r in range(3) if r != j])) for j in range(3)] for i in range(3)])


def side(G, z, cube_branch=0, determinant_sign=1):
    """At current mp precision, evaluate one side on the inherited domain.

    determinant_sign only changes the initial square-root candidate; the
    automatic amplitude orientation is always applied. At a tie either is valid.
    """
    if cube_branch not in (0,1,2) or determinant_sign not in (-1,1):
        raise ValueError('cube_branch must be 0, 1 or 2; determinant_sign must be +/-1')
    g = mp.re(mp.det(G))
    if g <= 0:
        raise DomainError('Side Gram determinant must be positive')
    adj = adjugate3(G)
    s,t,r = G[1,0],G[2,0],G[2,1]
    P = (r*s*s+mp.conj(r)*t*t+(3-abs(r)**2)*s*t,
         t*mp.conj(s)**2+r*r*mp.conj(t)+(3-abs(t)**2)*r*mp.conj(s),
         s*mp.conj(t)**2+mp.conj(r)**2*mp.conj(s)+(3-abs(s)**2)*mp.conj(r)*mp.conj(t))
    pivots = [g+z*adj[i,i] for i in range(3)]
    if any(v == 0 for v in pivots):
        raise DomainError('A retained scalar pivot vanishes')
    lam = tuple(P[i]/pivots[i] for i in range(3))
    if any(v == 0 for v in lam):
        raise DomainError('Zero side invariant: input outside domain or insufficient precision')
    u = lam[0]/lam[1]
    mu,nu = s/3,t/3
    n = 1-abs(mu)**2
    if n <= 0:
        raise DomainError('The centered row variance must be positive')
    k = r/3-nu*mp.conj(mu)
    alpha = mu*mu-u*mp.conj(mu)
    gamma = 2*mu*nu-z*lam[0]/3
    delta = determinant_sign*mp.sqrt(g*lam[0]/(27*lam[1]*lam[2]))
    amplitude = (n*gamma-2*alpha*k)/delta
    # Allow accumulated cancellation error in this numerical sanity check.
    # Exact reality is supplied by the mathematical identity, not this test.
    tol = mp.power(10,12-mp.mp.dps)
    if abs(mp.im(amplitude)) > tol*max(1,abs(amplitude)):
        raise DomainError('Fourier power difference is nonreal; increase precision or check domain')
    d_F = mp.re(amplitude)
    if d_F < 0:
        delta,d_F = -delta,-d_F
    rho = (n+d_F)/2
    cube = u*rho+mu*alpha
    if cube == 0:
        raise DomainError('Zero cube radicand: input outside domain or insufficient precision')
    tau = mp.root(cube,3)*mp.exp(2j*mp.pi*cube_branch/3)
    fminus = alpha/tau
    gplus = (k*tau-delta*mp.conj(fminus))/n
    gminus = (k*fminus+delta*mp.conj(tau))/n
    X = mp.matrix([[1,0,0],[mu,tau,fminus],[nu,gplus,gminus]])*fourier3()
    L = mp.matrix([[1,0,0],[mu,1,alpha],
                   [nu,(k*rho-delta*mp.conj(alpha))/(n*rho),
                    (k*alpha+delta*rho)/n]])
    return Side(X,L,G,lam,mu,nu,n,k,alpha,gamma,delta,d_F,rho,cube,tau)


def _from_phases(phases, sheet, allow_boundary, cube_branches):
    if len(phases) != 4 or sheet not in (-1,1):
        raise ValueError('Supply four phase seeds and sheet=+1 or -1')
    tol = 1000*mp.eps
    seeds = [mp.mpc(v) for v in phases]
    if any(abs(abs(v)-1)>tol for v in seeds):
        raise ValueError('Seeds must be phases to working precision; use from_angles for decimal input')
    a,b,c,d = seeds
    E = mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
    Gh = 6*mp.eye(3)-E*E.H
    Gv = 6*mp.eye(3)-E.T*E.conjugate()
    adj = adjugate3(Gh)
    g = mp.re(mp.det(Gh))
    sigma = mp.re(sum(adj[i,i] for i in range(3)))
    eta = g+36-2*sigma
    chi = mp.re(mp.fprod(adj[i,i]-8 for i in range(3))+2*(sigma-16)**2+(12-sigma)*g)
    R = 4*g*g*eta-chi*chi
    roundoff = False
    if g <= 0:
        raise DomainError('Complementary Gram determinant is not positive')
    if allow_boundary and abs(R) <= tol*max(1,abs(4*g*g*eta),abs(chi*chi)):
        R = mp.mpf(0)
        roundoff = True
    if R < 0 or (R == 0 and not allow_boundary):
        raise DomainError('Strict construction requires R>0; allow_boundary permits guarded R=0')
    zeta = (chi+sheet*1j*mp.sqrt(R))/(2*g)
    h = side(Gh,zeta,cube_branches[0])
    v = side(Gv,mp.conj(zeta),cube_branches[1])
    B,C = h.matrix,v.matrix.T
    D = -C*E.H*adj*B/g
    H = mp.matrix(6)
    for i in range(3):
        for j in range(3):
            H[i,j],H[i,j+3],H[i+3,j],H[i+3,j+3] = E[i,j],B[i,j],C[i,j],D[i,j]
    return Construction(H,h,v,E,g,eta,chi,R,zeta,sheet,roundoff)


def from_phases(phases, sheet=1, dps=80, allow_boundary=False, cube_branches=(0,0)):
    """Use exact phase inputs or mpmath phases formed at sufficient precision.

    Boundary mode numerically snaps R to zero within roundoff and records this
    in boundary_roundoff_used. It is not a certificate of exact boundary membership.
    """
    with mp.workdps(dps):
        return _from_phases(phases,sheet,allow_boundary,cube_branches)


def from_angles(angles, sheet=1, dps=80, allow_boundary=False, cube_branches=(0,0)):
    """Four angles in radians; strings preserve requested decimal precision."""
    with mp.workdps(dps):
        phases = [mp.exp(1j*mp.mpf(a)) for a in angles]
        return _from_phases(phases,sheet,allow_boundary,cube_branches)


def phi(z, side_data, conjugate=False):
    """Cube-free intensity correlation; evaluate at the intended mp precision."""
    T = mp.conj(side_data.cube) if conjugate else side_data.cube
    rho = side_data.rho
    return rho*z[0]*mp.conj(z[1])+(T/rho)*z[1]*mp.conj(z[2])+z[2]*mp.conj(z[0])
