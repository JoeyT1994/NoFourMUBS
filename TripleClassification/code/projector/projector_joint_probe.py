"""Proposal only: row-projector separation with per-column mixed equations.

One shared Hermitian functional, six unbiasedness multipliers, and six
affine lower supports whose w coefficients sum to zero. No tuple search.
"""
import row_separator_probe as R
import moving_secant_certificate as M
import numpy as np
import json,time
from pathlib import Path
from scipy.optimize import linprog
ELL=R.ELL

def data(cs,model):
    d=R.data(cs,M.A.mid(model['r']));r=d['r'];tau=M.A.mid(model['tau'])
    q=M.A.numeric(model['Q0']).reshape(6,6);u=M.A.numeric(model['U']).reshape(6,6,4)
    h2=M.A.numeric(model['H2']).reshape(6,6,4,4);x=M.A.numeric(model['X']).reshape(6,6,-1)
    dq=np.einsum('pa,aj->pj',ELL,q);du=-np.einsum('pa,ajk->pjk',ELL,u)
    dh=-np.einsum('pa,ajkl->pjkl',ELL,h2);dh=(dh+dh.transpose(0,1,3,2))/2
    dx=-np.einsum('pa,ajk->pjk',ELL,x)
    N=len(d['v']);z=np.empty((N,15,7),complex);z[:,:,0]=d['z'];z[:,:,1:]=d['z'][:,:,None]*np.exp(-1j*dq)[None,:,:]
    g=np.repeat(np.einsum('pa,nak->npk',ELL,d['T'])[:,:,None,:],7,axis=2);g[:,:,1:]+=du[None,:,:,:]
    hh=np.zeros((15,7,4,4));hh[:,1:]=dh;xx=np.zeros((15,7,x.shape[2]));xx[:,1:]=dx
    hb=np.linalg.norm(hh,axis=(2,3))*r*r/2+np.linalg.norm(xx,axis=2)*tau
    b=np.linalg.norm(g,axis=3)*r+np.sqrt(2)*d['e'][:,None,None]
    rem=b*hb[None,:,:]+hb[None,:,:]**2/2+(b+hb[None,:,:])**3/6
    f=np.c_[d['z'].real,d['z'].imag,z[:,:,1:].real.sum(1)/3]
    d.update(zj=z,gj=g,hj=hh,xj=xx,rem=rem,fj=f,tau=tau)
    return d

def basis(d,i):
    z=d['zj'][i];g=d['gj'][i];h=d['hj'];x=d['xj'];co=np.zeros((36,15,7),complex)
    for p in range(15):co[p,p,0]=z[p,0];co[15+p,p,0]=-1j*z[p,0]
    for j in range(6):co[30+j,:,1+j]=z[:,1+j]/3
    cr=co.real;ci=co.imag
    return dict(f=cr.sum((1,2)),ge=-np.einsum('kpj,pa->ka',ci,ELL),gw=-np.einsum('kpj,pja->ka',ci,g),
        hh=-np.einsum('kpj,pja,pjb->kab',cr,g,g)-np.einsum('kpj,pjab->kab',ci,h),
        he=-np.einsum('kpj,pja,pb->kab',cr,g,ELL),ee=-np.einsum('kpj,pa,pb->kab',cr,ELL,ELL),
        nx=-np.einsum('kpj,pja->ka',ci,x))

def bounds(d,weights,affine,derivative=False):
    w=weights[d['ci']];co=d['zj'].copy();co[:,:,0]*=(w[:,:15]-1j*w[:,15:30]);co[:,:,1:]*=w[:,None,30:]/3
    cr=co.real;ci=co.imag;g=d['gj'];r=d['r'];eps=d['e']
    f=cr.sum((1,2));ge=-np.einsum('npj,pa->na',ci,ELL);gw=-np.einsum('npj,npja->na',ci,g)
    hh=-np.einsum('npj,npja,npjb->nab',cr,g,g)-np.einsum('npj,pjab->nab',ci,d['hj'])
    he=-np.einsum('npj,npja,pb->nab',cr,g,ELL);ee=-np.einsum('npj,pa,pb->nab',cr,ELL,ELL)
    nx=-np.einsum('npj,pja->na',ci,d['xj']);ww=gw-affine[d['ci']]
    en,ev=np.linalg.eigh(ee);hn,hv=np.linalg.eigh(hh);su,ss,sv=np.linalg.svd(he,full_matrices=False)
    gn=np.linalg.norm(ge,axis=1);wn=np.linalg.norm(ww,axis=1);xn=np.linalg.norm(nx,axis=1)
    yr=np.sqrt(w[:,:15]**2+w[:,15:30]**2)
    rem=(d['rem'][:,:,0]*yr).sum(1)+(d['rem'][:,:,1:]*np.abs(w[:,None,30:])/3).sum((1,2))
    value=f-eps*gn-r*wn-d['tau']*xn-r*r*np.maximum(0,-hn[:,0])/2-r*eps*ss[:,0]-eps*eps*np.maximum(0,-en[:,0])/2-rem
    if not derivative:return value
    ids=[np.where(d['ci']==c)[0][np.argmin(value[d['ci']==c])] for c in range(6)];grads=[]
    for i in ids:
        B=basis(d,i);gradient=B['f'].copy();j=d['ci'][i]
        gradient-=eps[i]*np.einsum('ka,a->k',B['ge'],ge[i]/max(gn[i],1e-100))
        gradient-=r*np.einsum('ka,a->k',B['gw'],ww[i]/max(wn[i],1e-100))
        gradient-=d['tau']*np.einsum('ka,a->k',B['nx'],nx[i]/max(xn[i],1e-100))
        if hn[i,0]<0:gradient+=r*r/2*np.einsum('kab,a,b->k',B['hh'],hv[i,:,0],hv[i,:,0])
        gradient-=r*eps[i]*np.einsum('kab,a,b->k',B['he'],su[i,:,0],sv[i,0,:])
        if en[i,0]<0:gradient+=eps[i]*eps[i]/2*np.einsum('kab,a,b->k',B['ee'],ev[i,:,0],ev[i,:,0])
        gradient[:15]-=d['rem'][i,:,0]*w[i,:15]/np.maximum(yr[i],1e-100)
        gradient[15:30]-=d['rem'][i,:,0]*w[i,15:30]/np.maximum(yr[i],1e-100)
        gradient[30:]-=d['rem'][i,:,1:].sum(0)*np.sign(w[i,30:])/3
        grads.append((gradient,r*ww[i]/max(wn[i],1e-100)))
    return value,ids,grads

def unpack(v):
    weights=np.zeros((6,36));weights[:,:30]=v[:30];weights[:,30:]=v[30:66].reshape(6,6)
    affine=np.zeros((6,4));affine[:5]=v[66:86].reshape(5,4);affine[5]=-affine[:5].sum(0)
    return weights,affine

def row(c,grad,da):
    out=np.zeros(92);out[:30]=-grad[:30];out[30+6*c:36+6*c]=-grad[30:]
    if c<5:out[66+4*c:70+4*c]=-da
    else:out[66:86]=np.tile(da,5)
    out[86+c]=1
    return out

def propose(d,steps=100,verbose=True):
    rows=[row(c,f,np.zeros(4)) for c,f in zip(d['ci'],d['fj'])];cost=np.r_[np.zeros(86),-np.ones(6)]
    best=(-float('inf'),None);start=time.monotonic()
    for step in range(steps):
        fit=linprog(cost,A_ub=np.array(rows),b_ub=np.zeros(len(rows)),bounds=[(-1,1)]*66+[(None,None)]*26,
                    method='highs',options={'threads':1})
        if not fit.success:raise ArithmeticError(fit.message)
        weights,affine=unpack(fit.x);val,ids,grads=bounds(d,weights,affine,True);gap=float(val[ids].sum())
        norm=np.linalg.norm(fit.x[:66]);score=gap/max(norm,1e-100)
        if norm>0 and score>best[0]:best=score,fit.x.copy()
        if verbose and step%5==0:print('projector joint',step,'gap',gap,'upper',-fit.fun,'best',best[0],'seconds',time.monotonic()-start,flush=True)
        if gap>1e-4 or -fit.fun<1e-7:break
        for c,(grad,da) in enumerate(grads):rows.append(row(c,grad,da))
    return best,step+1

if __name__=='__main__':
    s,r,cs=R.P.read();path=R.P.SOURCE.parent.parent/'cells/588_2_0_2_2_1.json';model,cols,binding=M.load(path)
    d=data(cs,model);best,steps=propose(d);print('result',best[0],steps,flush=True)
    Path(__file__).with_name('projector_joint_probe.json').write_text(json.dumps(dict(diagnostic_only=True,score=best[0],steps=steps,
        seed_hex=[float(x).hex() for x in best[1]]),indent=2)+'\n')
