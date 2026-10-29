"""Exclude captured column combinations using their shared H parameter.

Numerical linear solves propose scalar directions. Replay uses stored binary64
coefficients and verifies a strict Arb bound. Unselected K columns have zero
weights in every equation, so their placeholder coordinates impose no condition.
"""
import numpy as np
from flint import arb,arb_mat,acb
import plane_column_certificate as P


def scalar_support(model,captures,direction=None):
    import native_columns as C
    import moving_symmetry as MS
    P.require(1<=len(captures)<=6,'invalid partial basis size')
    active=list(range(len(captures)));clique=list(range(6))
    prepared={c:dict(v0=arb_mat(6,1),T=arb_mat(6,4)) for c in clique}
    bounds={c:dict(epsilon=arb(0)) for c in clique}
    for c,(tube,error) in enumerate(captures):
        P.require(error.is_finite() and error>=0,'invalid capture radius')
        prepared[c]=tube;bounds[c]['epsilon']=error
    q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+
              [[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
    lift=arb_mat([[model['U'][i,k] for k in range(4)] for i in range(36)]+
                [[prepared[clique[c]]['T'][r,k] for k in range(4)] for r in range(6) for c in range(6)])
    angles=MS.LMAT*q;f=arb_mat(96,1);zs=[]
    for t,(re,im,den,ell) in enumerate(MS.TERMS):
        z=acb(0,angles[t,0]).exp()/den;zs.append(z);f[re,0]+=z.real
        if im is not None:f[im,0]+=z.imag
    selected=list(range(30))+[30+k for k,(a,b) in enumerate(C.PAIRS) if a in active and b in active]+[45+k for k,(a,b) in enumerate(C.PAIRS) if a in active and b in active]+[60+6*a+b for a in range(6) for b in active]
    j=MS.jacobian(q)
    for i in range(96):
        if i not in selected:
            f[i,0]=0
            for k in range(72):j[i,k]=0
    jh=arb_mat([[j[i,k] for k in range(36)] for i in range(96)])
    jh2=jh*model['H2'];jhx=jh*model['X'];jl=j*lift
    eps=[bounds[c]['epsilon'] for c in clique];r=model['r'];tau=model['tau']
    ne=C.norm(eps);nh=C.Z.spectral(model['H2'])*r*r/2+C.Z.spectral(model['X'])*tau
    p6=C.project6();pk=arb_mat([[p6[a,b] if c==d else 0 for b in range(6) for d in range(6)] for a in range(6) for c in range(6)])
    jk=arb_mat([[j[i,36+k] for k in range(36)] for i in range(96)])*pk
    if direction is None:
        jkn=MS.numeric(jk);columns=[MS.numeric(jl)*float(r),MS.numeric(jhx)*float(tau)]
        for c in range(6):columns.append(jkn[:,c::6]*float(eps[c]))
        proposal=np.concatenate(columns,axis=1);gram=proposal@proposal.T;fn=MS.numeric(f)[:,0]
        directions=[]
        for regularizer in (1e-6,1e-4,1e-2):
            yy=np.zeros(96)
            yy[selected]=np.linalg.solve(gram[np.ix_(selected,selected)]+regularizer*np.eye(len(selected)),fn[selected])
            scale=np.max(np.abs(yy))
            if np.isfinite(yy).all() and scale:directions.append(yy/scale)
    else:
        values=P.hex_array(direction,(96,))
        P.require(all(values[i]==0 for i in range(96) if i not in selected),
                  'direction uses an unselected column')
        directions=[values]
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
    for yy in directions:
        y=C.Z.mat(yy[None,:]);constant=abs((y*f)[0,0])
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
            return dict(status='EXCLUDED',route='partial-basis scalar support',lhs=str(constant),rhs=str(rhs),
                        direction_hex=[float(v).hex() for v in yy])
    return None


def exclude(model,tubes,order,proposal=None,pair_cache=None,scalar_cache=None,
            node_cap=100000,scalar_cap=600):
    """Visit every root choice, pruning only replayed pair or scalar exclusions."""
    P.require(1<=len(order)<=6 and len(set(order))==len(order) and
              all(type(c) is int and c in tubes for c in order),'invalid column order')
    if pair_cache is None:pair_cache={}
    if scalar_cache is None:scalar_cache={}
    supplied={};used={};nodes=0;attempts=0
    if proposal is not None:
        P.require(set(proposal)=={'order','scalars'} and proposal['order']==order,'joint order changed')
        for item in proposal['scalars']:
            P.require(set(item)=={'roots','direction'},'invalid scalar witness')
            roots=item['roots']
            P.require(isinstance(roots,list) and len(roots) in (3,6) and
                all(isinstance(x,list) and len(x)==2 and all(type(v) is int for v in x) for x in roots),
                'invalid root tuple')
            key=tuple(tuple(x) for x in roots)
            P.require(key==tuple(sorted(key)) and len({c for c,i in key})==len(key) and
                all(c in order and i in tubes[c] for c,i in key) and key not in supplied,
                'foreign or duplicate scalar witness')
            supplied[key]=item['direction']
    def pair_bad(a,i,b,j):
        key=(a,i,b,j) if a<b else (b,j,a,i)
        if key not in pair_cache:
            if len(pair_cache)>200000:pair_cache.clear()
            pair_cache[key]=P.pair_excluded({0:tubes[a][i]},{0:tubes[b][j]})
        return pair_cache[key]
    def visit(chosen):
        nonlocal nodes,attempts
        nodes+=1
        if nodes>node_cap:raise ArithmeticError('joint graph budget exhausted')
        if len(chosen) in (3,6):
            key=tuple(sorted(chosen))
            if proposal is None:
                if key not in scalar_cache:
                    attempts+=1
                    if attempts>scalar_cap:raise ArithmeticError('joint scalar budget exhausted')
                    try:scalar_cache[key]=scalar_support(model,[tubes[c][i] for c,i in key])
                    except ArithmeticError:scalar_cache[key]=None
                result=scalar_cache[key]
                if result is not None:
                    used[key]=result['direction_hex'];return
            elif key in supplied:
                replay_key=(key,tuple(supplied[key]))
                if replay_key not in scalar_cache:
                    scalar_cache[replay_key]=scalar_support(model,[tubes[c][i] for c,i in key],supplied[key])
                result=scalar_cache[replay_key]
                P.require(result is not None,'scalar support does not exclude this root tuple')
                used[key]=supplied[key];return
        if len(chosen)==len(order):raise ArithmeticError('captured combination remains')
        c=order[len(chosen)]
        for i in sorted(tubes[c]):
            if not any(pair_bad(c,i,a,j) for a,j in chosen):visit(chosen+[(c,i)])
    visit([])
    if proposal is not None:P.require(set(used)==set(supplied),'unused scalar witness')
    return dict(order=order,scalars=[dict(roots=[list(x) for x in key],direction=value)
                                   for key,value in sorted(used.items())])
