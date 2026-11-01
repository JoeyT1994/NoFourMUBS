"""Numerical basis fits propose improved expansion points, with no proof role."""
import numpy as np
from scipy.optimize import least_squares
from flint import arb
import moving_symmetry as MS
import native_columns as C


def fit(model,prepared,bounds,cover,clique,initial_phases=None):
    q=np.r_[MS.numeric(model['Q0'])[:,0],np.array([[float(prepared[clique[c]]['v0'][r,0].mid()) for c in range(6)] for r in range(6)]).ravel()]
    if initial_phases is not None:
        current=q[36:].reshape(6,6).T
        delta=(initial_phases-current+np.pi)%(2*np.pi)-np.pi
        delta-=delta.mean(axis=1,keepdims=True)
        q[36:]+=(delta.T).ravel()
    b=np.linalg.qr(np.eye(6)[:,:5]-np.eye(6)[:,5,None])[0]
    lift=np.zeros((72,34));lift[:36,:4]=MS.numeric(model['U'])
    for c in range(6):lift[36+c:72:6,4+5*c:9+5*c]=b
    def residual(t):
        qq=q+lift@t;h=np.exp(1j*qq[:36].reshape(6,6));k=np.exp(1j*qq[36:].reshape(6,6))
        hs=h.conj().T@h;ks=k.conj().T@k;mix=(np.abs(h.conj().T@k)**2-6)/6
        return np.r_[[hs[a,z].real for a,z in C.PAIRS],[hs[a,z].imag for a,z in C.PAIRS],
                     [ks[a,z].real for a,z in C.PAIRS],[ks[a,z].imag for a,z in C.PAIRS],mix.ravel()]
    fitted=least_squares(residual,np.zeros(34),max_nfev=150,ftol=1e-12,xtol=1e-12,gtol=1e-12)
    fixed=least_squares(lambda t:residual(np.r_[np.zeros(4),t]),fitted.x[4:],max_nfev=150,ftol=1e-12,xtol=1e-12,gtol=1e-12)
    target=q+lift@np.r_[np.zeros(4),fixed.x]
    if not np.isfinite(target).all():raise ArithmeticError('nonfinite basis proposal')
    pp=dict(prepared);bb=dict(bounds);cc=dict(cover);cc['bin_deltas']=list(cover['bin_deltas']);cc['initial_radii']=list(cover['initial_radii'])
    for col,c in enumerate(clique):
        new=C.build(model,target[36+col:72:6]);shift=prepared[c]['v0']-new['v0']
        ds=[]
        for d in cover['bin_deltas'][c]:
            lifted=[d[j]+shift[j,0] for j in range(6)]
            lifted=[v-2*round(float(v/(2*arb.pi())))*arb.pi() for v in lifted]
            mean=sum(lifted,arb(0))/6;ds.append([v-mean for v in lifted])
        if not ds:raise ArithmeticError('pattern has no surviving bins')
        radius=arb(max(C.Z.upper(C.norm(d)+cover['bin_radius']) for d in ds))
        cc['bin_deltas'][c]=ds;cc['initial_radii'][c]=radius
        pp[c]=new
        bb[c]=C.contract(new,radius,initial_epsilon=C.localize_bins(new,ds,cover['bin_radius']))
    return pp,bb,cc,dict(residual_norm=float(np.linalg.norm(fixed.fun)),evaluations=int(fitted.nfev+fixed.nfev))
