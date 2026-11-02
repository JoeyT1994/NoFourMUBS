"""Arb full-residual point and separating-functional primitives.

All floating computations propose spectral bounds only. Every norm bound is
verified by Arb positive LDL. Inputs to point() and separator() are arb matrices.
The point (q,y) need not solve any equation.
"""
from flint import arb, acb, arb_mat
import numpy as np

PAIRS = [(a,b) for a in range(6) for b in range(a+1,6)]

def up(x): return arb(x.upper())
def norm(xs): return up(sum((x*x for x in xs),arb(0)).sqrt())
def frob(a): return norm([a[i,j] for i in range(a.nrows()) for j in range(a.ncols())])
def sub(a,rr,cc): return arb_mat([[a[i,j] for j in cc] for i in rr])
def mid(a): return np.array([[float(a[i,j].mid()) for j in range(a.ncols())] for i in range(a.nrows())])
def dyad(a): return arb_mat([[arb(float(x)) for x in row] for row in np.asarray(a)])

def positive_ldl(m):
    n=m.nrows(); L=arb_mat(n,n); d=[]
    for j in range(n):
        dj=m[j,j]-sum((L[j,k]*L[j,k]*d[k] for k in range(j)),arb(0))
        if not dj>0: return False
        d.append(dj); L[j,j]=1
        for i in range(j+1,n):
            L[i,j]=(m[i,j]-sum((L[i,k]*L[j,k]*d[k] for k in range(j)),arb(0)))/dj
    return True

def spectral(a):
    """Validated Euclidean operator norm, with Frobenius fallback."""
    if not a.nrows() or not a.ncols(): return arb(0)
    m=a*a.transpose() if a.nrows()<=a.ncols() else a.transpose()*a
    n=m.nrows(); proposal=max(1e-15,float(np.linalg.norm(mid(a),2)))
    for factor in (1.00000001,1.000001,1.0001,1.01,1.2,2):
        h=arb(proposal*factor+1e-14); p=-m
        for i in range(n): p[i,i]+=h*h
        if positive_ldl(p): return h
    return frob(a)

def negative_eigen_bound(m):
    """Return b>=0 such that x^T m x >= -b ||x||^2, certified."""
    n=m.nrows(); v=max(0.,-float(np.linalg.eigvalsh(mid(m))[0]))
    for factor in (1.00000001,1.000001,1.0001,1.01,1.2,2):
        b=arb(v*factor+1e-14); p=arb_mat(m)
        for i in range(n): p[i,i]+=b
        if positive_ldl(p): return b
    return spectral(m)

def point(q,y):
    """F, F_H, F_K in the handoff's 66 by 36 convention."""
    h=[[acb(0,q[6*r+a,0]).exp() for a in range(6)] for r in range(6)]
    k=[[acb(0,y[6*r+b,0]).exp() for b in range(6)] for r in range(6)]
    f=arb_mat(66,1); jh=arb_mat(66,36); jk=arb_mat(66,36)
    for j,(a,b) in enumerate(PAIRS):
        z=sum((k[r][a].conjugate()*k[r][b] for r in range(6)),acb(0))
        f[j,0]=z.real;f[15+j,0]=z.imag
        for r in range(6):
            z=k[r][a].conjugate()*k[r][b]
            jk[j,6*r+a]=z.imag;jk[j,6*r+b]=-z.imag
            jk[15+j,6*r+a]=-z.real;jk[15+j,6*r+b]=z.real
    for a in range(6):
        for b in range(6):
            z=sum((h[r][a].conjugate()*k[r][b] for r in range(6)),acb(0))
            f[30+6*a+b,0]=(z.real*z.real+z.imag*z.imag)/6-1
            for r in range(6):
                t=(z.conjugate()*h[r][a].conjugate()*k[r][b]).imag/3
                jh[30+6*a+b,6*r+a]=t;jk[30+6*a+b,6*r+b]=-t
    return f,jh,jk

def separator(q,y,nu,U,V,Ts,Tw,r,S,h,eH,point_data=None):
    """Rigorous scalar lower bound for the full parameter tile.

    Domain: q'=q+Uu+e, y'=y+Vu+Ts*s+Tw*w,
    ||u||<=r, ||s||<=S, ||w||<=h, ||e||<=eH.
    nu is 1x66. Ts is 36x28, Tw is 36x2, U,V are 36x4.
    A positive returned 'lower' certifies F(q',y') != 0 throughout.

    Uses exact linear terms, signed quadratic blocks, ridge third-order
    remainder, and a separate H-tube error. No existence assumption.
    """
    f,jh,jk=point_data or point(q,y)
    lu=nu*(jh*U+jk*V);ls=nu*jk*Ts;lw=nu*jk*Tw
    first=[norm([a[0,j] for j in range(a.ncols())]) for a in (ls,lw,lu)]
    radii=[S,h,r];dims=[Ts.ncols(),Tw.ncols(),U.ncols()];off=[0,dims[0],dims[0]+dims[1]]
    rows=[];second=[];amplitude=[]
    for j,(a,b) in enumerate(PAIRS):
        for t in range(6):
            phase=y[6*t+b,0]-y[6*t+a,0]
            ca,sa=nu[0,j],nu[0,15+j]
            rows.append([M[6*t+b,k]-M[6*t+a,k] for M in (Ts,Tw,V) for k in range(M.ncols())])
            second.append(-ca*phase.cos()-sa*phase.sin())
            amplitude.append(up((ca*ca+sa*sa).sqrt()))
    for a in range(6):
        for b in range(6):
            ca=nu[0,30+6*a+b]/3
            for s,t in PAIRS:
                phase=-q[6*s+a,0]+y[6*s+b,0]+q[6*t+a,0]-y[6*t+b,0]
                row=[M[6*s+b,k]-M[6*t+b,k] for M in (Ts,Tw) for k in range(M.ncols())]
                row += [-U[6*s+a,k]+V[6*s+b,k]+U[6*t+a,k]-V[6*t+b,k] for k in range(U.ncols())]
                rows.append(row);second.append(-ca*phase.cos());amplitude.append(up(abs(ca)))
    A=arb_mat(rows);weighted=arb_mat([[second[i]*a for a in row] for i,row in enumerate(rows)])
    Hess=A.transpose()*weighted
    blocks=[[sub(Hess,range(off[i],off[i]+dims[i]),range(off[j],off[j]+dims[j])) for j in range(3)] for i in range(3)]
    qdiag=[negative_eigen_bound(blocks[i][i]) for i in range(3)]
    qcross={(i,j):spectral(blocks[i][j]) for i in range(3) for j in range(i+1,3)}
    quadratic=sum((qdiag[i]*radii[i]*radii[i]/2 for i in range(3)),arb(0))
    quadratic+=sum((v*radii[i]*radii[j] for (i,j),v in qcross.items()),arb(0))
    third=arb(0)
    for i,row in enumerate(rows):
        width=sum((norm(row[off[j]:off[j]+dims[j]])*radii[j] for j in range(3)),arb(0))
        third+=amplitude[i]*width**3/6
    nun=frob(nu);dp=spectral(U)*r;dk=spectral(V)*r+spectral(Ts)*S+spectral(Tw)*h
    tube=eH*frob(nu*jh)+nun*(2*arb(6).sqrt()*eH*dp+2*eH*dk+arb(6).sqrt()*eH**2)
    value=(nu*f)[0,0];linear=sum((a*b for a,b in zip(first,radii)),arb(0))
    lower=value-linear-quadratic-third-tube
    return dict(lower=lower,value=value,linear=up(linear),linear_norms=first,quadratic=up(quadratic),quadratic_diagonal=qdiag,quadratic_cross=qcross,third=up(third),tube=up(tube))
