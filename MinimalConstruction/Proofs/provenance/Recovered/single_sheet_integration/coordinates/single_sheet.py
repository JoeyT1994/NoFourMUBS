"""Positive-sheet covering atlas, independently implemented from the supplied note.

Numerical mpmath evaluation, not an exact sign or interval certificate. The
compact_fourier module remains available for both sheets at a prescribed corner.
Side records and ray-equation coefficients belong to adapted_matrix. Apply
left_transport to move compatible rays into the returned original-corner frame.
"""
from dataclasses import dataclass
from itertools import combinations
import mpmath as mp
from compact_fourier import DomainError, Side, adjugate3, fourier3


@dataclass
class Construction:
    matrix: object
    adapted_matrix: object
    corner: object
    adapted_corner: object
    adapted_seed: tuple
    horizontal: Side
    vertical: Side
    row_order: tuple
    column_order: tuple
    left_transport: object
    right_transport: object
    g: object
    eta: object
    chi: object
    R: object
    zeta: object
    boundary_roundoff_used: bool


def scalar_data(G):
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    p=X+Y+Z; J=2*mp.re(s*r*mp.conj(t))
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J
    eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    return g,eta,chi,4*g*g*eta-chi*chi


def dephase(M):
    """For phase matrices, using multiplication by conjugates only."""
    return mp.matrix([[M[0,0]*M[i,j]*mp.conj(M[i,0])*mp.conj(M[0,j])
                       for j in range(M.cols)] for i in range(M.rows)])


def opposite_corner(H):
    """Exact mathematical involution on dephased phase Hadamards, numerically evaluated."""
    order=(3,4,5,0,1,2)
    return dephase(mp.matrix([[H[i,j] for j in order] for i in order]))


def seed_of(H):
    return tuple(H[i,j] for i,j in [(1,1),(1,2),(2,1),(2,2)])


def adapt_corner(E):
    Gh=6*mp.eye(3)-E*E.H
    Gv=6*mp.eye(3)-E.T*E.conjugate()
    def order(G):
        i,j=min(combinations(range(3),2),key=lambda pair:(abs(G[pair[0],pair[1]]),pair))
        return (i,j,3-i-j)
    rows,cols=order(Gh),order(Gv)
    return dephase(mp.matrix([[E[i,j] for j in cols] for i in rows])),rows,cols


def side(G,z,cube_branch=0):
    """Conjugate-Fourier side; all displayed variable divisors are positive reals."""
    g=scalar_data(G)[0]
    if g<=0:
        raise DomainError('Positive Gram determinant required')
    s,t,r=G[1,0],G[2,0],G[2,1]
    P=(r*s*s+mp.conj(r)*t*t+(3-abs(r)**2)*s*t,
       t*mp.conj(s)**2+r*r*mp.conj(t)+(3-abs(t)**2)*r*mp.conj(s),
       s*mp.conj(t)**2+mp.conj(r)**2*mp.conj(s)+(3-abs(s)**2)*mp.conj(r)*mp.conj(t))
    cof=(9-abs(r)**2,9-abs(t)**2,9-abs(s)**2)
    if any(p==0 for p in P):
        raise DomainError('A retained side factor P_i vanishes')
    lam=tuple(P[i]*(g+cof[i]*mp.conj(z))/abs(P[i])**2 for i in range(3))
    u=lam[0]*mp.conj(lam[1])
    mu,nu=s/3,t/3
    n=1-abs(mu)**2
    if n<=0:
        raise DomainError('Positive Fourier variance required')
    k=r/3-nu*mp.conj(mu)
    alpha=mu*mu-u*mp.conj(mu)
    gamma=2*mu*nu-z*lam[0]/3
    delta=mp.sqrt((g/27)*lam[0]*mp.conj(lam[1])*mp.conj(lam[2]))
    power=(27/g)*(n*gamma-2*alpha*k)*mp.conj(delta)
    # Leave twelve decimal digits for accumulated/cancellation error. This is
    # a numerical sanity check, not a proof that the imaginary part is zero.
    if abs(mp.im(power))>mp.power(10,12-mp.mp.dps)*max(1,abs(power)):
        raise DomainError('Nonreal Fourier power difference: increase precision or check domain')
    d_F=mp.re(power)
    if d_F<0:delta,d_F=-delta,-d_F
    rho=(n+d_F)/2
    q=alpha/rho
    cplus=(k-delta*mp.conj(q))/n
    cminus=(k*q+delta)/n
    cube=mu**3+u*(rho-abs(mu)**2)
    tau=mp.root(cube,3)*mp.exp(2j*mp.pi*cube_branch/3)
    L=mp.matrix([[1,0,0],[mu,1,q],[nu,cplus,cminus]])
    X=L*mp.diag([1,tau,mp.conj(tau)])*fourier3()
    return Side(X,L,G,lam,mu,nu,n,k,alpha,gamma,delta,d_F,rho,cube,tau)


def _from_phases(phases,allow_boundary):
    if len(phases)!=4:raise ValueError('Four phase seeds required')
    seeds=[mp.mpc(v) for v in phases]
    if any(abs(abs(v)-1)>mp.power(10,12-mp.mp.dps) for v in seeds):
        raise ValueError('Seeds must be phases to working precision; use from_angles')
    # Opposite-corner seeds inherit arithmetic errors from a reconstructed H.
    # Project only the accepted, roundoff-sized modulus errors back to phases.
    seeds=[v/abs(v) for v in seeds]
    a,b,c,d=seeds
    E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
    Eh,rows,cols=adapt_corner(E)
    Gh=6*mp.eye(3)-Eh*Eh.H; Gv=6*mp.eye(3)-Eh.T*Eh.conjugate()
    g,eta,chi,R=scalar_data(Gh)
    roundoff=False
    if g<=0:raise DomainError('Positive complementary Gram determinant required')
    if allow_boundary and abs(R)<=1000*mp.eps*max(1,abs(4*g*g*eta),abs(chi*chi)):
        R=mp.mpf(0); roundoff=True
    if R<0 or (R==0 and not allow_boundary):
        raise DomainError('Strict domain requires R>0; guarded boundary requires explicit boundary mode')
    zeta=(chi+1j*mp.sqrt(R))/(2*g)
    h,v=side(Gh,zeta),side(Gv,mp.conj(zeta))
    B,C=h.matrix,v.matrix.T
    D=-C*Eh.H*adjugate3(Gh)*B/g
    Ha=mp.matrix(6)
    for i in range(3):
        for j in range(3):
            Ha[i,j],Ha[i,j+3],Ha[i+3,j],Ha[i+3,j+3]=Eh[i,j],B[i,j],C[i,j],D[i,j]
    ri=tuple(rows.index(i) for i in range(3))+(3,4,5)
    ci=tuple(cols.index(i) for i in range(3))+(3,4,5)
    Pr=mp.matrix([[int(j==ri[i]) for j in range(6)] for i in range(6)])
    Pc=mp.matrix([[int(i==ci[j]) for j in range(6)] for i in range(6)])
    M=Pr*Ha*Pc
    left=mp.diag([mp.conj(M[i,0]) for i in range(6)])*Pr
    right=Pc*mp.diag([M[0,0]*mp.conj(M[0,j]) for j in range(6)])
    H=left*Ha*right
    return Construction(H,Ha,E,Eh,seed_of(Eh),h,v,rows,cols,left,right,g,eta,chi,R,zeta,roundoff)


def from_phases(phases,dps=80,allow_boundary=False):
    """Positive-sheet representative with original corner restored.

    Boundary mode snaps roundoff-sized R to zero and records this; no exact
    membership certificate is implied. Accepted roundoff-sized seed modulus
    errors are normalized. Side data belong to adapted_matrix.
    """
    with mp.workdps(dps):return _from_phases(phases,allow_boundary)


def from_angles(angles,dps=80,allow_boundary=False):
    """Four radians, preferably as decimal strings. No free sheet argument."""
    with mp.workdps(dps):
        return _from_phases([mp.exp(1j*mp.mpf(v)) for v in angles],allow_boundary)


def psi(z,sd,conjugate=False):
    """Cube-free equal-intensity equation for the NEW conjugate-diagonal L.

    Do not use compact_fourier.phi with these Side records.
    """
    T=mp.conj(sd.cube) if conjugate else sd.cube
    return sd.rho*(z[0]*mp.conj(z[1])+z[2]*mp.conj(z[0]))+T*z[1]*mp.conj(z[2])
