"""Conditional all-column bounds in the original four native coordinates.

These are zero enclosures, not existence or completeness claims. A complete
torus cover must supply each initial radius. All bounds use Arb.
"""
import itertools
from pathlib import Path
import sys
import numpy as np
from flint import arb, acb, arb_mat

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
sys.path[:0] = [str(ROOT/'proof/seed_atlas/cert'), str(HERE.parent/'seed_method')]
import wholeball as Z

PAIRS = list(itertools.combinations(range(6),2))


def norm(values):
    return sum((abs(x).upper()**2 for x in values),arb(0)).sqrt()


def rownorm(a,i):
    return norm([a[i,j] for j in range(a.ncols())])


def project6():
    return arb_mat([[arb(int(i==j))-arb(1)/6 for j in range(6)] for i in range(6)])


def build(model, angles):
    """Arbitrary finite phase proposals; all residuals and inverse defects retained."""
    p6 = project6()
    v0 = p6*arb_mat([[arb(float(v))] for v in angles])
    q0,u,h2,x = (model[k] for k in ('Q0','U','H2','X'))
    f = arb_mat(6,1);jv = arb_mat(6,6);jh = arb_mat(6,36)
    terms=[]
    for c in range(6):
        for a,b in PAIRS:
            z=acb(0,v0[a,0]-v0[b,0]-q0[6*a+c,0]+q0[6*b+c,0]).exp()/3
            f[c,0]+=z.real
            jv[c,a]-=z.imag;jv[c,b]+=z.imag
            jh[c,6*a+c]+=z.imag;jh[c,6*b+c]-=z.imag
            terms.append((c,a,b,z))
    jf=np.array([[float(jv[i,j].mid()) for j in range(6)] for i in range(6)])
    pre=p6*Z.mat(np.linalg.pinv(jf))*p6
    t=-(pre*jh*u).mid();t=p6*t
    defect=p6-pre*jv*p6
    linear=pre*(jh*u+jv*t)
    constant=pre*f;hx=pre*jh*x;hh=pre*jh*h2
    qww=[arb_mat(4,4) for _ in range(6)]
    qwe=[arb_mat(4,6) for _ in range(6)]
    qee=[arb_mat(6,6) for _ in range(6)]
    pww=[arb_mat(4,4) for _ in range(6)]
    pwe=[arb_mat(4,6) for _ in range(6)]
    for c,a,b,z in terms:
        dw=[t[a,j]-t[b,j]-u[6*a+c,j]+u[6*b+c,j] for j in range(4)]
        dh=[-u[6*a+c,j]+u[6*b+c,j] for j in range(4)]
        for out in range(6):
            coeff=-pre[out,c]*z.real
            for j in range(4):
                for k in range(4):
                    qww[out][j,k]+=coeff*dw[j]*dw[k]
                    pww[out][j,k]+=coeff*dh[j]*dh[k]
                pwe[out][j,a]+=coeff*dh[j];pwe[out][j,b]-=coeff*dh[j]
                qwe[out][j,a]+=coeff*dw[j];qwe[out][j,b]-=coeff*dw[j]
            qee[out][a,a]+=coeff;qee[out][b,b]+=coeff
            qee[out][a,b]-=coeff;qee[out][b,a]-=coeff
    ww=[];we=[];ee=[];ww_plain=[];we_plain=[]
    for o in range(6):
        hho=arb_mat([[hh[o,4*j+k] for k in range(4)] for j in range(4)])
        ww.append(Z.spectral(qww[o]+hho));ww_plain.append(Z.spectral(pww[o]+hho))
        we_plain.append(Z.spectral(pwe[o]*p6))
        we.append(Z.spectral(qwe[o]*p6));ee.append(Z.spectral(p6*qee[o]*p6))
    ncol=[];dcol=[];ucol=[]
    for c in range(6):
        hc=p6*arb_mat([[h2[6*r+c,j] for j in range(16)] for r in range(6)])
        xc=p6*arb_mat([[x[6*r+c,j] for j in range(x.ncols())] for r in range(6)])
        uc=p6*arb_mat([[u[6*r+c,j] for j in range(4)] for r in range(6)])
        ncol.append(Z.spectral(hc)*model['r']**2/2+Z.spectral(xc)*model['tau'])
        dcol.append(Z.spectral(t-uc));ucol.append(Z.spectral(uc))
    return dict(model=model,v0=v0,T=t,pre=pre,defect=defect,linear=linear,
                constant=constant,HX=hx,WW=ww,WE=we,EE=ee,ncol=ncol,dcol=dcol,
                QEE=qee,QWE_plain=pwe,plain_linear=-pre*jh*u-t,Tnorm=Z.spectral(t),WW_plain=ww_plain,WE_plain=we_plain,ucol=ucol)


def improve(p,epsilon,phase_radius):
    """Any zero with ||V-v0-Tw|| <= epsilon satisfies the returned bound."""
    r,tau=p['model']['r'],p['model']['tau']
    # Normal H phase errors use the global scalar Hessian bound 2; the
    # cubic mixed residual bound is sqrt(2)/3 times the column-difference
    # phase norm cubed (normalization (|H_j^*v|^2-6)/6).
    tails=[]
    for d,n,u in zip(p['dcol'],p['ncol'],p['ucol']):
        a=min((d*r+epsilon).upper(),(u*r+phase_radius).upper())
        tails.append(2*a*n+n*n+arb(2).sqrt()/3*(a+n)**3)
    rows=[]
    for o in range(6):
        b=abs(p['constant'][o,0])+rownorm(p['linear'],o)*r
        b+=rownorm(p['defect'],o)*epsilon+rownorm(p['HX'],o)*tau
        affine=p['WW'][o]*r*r/2+p['WE'][o]*r*epsilon+p['EE'][o]*epsilon*epsilon/2
        plain=p['WW_plain'][o]*r*r/2+p['WE_plain'][o]*r*phase_radius+p['EE'][o]*phase_radius*phase_radius/2
        b+=min(affine.upper(),plain.upper())
        b+=sum((abs(p['pre'][o,c])*tails[c] for c in range(6)),arb(0))
        rows.append(b)
    return norm(rows)


def contract(p,initial_radius,iterations=40,initial_epsilon=None):
    """The initial radius is about v0 in mean-zero phase norm, in radians."""
    r=p['model']['r']
    epsilon=(arb(initial_radius)+p['Tnorm']*r).upper()
    if initial_epsilon is not None:epsilon=min(epsilon,initial_epsilon.upper())
    phase_radius=min(arb(initial_radius).upper(),(p['Tnorm']*r+epsilon).upper())
    trace=[str(epsilon)]
    for _ in range(iterations):
        bound=improve(p,epsilon,phase_radius)
        proposed=arb(Z.upper(bound))
        if not proposed<epsilon:break
        epsilon=proposed;trace.append(str(epsilon))
        phase_radius=min(phase_radius.upper(),(p['Tnorm']*r+epsilon).upper())
    return dict(epsilon=epsilon,phase_radius=phase_radius,
                initial_radius=arb(initial_radius),trace=trace)


def orthogonal_possible(a,ea,b,eb):
    r=a['model']['r'];s=acb(0);grad=[acb(0)]*4
    dt=b['T']-a['T']
    for j in range(6):
        z=acb(0,b['v0'][j,0]-a['v0'][j,0]).exp();s+=z
        for k in range(4):grad[k]+=acb(0,dt[j,k])*z
    first=Z.spectral(arb_mat([[v.real for v in grad],[v.imag for v in grad]]))*r
    e=ea+eb;delta=Z.spectral(dt)*r+e
    return not abs(s)>first+arb(6).sqrt()*e+delta*delta/2


def localize_bins(p,deltas,rho):
    """Preconditioned Taylor enclosure on each fine bin, before pooling it.

    The mean-zero bin displacement is d+v, ||v||<=rho. Signed constants
    and first derivatives in d are retained. Every covered zero survives.
    """
    r=p['model']['r'];tau=p['model']['tau'];maximum=arb(0)
    for delta in deltas:
        d=arb_mat([[x] for x in delta]);phase=norm(delta)+rho
        tails=[]
        for u,n in zip(p['ucol'],p['ncol']):
            a=u*r+phase;tails.append(2*a*n+n*n+arb(2).sqrt()/3*(a+n)**3)
        rows=[]
        for o in range(6):
            qd=p['QEE'][o]*d
            centre=-p['constant'][o,0]+sum((p['defect'][o,j]*delta[j] for j in range(6)),arb(0))
            centre-=sum((delta[j]*qd[j,0] for j in range(6)),arb(0))/2
            wd=p['QWE_plain'][o]*d
            first=norm([p['plain_linear'][o,j]-wd[j,0] for j in range(4)])*r
            first+=norm([p['defect'][o,j]-qd[j,0] for j in range(6)])*rho
            rest=p['WW_plain'][o]*r*r/2+p['WE_plain'][o]*r*rho+p['EE'][o]*rho*rho/2
            rest+=rownorm(p['HX'],o)*tau+sum((abs(p['pre'][o,c])*tails[c] for c in range(6)),arb(0))
            rows.append(abs(centre)+first+rest)
        maximum=arb(max(Z.upper(maximum),Z.upper(norm(rows))))
    return maximum
