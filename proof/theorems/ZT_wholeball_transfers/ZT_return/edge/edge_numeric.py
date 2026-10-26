"""Analytic floating-point edge chart jets; numerical exploration only."""
import sys, json, gzip, math
from pathlib import Path
import numpy as np
HERE = Path(__file__).resolve().parent
CONTEXT = next((p for p in (HERE.parent/'context',HERE.parents[1]/'ZT_wholeball_transfers'/'context') if (p/'edgecert.py').exists()),HERE.parent/'context')
sys.path.insert(0, str(CONTEXT))
import edgecert as E

def realrows(a):
    return np.stack([a[...,0,:,:].real,a[...,0,:,:].imag,a[...,1,:,:].real,a[...,1,:,:].imag,
                     a[...,2,:,:].real,a[...,2,:,:].imag,a[...,3,:,:].imag/24],axis=-3)

def side_jet(sysm, M, w, q0):
    q = w @ M.T + q0
    x, ok = E.continue_x(sysm,q)
    if not np.all(ok): raise ValueError('continuation failed')
    Fx, Fq = sysm.J_float(q,x)
    G = -np.linalg.solve(Fx,Fq @ M)
    V = np.concatenate([np.broadcast_to(M[:3],(len(w),3,4)),G],axis=1)
    nv = np.einsum('mk,bkj->bmj',sysm.Nf,V)
    phase=np.exp(1j*(sysm._z(q,x)@sysm.Nf.T))
    fk=-np.einsum('bm,cm,bmj,bmk->bcjk',phase,sysm.Cf,nv,nv)
    K=realrows(fk)
    H=-np.linalg.solve(Fx,K.reshape(len(w),7,16)).reshape(len(w),7,4,4)
    return q,x,G,H,Fx

def expjet(ph, g, h):
    v=np.exp(1j*ph)
    return v,1j*v[...,None]*g,v[...,None,None]*(1j*h-g[...,:,None]*g[...,None,:])

def matmuljet(A,B):
    a,ag,ah=A; b,bg,bh=B
    c=a@b
    cg=np.empty(c.shape+(4,),complex); ch=np.empty(c.shape+(4,4),complex)
    for j in range(4):
        cg[...,j]=ag[...,j]@b+a@bg[...,j]
        for k in range(4):
            ch[...,j,k]=ah[...,j,k]@b+ag[...,j]@bg[...,k]+ag[...,k]@bg[...,j]+a@bh[...,j,k]
    return c,cg,ch

def invjet(A):
    a,g,h=A; R=np.linalg.inv(a); Rg=np.empty_like(g); Rh=np.empty_like(h)
    for j in range(4):
        Rg[...,j]=-R@g[...,j]@R
        for k in range(4):
            Rh[...,j,k]=R@g[...,k]@R@g[...,j]@R+R@g[...,j]@R@g[...,k]@R-R@h[...,j,k]@R
    return R,Rg,Rh

def adjjet(A):
    return tuple(np.swapaxes(v.conj(),1,2) for v in A)

def edge_jet(eb,w):
    w=np.asarray(w,float).reshape(-1,4); n=len(w); sy=E.system()
    Mh=eb.Mth; Mv=E.QSIGN_V[:,None]*Mh[E.QPERM_V]
    qh,xh,gh,hh,fh=side_jet(sy,Mh,w,eb.q0)
    qv,xv,gv,hv,fv=side_jet(sy,Mv,w,E.QSIGN_V*eb.q0[E.QPERM_V])
    ph=np.zeros((n,6,6)); gp=np.zeros((n,6,6,4)); hp=np.zeros((n,6,6,4,4))
    theta=E.TH0f+np.column_stack([qh[:,:3],xh[:,0]])
    tg=np.concatenate([np.broadcast_to(Mh[:3],(n,3,4)),gh[:,:1]],axis=1)
    th=np.concatenate([np.zeros((n,3,4,4)),hh[:,:1]],axis=1)
    for m,(r,c) in enumerate(E.S.POS): ph[:,r,c]=theta[:,m]; gp[:,r,c]=tg[:,m]; hp[:,r,c]=th[:,m]
    for k in range(6):
        a,c=1+k//3,3+k%3
        ph[:,a,c]=E.PH0f[k]+xh[:,1+k]; gp[:,a,c]=gh[:,1+k]; hp[:,a,c]=hh[:,1+k]
        ph[:,c,a]=E.PH0f[k]+xv[:,1+k]; gp[:,c,a]=gv[:,1+k]; hp[:,c,a]=hv[:,1+k]
    EE=expjet(ph[:,:3,:3],gp[:,:3,:3],hp[:,:3,:3])
    B=expjet(ph[:,:3,3:],gp[:,:3,3:],hp[:,:3,3:])
    C=expjet(ph[:,3:,:3],gp[:,3:,:3],hp[:,3:,:3])
    Dj=matmuljet(matmuljet(C,adjjet(EE)),invjet(adjjet(B)))
    D,Dg,Dh=tuple(-t for t in Dj)
    ph[:,3:,3:]=np.angle(D)
    gp[:,3:,3:]=np.imag(Dg/D[...,None])
    hp[:,3:,3:]=np.imag(Dh/D[...,None,None]-Dg[...,:,None]*Dg[...,None,:]/D[...,None,None]**2)
    Q=ph.reshape(n,36); dQ=gp.reshape(n,36,4); d2Q=hp.reshape(n,36,4,4)
    aim=eb.P+w@eb.U.T
    Q += 2*np.pi*np.round((aim-Q)/(2*np.pi))
    defect=np.maximum(np.max(np.abs(np.abs(D)-1),axis=(1,2)),np.abs(xh[:,0]-xv[:,0]))
    return Q,dQ,d2Q,defect

def main():
    p=CONTEXT/'sample_certificate.json.gz'
    with gzip.open(p,'rt') as f:d=json.load(f)
    eb=E.EdgeBall(d['edge'][0]); rng=np.random.default_rng(20261026)
    u=rng.normal(size=(1000,4)); u/=np.linalg.norm(u,axis=1,keepdims=True)
    w=np.concatenate([np.zeros((1,4)),eb.r*u],axis=0)
    Q,G,H,err=edge_jet(eb,w)
    h6=np.eye(6)-np.ones((6,6))/6; hor=np.kron(h6,h6)
    HG=np.einsum('ij,bjk->bik',hor,G)
    HH=np.einsum('ij,bjkl->bikl',hor,H)
    hnorm=np.linalg.svd(HH.reshape(-1,36,16),compute_uv=False)[:,0]
    gn=np.linalg.svd(HG,compute_uv=False)[:,0]
    import edge_augmented as EA
    EA.ctx.prec=224
    verified_centre=EA.setup(eb.Mth)
    centre_tensor_gap=float(np.max(np.abs(HH[0]-EA.W.mid_np(verified_centre['H2']).reshape(36,4,4))))
    dv=np.array([.2,-.3,.5,.7]);dv/=np.linalg.norm(dv);eps=.001
    qtest,_,_,_=edge_jet(eb,np.array([eps*dv,-eps*dv]))
    fd=hor@((qtest[0]+qtest[1]-2*Q[0])/eps**2)
    hdir=np.einsum('eij,i,j->e',HH[0],dv,dv)
    stats={'status':'NUMERICAL','n_sphere_points':1000,'r':eb.r,'max_matched_completion_defect':float(err.max()),
       'centre_Hessian_max_entry_gap_vs_augmented_Arb_midpoint':centre_tensor_gap,
       'directional_Hessian_finite_difference_error_eps_0p001':float(np.linalg.norm(fd-hdir)),
       'center_phase_Hessian_flat_norm':float(hnorm[0]),'sphere_phase_Hessian_flat_norm_quantiles':np.quantile(hnorm[1:],[0,.1,.5,.9,1]).tolist(),
       'sphere_phase_Jacobian_norm_quantiles':np.quantile(gn[1:],[0,.1,.5,.9,1]).tolist()}
    # Weight every original edge transfer at the centre of its first box.
    gs=d['edge'][0]['transfers']
    boxes=np.array([g['boxes'][0] for g in gs],int)
    wc=eb.r*(-1+(2*boxes[:,1:]+1)/(2**boxes[:,:1]))
    Q,G,H,err=edge_jet(eb,wc)
    weighted=[]; affine=[]; margins=[]
    for i,g in enumerate(gs):
        t=E.S.Ball(d['seeds'][g['target']]); sgn,idx=E.S.g_perm(g['g']); L=E.S.corner_L(g['rows'],g['cols'])
        A=np.linalg.solve(t.Mth,L[:,np.argsort(idx)]*sgn)
        weighted.append(float(np.linalg.norm((A@H[i].reshape(36,16)),2)))
        affine.append(float(np.linalg.norm(A@G[i],2)))
        a=np.linalg.solve(t.Mth,L@(sgn*Q[i,idx])+2*np.pi*np.array(g['wind'])-t.theta0)
        margins.append(float(t.r-np.linalg.norm(a)))
    stats.update({'n_transfer_groups':len(gs),'weighted_Hessian_flat_norm_quantiles':np.quantile(weighted,[0,.1,.5,.9,1]).tolist(),
        'target_jacobian_norm_quantiles':np.quantile(affine,[0,.1,.5,.9,1]).tolist(),'target_margin_quantiles':np.quantile(margins,[0,.1,.5,.9,1]).tolist()})
    out=HERE/'edge_numeric_summary.json';out.write_text(json.dumps(stats,indent=2)+'\n');print(json.dumps(stats,indent=2))
if __name__=='__main__':main()
