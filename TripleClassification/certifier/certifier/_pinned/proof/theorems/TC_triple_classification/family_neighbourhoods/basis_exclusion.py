"""Necessary scalar support tests for the full correlated basis equations."""
import numpy as np
from flint import arb,arb_mat,acb
import native_columns as C
import moving_symmetry as MS


def exclude(model,prepared,bounds,clique):
    q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+
              [[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
    lift=arb_mat([[model['U'][i,k] for k in range(4)] for i in range(36)]+
                [[prepared[clique[c]]['T'][r,k] for k in range(4)] for r in range(6) for c in range(6)])
    angles=MS.LMAT*q;f=arb_mat(96,1);zs=[]
    for t,(re,im,den,ell) in enumerate(MS.TERMS):
        z=acb(0,angles[t,0]).exp()/den;zs.append(z);f[re,0]+=z.real
        if im is not None:f[im,0]+=z.imag
    j=MS.jacobian(q);jh=arb_mat([[j[i,k] for k in range(36)] for i in range(96)])
    jh2=jh*model['H2'];jhx=jh*model['X'];jl=j*lift
    eps=[bounds[c]['epsilon'] for c in clique];r=model['r'];tau=model['tau']
    ne=C.norm(eps);nh=C.Z.spectral(model['H2'])*r*r/2+C.Z.spectral(model['X'])*tau
    p6=C.project6();pk=arb_mat([[p6[a,b] if c==d else 0 for b in range(6) for d in range(6)] for a in range(6) for c in range(6)])
    jk=arb_mat([[j[i,36+k] for k in range(36)] for i in range(96)])*pk
    jkn=MS.numeric(jk);columns=[MS.numeric(jl)*float(r),MS.numeric(jhx)*float(tau)]
    for c in range(6):columns.append(jkn[:,c::6]*float(eps[c]))
    proposal=np.concatenate(columns,axis=1);gram=proposal@proposal.T;fn=MS.numeric(f)[:,0]
    lu=C.Z.spectral(lift)
    uc=[p6*arb_mat([[model['U'][6*a+c,k] for k in range(4)] for a in range(6)]) for c in range(6)]
    nc=[]
    for c in range(6):
        hc=p6*arb_mat([[model['H2'][6*a+c,k] for k in range(16)] for a in range(6)])
        xc=p6*arb_mat([[model['X'][6*a+c,k] for k in range(model['X'].ncols())] for a in range(6)])
        nc.append(C.Z.spectral(hc)*r*r/2+C.Z.spectral(xc)*tau)
    hd=[C.Z.spectral(uc[b]-uc[a])*r+nc[a]+nc[b] for a,b in C.PAIRS]
    kd=[C.Z.spectral(prepared[clique[b]]['T']-prepared[clique[a]]['T'])*r+eps[a]+eps[b] for a,b in C.PAIRS]
    md=[[C.Z.spectral(prepared[clique[b]]['T']-uc[a])*r+eps[b]+nc[a] for b in range(6)] for a in range(6)]
    for regularizer in (1e-6,1e-4,1e-2):
        yy=np.linalg.solve(gram+regularizer*np.eye(96),fn)
        scale=np.max(np.abs(yy))
        if not np.isfinite(yy).all() or not scale:continue
        y=C.Z.mat((yy/scale)[None,:]);constant=abs((y*f)[0,0])
        coefficients=[]
        for t,(re,im,den,ell) in enumerate(MS.TERMS):
            coefficients.append(-(y[0,re]*zs[t].real+(y[0,im]*zs[t].imag if im is not None else 0)))
        hessian=MS.LMAT.transpose()*arb_mat([[coefficients[t]*MS.LMAT[t,k] for k in range(72)] for t in range(len(MS.TERMS))])
        hh=y*jh2;ww=lift.transpose()*hessian*lift+arb_mat([[hh[0,4*a+b] for b in range(4)] for a in range(4)])
        hk=arb_mat([[hessian[i,36+k] for k in range(36)] for i in range(72)])*pk
        kk=pk*arb_mat([[hessian[36+i,36+k] for k in range(36)] for i in range(36)])*pk
        rhs=C.rownorm(y*jl,0)*r+C.rownorm(y*jhx,0)*tau
        yjk=y*jk
        rhs+=sum((C.norm([yjk[0,6*a+c] for a in range(6)])*eps[c] for c in range(6)),arb(0))
        rhs+=C.Z.spectral(ww)*r*r/2+C.Z.spectral(lift.transpose()*hk)*r*ne+C.Z.spectral(kk)*ne*ne/2
        rhs+=C.Z.spectral(hessian)*((lu*r+ne)*nh+nh*nh/2)
        for k in range(15):
            rhs+=(y[0,k]**2+y[0,15+k]**2).sqrt()*hd[k]**3/6
            rhs+=(y[0,30+k]**2+y[0,45+k]**2).sqrt()*kd[k]**3/6
        rhs+=sum((abs(y[0,60+6*a+b])*arb(2).sqrt()/3*md[a][b]**3 for a in range(6) for b in range(6)),arb(0))
        if constant>rhs:
            return dict(status='EXCLUDED',route='full-basis scalar support',lhs=str(constant),rhs=str(rhs),
                        direction_hex=[float(v/scale).hex() for v in yy])
    return None
