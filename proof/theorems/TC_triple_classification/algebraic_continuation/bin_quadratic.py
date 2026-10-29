"""Signed quadratic exclusions for individual closed phase bins.

The seed factor is the full original ball. Five independent interval
coordinates describe the original closed torus bin exactly. No root
census or numerical solver status can delete a bin.
"""
import time
import numpy as np
from flint import arb,arb_mat,acb,ctx
from load_native import C,MS,S,norm_upper,endpoints
from intervals import dual_lower,symmetric

GROUPS=[list(range(4))]+[[4+j] for j in range(5)]
ELL=np.array([[int(j==a)-int(j==b) for j in range(6)] for a,b in C.PAIRS])


def restrict_cliques(cover,cliques):
    """Keep the union of edges in an already exhaustive filtered clique list."""
    out=dict(cover);out['cliques']=cliques;adj=[0]*len(cover['adjacency'])
    for clique in cliques:
        for a in clique:
            for b in clique:
                if a!=b:adj[a]|=1<<b
    out['adjacency']=adj
    used={c for p in cliques for c in p}
    out['valid_labels']=cover['valid_labels'] & np.isin(cover['label_colors'],list(used))
    return out


def setup(model):
    p6=C.project6();width=arb.pi()/96;rho=(arb(29)/6).sqrt()*width
    g=p6*arb_mat([[int(i==j+1) for j in range(5)] for i in range(6)])*width
    data=[];r=model['r'];tau=model['tau']
    for a in range(6):
        h=p6*S.block(model['Q0'],range(a,36,6),[0])
        u=p6*S.block(model['U'],range(a,36,6),range(4))
        h2=p6*S.block(model['H2'],range(a,36,6),range(16))
        x=p6*S.block(model['X'],range(a,36,6),range(model['X'].ncols()))
        linear=arb_mat([[-u[i,j]*r for j in range(4)]+[g[i,j] for j in range(5)] for i in range(6)])
        n=C.Z.spectral(h2)*r*r/2+C.Z.spectral(x)*tau
        delta=C.Z.spectral(u)*r+rho
        tail=(2*delta*n+n*n+arb(2).sqrt()/3*(delta+n)**3).upper()
        data.append(dict(h=h,d=linear,h2=h2*r*r,x=x*tau,tail=tail))
    return data


def numeric(data,indices):
    beta=np.c_[np.zeros(len(indices)),np.asarray(indices)]*(2*np.pi/192)
    hp=np.stack([MS.numeric(a['h'])[:,0] for a in data])
    angles=np.einsum('pj,nj->np',ELL,beta)[:,None,:]-np.einsum('pj,aj->ap',ELL,hp)[None,:,:]
    co=np.cos(angles)/3;si=-np.sin(angles)/3
    f=co.sum(2);j=np.einsum('nap,pj->naj',si,ELL)
    hes=-np.einsum('nap,pi,pj->naij',co,ELL,ELL)
    d=np.stack([MS.numeric(a['d']) for a in data]);hh=np.stack([MS.numeric(a['h2']) for a in data])
    q=np.einsum('aik,naij,ajl->nakl',d,hes,d,optimize=True)
    q[:,:,:4,:4]-=np.einsum('nai,aij->naj',j,hh).reshape(len(indices),6,4,4)
    g=np.einsum('nai,aij->naj',j,d)
    x=-np.einsum('nai,aij->naj',j,np.stack([MS.numeric(a['x']) for a in data]))
    return f,g,q,x


def exact(data,index,direction):
    if len(index)!=5 or any(type(x)is not int for x in index):raise ValueError('five exact bin integers required')
    if len(direction)!=6 or not np.isfinite(direction).all():raise ValueError('six finite residual weights required')
    beta=[arb(0)]+[2*arb.pi()*x/192 for x in index]
    c=arb(0);g=arb_mat(9,1);q=arb_mat(9,9);x=arb_mat(1,data[0]['x'].ncols());tail=arb(0)
    for a,dd in enumerate(data):
        y=arb(float(direction[a]));f=arb(0);j=arb_mat(1,6);h=arb_mat(6,6)
        for i,k in C.PAIRS:
            angle=beta[i]-beta[k]-dd['h'][i,0]+dd['h'][k,0]
            co=angle.cos()/3;si=-angle.sin()/3;f+=co
            j[0,i]+=si;j[0,k]-=si
            h[i,i]-=co;h[k,k]-=co;h[i,k]+=co;h[k,i]+=co
        qq=dd['d'].transpose()*h*dd['d'];curve=j*dd['h2']
        for i in range(4):
            for k in range(4):qq[i,k]-=curve[0,4*i+k]
        c+=y*f;g+=(j*dd['d']).transpose()*y;q+=qq*y;x-=j*dd['x']*y
        tail+=abs(y)*dd['tail']
    tail+=norm_upper(x.entries())
    return c,symmetric(q),g,tail


def receipt(data,index,direction,multipliers):
    c,q,g,tail=exact(data,index,direction)
    lower=dual_lower(q,g,GROUPS,multipliers);margin=c+lower-tail
    if not margin>0:return None
    return dict(index=list(index),direction_hex=[float(x).hex() for x in direction],
                dual_multipliers_hex=[float(x).hex() for x in multipliers],
                scalar_margin=endpoints(margin))


class Search:
    def __init__(self,data):
        precision=ctx.prec
        import cvxpy as cp
        ctx.prec=precision;self.cp=cp
        self.f=cp.Parameter(6);self.g=cp.Parameter((9,6));self.q=cp.Parameter((81,6))
        self.x=cp.Parameter((data[0]['x'].ncols(),6));self.y=cp.Variable(6)
        self.lam=cp.Variable(6,nonneg=True);self.s=cp.Variable(nonneg=True)
        diag=cp.hstack([cp.multiply(np.ones(4),self.lam[0]),self.lam[1:]])
        q=cp.reshape(self.q@self.y,(9,9),order='C')+cp.diag(diag);g=self.g@self.y
        mat=cp.bmat([[q,cp.reshape(g,(9,1),order='C')],
                      [cp.reshape(g,(1,9),order='C'),cp.reshape(self.s,(1,1),order='C')]])
        tail=cp.norm(self.x@self.y,2)+np.array([float(d['tail']) for d in data])@cp.abs(self.y)
        self.problem=cp.Problem(cp.Minimize((cp.sum(self.lam)+self.s)/2+tail),
            [self.f@self.y==1,cp.sum(self.y)==0,cp.norm(self.y,2)<=1000,mat >> 1e-9*np.eye(10)])

    def propose(self,f,g,q,x):
        precision=ctx.prec
        self.f.value=f;self.g.value=g.T;self.q.value=q.reshape(6,-1).T;self.x.value=x.T
        try:
            self.problem.solve(solver='CLARABEL',max_iter=60,tol_gap_abs=2e-6,tol_feas=2e-6,tol_gap_rel=2e-6,warm_start=True)
        except self.cp.error.SolverError:return None
        finally:ctx.prec=precision
        if self.problem.value is None or not np.isfinite(self.problem.value) or self.problem.value>=.995:return None
        if self.y.value is None or self.lam.value is None:return None
        y=np.asarray(self.y.value).ravel();lam=np.maximum(np.asarray(self.lam.value).ravel(),0)+1e-7
        if not np.isfinite(y).all() or not np.isfinite(lam).all():return None
        return y.tolist(),lam.tolist()


def prune(model,cover,max_bins=None,progress=None):
    data=setup(model);search=Search(data);out=dict(cover)
    for name in ('bin_indices','bin_deltas','initial_radii'):out[name]=list(cover[name])
    witnesses=[];tested=0;start=time.monotonic();used=sorted({c for p in cover['cliques'] for c in p})
    for color in used:
        indices=cover['bin_indices'][color];keep=[]
        for startbin in range(0,len(indices),256):
            block=indices[startbin:startbin+256];fs,gs,qs,xs=numeric(data,block)
            for n,index in enumerate(block):
                j=startbin+n
                if max_bins is not None and tested>=max_bins:keep.append(j);continue
                tested+=1;proposal=search.propose(fs[n],gs[n],qs[n],xs[n]);proof=None
                if proposal is not None:
                    try:proof=receipt(data,index,*proposal)
                    except (ArithmeticError,ValueError,ZeroDivisionError):pass
                if proof is None:keep.append(j)
                else:witnesses.append(dict(color=color,**proof))
        out['bin_indices'][color]=[indices[j] for j in keep]
        out['bin_deltas'][color]=[cover['bin_deltas'][color][j] for j in keep]
        out['initial_radii'][color]=(arb(max(C.Z.upper(norm_upper(d)+cover['bin_radius']) for d in out['bin_deltas'][color]))
                                      if keep else arb(0))
        if progress:progress(dict(color=color,before=len(indices),after=len(keep),tested=tested,seconds=time.monotonic()-start))
    nonempty={c for c in used if out['bin_indices'][c]}
    out['cliques']=[p for p in cover['cliques'] if set(p)<=nonempty]
    out['adjacency']=[a & sum(1<<c for c in nonempty) if i in nonempty else 0 for i,a in enumerate(cover['adjacency'])]
    out['valid_labels']=cover['valid_labels'] & np.isin(cover['label_colors'],list(nonempty))
    out.pop('_fine_pair_cache',None)
    return out,dict(tested_bins=tested,excluded_bins=len(witnesses),witnesses=witnesses,seconds=time.monotonic()-start)


def replay_pruning(model,cover,saved):
    data=setup(model);deleted={};seen=set()
    available={c:{tuple(x) for x in cover['bin_indices'][c]} for c in {c for p in cover['cliques'] for c in p}}
    for w in saved['witnesses']:
        color=w['color'];index=tuple(w['index']);key=(color,index)
        if type(color)is not int or color not in available or index not in available[color]:
            raise ArithmeticError('saved excluded bin is absent from rebuilt cover')
        if key in seen:raise ArithmeticError('duplicate bin witness')
        seen.add(key)
        proof=receipt(data,list(index),[float.fromhex(x) for x in w['direction_hex']],
                      [float.fromhex(x) for x in w['dual_multipliers_hex']])
        if proof is None:raise ArithmeticError('bin exclusion failed on replay')
        deleted.setdefault(color,set()).add(index)
    out=dict(cover)
    for name in ('bin_indices','bin_deltas','initial_radii'):out[name]=list(cover[name])
    for color,indices in deleted.items():
        keep=[j for j,index in enumerate(cover['bin_indices'][color]) if tuple(index) not in indices]
        out['bin_indices'][color]=[cover['bin_indices'][color][j] for j in keep]
        out['bin_deltas'][color]=[cover['bin_deltas'][color][j] for j in keep]
        out['initial_radii'][color]=(arb(max(C.Z.upper(norm_upper(d)+cover['bin_radius']) for d in out['bin_deltas'][color]))
                                      if keep else arb(0))
    out=restrict_cliques(out,[p for p in out['cliques'] if all(out['bin_indices'][c] for c in p)])
    out.pop('_fine_pair_cache',None)
    return out
