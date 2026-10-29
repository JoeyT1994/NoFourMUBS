"""Exact quadratic K-entry equations with a certified native-H remainder.

Only numerical proposals use CVXPY. All accepted inequalities are rebuilt
in Arb from the complete-cover phase tubes. See CHORDAL_PROOF.txt.
"""
import numpy as np
from flint import arb, arb_mat, acb, acb_mat, ctx
from load_native import C, MS, S, norm_upper, endpoints
from intervals import dual_lower, symmetric


def cn(a):
    return np.array([[complex(float(a[i,j].real.mid()),float(a[i,j].imag.mid()))
                      for j in range(a.ncols())] for i in range(a.nrows())])


def real_operator(a):
    return C.Z.spectral(arb_mat([[a[i,j].real for j in range(a.ncols())]
                                for i in range(a.nrows())]+
                               [[a[i,j].imag for j in range(a.ncols())]
                                for i in range(a.nrows())]))


def prepare(model, prepared, bounds, clique):
    r,tau=model['r'],model['tau'];p6=C.project6();h=[];k=[]
    for c in range(6):
        qc=p6*S.block(model['Q0'],range(c,36,6),[0])
        uc=p6*S.block(model['U'],range(c,36,6),range(4))
        hc=p6*S.block(model['H2'],range(c,36,6),range(16))
        xc=p6*S.block(model['X'],range(c,36,6),range(model['X'].ncols()))
        h0=acb_mat([[acb(0,qc[a,0]).exp()] for a in range(6)])
        h1=acb_mat([[acb(0,uc[a,j])*h0[a,0]*r for j in range(4)] for a in range(6)])
        h2=acb_mat([[h0[a,0]*(acb(0,hc[a,4*i+j])-uc[a,i]*uc[a,j])*r*r
                    for i in range(4) for j in range(4)] for a in range(6)])
        u=C.Z.spectral(uc)*r;normal=C.Z.spectral(hc)*r*r/2+C.Z.spectral(xc)*tau
        remainder=(C.Z.spectral(xc)*tau+u*normal+normal*normal/2+(u+normal)**3/6).upper()
        h.append(dict(h0=h0,h1=h1,h2=h2,remainder=remainder,
                      dnorm=real_operator(h1),n2=real_operator(h2)/2))
        color=clique[c];p=prepared[color];b=bounds[color]
        eta=(b['epsilon']+b['phase_radius']*b['phase_radius']/2).upper()
        k0=acb_mat([[acb(0,p['v0'][a,0]).exp()] for a in range(6)])
        kb=acb_mat(6,76)
        for a in range(6):
            for j in range(4):kb[a,j]=acb(0,p['T'][a,j])*k0[a,0]*r
            kb[a,4+12*c+2*a]=eta
            kb[a,4+12*c+2*a+1]=acb(0,eta)
        k.append(dict(k0=k0,b=kb,eta=eta,phase=b['phase_radius']))
    groups=[list(range(4))]+[list(range(4+12*c,16+12*c)) for c in range(6)]
    tails=[]
    for a in range(6):
        for b in range(6):
            hh,kk=h[a],k[b]
            s0=(hh['h0'].conjugate().transpose()*kk['k0'])[0,0]
            linear=hh['h0'].conjugate().transpose()*kk['b']
            first=hh['h1'].conjugate().transpose()*kk['k0']
            for j in range(4):linear[0,j]+=first[j,0]
            bound1=sum((real_operator(acb_mat([[linear[0,j] for j in g]])) for g in groups),arb(0))
            # A true completing column has norm sqrt(6); its displacement
            # from k0 has norm at most its certified phase radius.
            bound1=min(bound1.upper(),(arb(6).sqrt()*(kk['phase']+hh['dnorm'])).upper())
            bound2=hh['dnorm']*kk['phase']+hh['n2']*arb(6).sqrt()
            rest=hh['n2']*kk['phase']+hh['remainder']*arb(6).sqrt()
            tails.append(((2*abs(s0)*rest+2*bound1*(bound2+rest)+(bound2+rest)**2)/6).upper())
    return dict(h=h,k=k,groups=groups,tails=tails)


def numeric_coefficients(d):
    fs=[];gs=[];qs=[]
    h=[{key:cn(x[key]) for key in ('h0','h1','h2')} for x in d['h']]
    k=[{key:cn(x[key]) for key in ('k0','b')} for x in d['k']]
    for c in range(6):
        for a in range(6):
            z=k[c]['k0'][a,0];b=k[c]['b'][a,:]
            fs.append(abs(z)**2-1);gs.append(2*np.real(z.conjugate()*b))
            qs.append(2*np.real(b.conj()[:,None]*b[None,:]))
    gram=[]
    for a,b in C.PAIRS:
        ka,kb=k[a],k[b]
        f=(ka['k0'].conj().T@kb['k0'])[0,0]
        g=(ka['k0'].conj().T@kb['b']+(ka['b'].conj().T@kb['k0']).T)[0,:]
        q=ka['b'].conj().T@kb['b'];q=q+q.T
        gram.append((f,g,q))
    for part in (np.real,np.imag):
        for f,g,q in gram:fs.append(part(f));gs.append(part(g));qs.append(part(q))
    for a in range(6):
        for b in range(6):
            hh,kk=h[a],k[b]
            s=(hh['h0'].conj().T@kk['k0'])[0,0]
            l=(hh['h0'].conj().T@kk['b'])[0,:]
            l[:4]+=(hh['h1'].conj().T@kk['k0'])[:,0]
            t=np.zeros((76,76),complex)
            t[:4,:]=hh['h1'].conj().T@kk['b'];t=t+t.T
            t[:4,:4]+=(hh['h2'].conj().T@kk['k0']).reshape(4,4)
            fs.append((abs(s)**2-6)/6)
            gs.append(2*np.real(s.conjugate()*l)/6)
            qs.append(2*np.real(l.conj()[:,None]*l[None,:]+s.conjugate()*t)/6)
    return np.array(fs),np.array(gs),np.array(qs)


def scalar(d, direction):
    if len(direction)!=102 or not np.isfinite(direction).all():
        raise ValueError('102 finite residual coefficients required')
    y=[arb(float(x)) for x in direction];c=arb(0);g=arb_mat(76,1);q=arb_mat(76,76)
    for col in range(6):
        kk=d['k'][col]
        for a in range(6):
            weight=y[6*col+a];z=kk['k0'][a,0]
            row=acb_mat([[kk['b'][a,j] for j in range(76)]])
            c+=weight*((z.conjugate()*z).real-1)
            g+=(row*z.conjugate()).real.transpose()*(2*weight)
            q+=(row.conjugate().transpose()*row).real*(2*weight)
    for i,(a,b) in enumerate(C.PAIRS):
        ka,kb=d['k'][a],d['k'][b]
        f=(ka['k0'].conjugate().transpose()*kb['k0'])[0,0]
        first=ka['k0'].conjugate().transpose()*kb['b']+(ka['b'].conjugate().transpose()*kb['k0']).transpose()
        second=ka['b'].conjugate().transpose()*kb['b'];second+=second.transpose()
        c+=y[36+i]*f.real+y[51+i]*f.imag
        g+=(first.real*y[36+i]+first.imag*y[51+i]).transpose()
        q+=second.real*y[36+i]+second.imag*y[51+i]
    for a in range(6):
        for b in range(6):
            weight=y[66+6*a+b];hh,kk=d['h'][a],d['k'][b]
            s=(hh['h0'].conjugate().transpose()*kk['k0'])[0,0]
            first=hh['h0'].conjugate().transpose()*kk['b']
            add=hh['h1'].conjugate().transpose()*kk['k0']
            for j in range(4):first[0,j]+=add[j,0]
            second=acb_mat(76,76);cross=hh['h1'].conjugate().transpose()*kk['b']
            for i in range(4):
                for j in range(76):second[i,j]=cross[i,j]
            second+=second.transpose()
            curv=hh['h2'].conjugate().transpose()*kk['k0']
            for i in range(4):
                for j in range(4):second[i,j]+=curv[4*i+j,0]
            c+=weight*((s.conjugate()*s).real-6)/6
            g+=(first*s.conjugate()).real.transpose()*(weight/3)
            q+=((first.conjugate().transpose()*first).real+(second*s.conjugate()).real)*(weight/3)
    tail=sum((abs(y[66+i])*d['tails'][i] for i in range(36)),arb(0))
    return c,symmetric(q),g,tail


def receipt(d,direction,multipliers):
    c,q,g,tail=scalar(d,direction)
    lower=dual_lower(q,g,d['groups'],multipliers)
    margin=c+lower-tail
    if not margin>0:return None
    return dict(status='EXCLUDED',route='quadratic complex-entry residual support',
                domain='original complete-cover conditional phase tube',
                positive_level_cover_certified=False,
                scalar_margin=endpoints(margin),constant=endpoints(c),
                quadratic_lower=endpoints(lower),tail_upper=endpoints(tail),
                direction_hex=[float(x).hex() for x in direction],
                dual_multipliers_hex=[float(x).hex() for x in multipliers],
                chordal_error_bounds=[endpoints(x['eta']) for x in d['k']])


def propose(d):
    precision=ctx.prec
    import cvxpy as cp
    ctx.prec=precision
    f,g,q=numeric_coefficients(d)
    y=cp.Variable(102);lam=cp.Variable(7,nonneg=True);s=cp.Variable(nonneg=True)
    qq=cp.reshape(q.reshape(102,-1).T@y,(76,76),order='C')
    gg=g.T@y
    diag=cp.hstack([cp.multiply(np.ones(len(group)),lam[i]) for i,group in enumerate(d['groups'])])
    a=qq+cp.diag(diag)
    matrix=cp.bmat([[a,cp.reshape(gg,(76,1),order='C')],
                    [cp.reshape(gg,(1,76),order='C'),cp.reshape(s,(1,1),order='C')]])
    tail=np.array([float(t) for t in d['tails']])@cp.abs(y[66:])
    prob=cp.Problem(cp.Minimize((cp.sum(lam)+s)/2+tail),
                    [f@y==1,cp.norm(y,2)<=1000,matrix >> 1e-9*np.eye(77)])
    prob.solve(solver='CLARABEL',max_iter=100,tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec=precision
    info=dict(solver_status=prob.status,proposed_cost=None if prob.value is None else float(prob.value))
    if y.value is None or lam.value is None:return None,info
    direction=np.asarray(y.value).ravel();multipliers=np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    if not np.isfinite(direction).all() or not np.isfinite(multipliers).all():return None,info
    try:
        proof=receipt(d,direction.tolist(),multipliers.tolist())
        c,q,g,tail=scalar(d,direction.tolist())
        info['verified_margin']=str(c+dual_lower(q,g,d['groups'],multipliers.tolist())-tail)
    except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
        proof=None;info['verification_failure']=str(exc)
    return proof,info


def exclude(model,prepared,bounds,clique):
    return propose(prepare(model,prepared,bounds,clique))


def replay(model,prepared,bounds,clique,witness):
    return receipt(prepare(model,prepared,bounds,clique),
                   [float.fromhex(x) for x in witness['direction_hex']],
                   [float.fromhex(x) for x in witness['dual_multipliers_hex']])
