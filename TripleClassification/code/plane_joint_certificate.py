"""Certify captured column combinations using their shared H parameter.

Numerical linear solves propose scalar directions. Replay uses stored binary64
coefficients and verifies a strict Arb bound. Unselected K columns have zero
weights in every equation, so their placeholder coordinates impose no condition.
"""
import math
import numpy as np
from flint import arb,arb_mat,acb
import plane_column_certificate as P


def quadratic_penalty(a,W,r,shift=None):
    """Verify a completion-of-squares lower bound on the closed radius-r ball."""
    n=W.nrows()
    if n<1 or W.ncols()!=n or a.nrows()!=n or a.ncols()!=1 or not r.is_finite() or not r>=0:
        raise ValueError('invalid common-H quadratic')
    W=(W+W.transpose())/2
    if shift is None:
        M=np.array([[float(W[i,j].mid()) for j in range(n)] for i in range(n)])
        av=np.array([float(a[i,0].mid()) for i in range(n)])
        if not np.isfinite(M).all() or not np.isfinite(av).all():return None
        try:values,vectors=np.linalg.eigh(M)
        except np.linalg.LinAlgError:return None
        b=vectors.T@av;rr=float(r.mid())
        if not np.isfinite(values).all() or not np.isfinite(b).all() or not math.isfinite(rr):return None
        gap=max(1e-30,max(abs(values),default=0.)*1e-10)
        low=max(0.,-float(values[0])/2)+gap
        def norm2(lam):return float(np.sum((b/(values+2*lam))**2))
        if norm2(low)>rr*rr:
            high=max(low*2,1.,float(np.linalg.norm(av))/max(rr,1e-100))
            for _ in range(100):
                if norm2(high)<=rr*rr:break
                high*=2
            else:return None
            for _ in range(64):
                middle=(low+high)/2
                if norm2(middle)>rr*rr:low=middle
                else:high=middle
            shift=math.nextafter(high+gap,math.inf)
        else:shift=math.nextafter(low,math.inf)
    lam=arb(shift)
    if not lam.is_finite() or not lam>=0:raise ValueError('invalid nonnegative shift')
    S=W+arb_mat([[2*lam if i==j else 0 for j in range(n)] for i in range(n)])
    # Positive pivots certify positive definiteness for every symmetric matrix
    # represented by these intervals; no floating eigenvalue is trusted.
    L=[[arb(0) for _ in range(n)] for _ in range(n)];pivots=[]
    for i in range(n):
        pivot=S[i,i]-sum((L[i][k]**2*pivots[k] for k in range(i)),arb(0))
        if not pivot>0:return None
        pivots.append(pivot)
        for j in range(i+1,n):L[j][i]=(S[j,i]-sum((L[j][k]*L[i][k]*pivots[k] for k in range(i)),arb(0)))/pivot
    try:bound=((a.transpose()*S.inv()*a)[0,0]/2+lam*r*r).upper()
    except (ValueError,ZeroDivisionError):return None
    if not bound.is_finite():return None
    return bound


def support_directions(blocks,constant,selected):
    """Propose dual directions; every accepted direction is checked in Arb."""
    f=constant[selected];blocks=[a[selected] for a in blocks if np.any(a[selected])]
    if not np.any(f) or not blocks:return []
    grams=[a@a.T for a in blocks];scale=max(np.trace(g) for g in grams)
    out=[]
    for regularizer in (1e-8,1e-5):
        weights=np.ones(len(blocks));best=None
        for _ in range(12):
            gram=sum((g/max(w,1e-12) for g,w in zip(grams,weights)),np.zeros((len(f),len(f))))
            v=np.linalg.solve(gram+max(scale,1e-12)*regularizer*np.eye(len(f)),f)
            dot=v@f
            if not np.isfinite(v).all() or dot<=0:break
            v=v/dot;weights=np.array([np.linalg.norm(a.T@v) for a in blocks])
            score=sum(weights)
            if best is None or score<best[0]:best=(score,v)
        if best:
            y=np.zeros(len(constant));y[selected]=best[1];y/=np.max(abs(y));out.append(y)
    return out


def coupled_quadratic_penalty(g,Q,groups,radii):
    """Verify a quadratic lower bound on a product of closed Euclidean balls."""
    n=Q.nrows()
    if Q.ncols()!=n or g.nrows()!=n or g.ncols()!=1 or sorted(i for group in groups for i in group)!=list(range(n)):raise ValueError('invalid quadratic partition')
    if len(groups)!=len(radii) or any(not r.is_finite() or not r>=0 for r in radii):raise ValueError('invalid radii')
    active=[(group,r.upper()) for group,r in zip(groups,radii) if r.upper()!=0];indices=[i for group,r in active for i in group]
    if not indices:return arb(0)
    scales=[r for group,r in active for i in group];ranges=[];offset=0
    for group,r in active:ranges.append(list(range(offset,offset+len(group))));offset+=len(group)
    W=arb_mat([[(Q[i,j]+Q[j,i])/2*scales[a]*scales[b] for b,j in enumerate(indices)] for a,i in enumerate(indices)])
    a=arb_mat([[g[i,0]*scales[k]] for k,i in enumerate(indices)])
    M=np.array([[float(W[i,j].mid()) for j in range(len(indices))] for i in range(len(indices))]);v=np.array([float(x.mid()) for x in a.entries()]);n=len(v)
    if not np.isfinite(M).all() or not np.isfinite(v).all():return None
    eigen=np.linalg.eigvalsh(M);gap=max(1e-25,float(max(abs(eigen)))*1e-9);shifts=np.full(len(ranges),max(gap,-float(eigen[0])/2+gap))
    def matrix():
        S=M.copy()
        for group,lam in zip(ranges,shifts):S[group,group]+=2*lam
        return S
    for _ in range(8):
        for k,group in enumerate(ranges):
            other=[i for i in range(n) if i not in group];S=matrix();A=M[np.ix_(group,group)];b=v[group]
            if other:
                R=S[np.ix_(other,other)];B=S[np.ix_(group,other)];vals,U=np.linalg.eigh(R)
                if min(vals)<=0:return None
                inv=(U/vals)@U.T;A=A-B@inv@B.T;b=b-B@inv@v[other]
            vals,U=np.linalg.eigh((A+A.T)/2);b=U.T@b;low=max(0.,-float(vals[0])/2)+gap
            norm2=lambda lam:float(np.sum((b/(vals+2*lam))**2))
            if norm2(low)>1:
                high=max(low*2,1.,float(np.linalg.norm(b)))
                for _ in range(100):
                    if norm2(high)<=1:break
                    high*=2
                else:return None
                for _ in range(55):
                    mid=(low+high)/2
                    if norm2(mid)>1:low=mid
                    else:high=mid
                low=high
            shifts[k]=math.nextafter(low+gap,math.inf)
    lam=[arb(float(x)) for x in shifts]
    if any(not x.is_finite() or not x>=0 for x in lam):return None
    S=arb_mat(W)
    for group,t in zip(ranges,lam):
        for i in group:S[i,i]+=2*t
    L=[[arb(0) for _ in range(n)] for _ in range(n)];d=[]
    for i in range(n):
        pivot=S[i,i]-sum((L[i][k]**2*d[k] for k in range(i)),arb(0))
        if not pivot>0:return None
        d.append(pivot)
        for j in range(i+1,n):L[j][i]=(S[j,i]-sum((L[j][k]*L[i][k]*d[k] for k in range(i)),arb(0)))/pivot
    try:out=((a.transpose()*S.inv()*a)[0,0]/2+sum(lam,arb(0))).upper()
    except (ValueError,ZeroDivisionError):return None
    return out if out.is_finite() else None


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
    uc=[p6*arb_mat([[model['U'][6*a+c,k] for k in range(4)] for a in range(6)]) for c in range(6)]
    nc=[]
    for c in range(6):
        hc=p6*arb_mat([[model['H2'][6*a+c,k] for k in range(16)] for a in range(6)])
        xc=p6*arb_mat([[model['X'][6*a+c,k] for k in range(model['X'].ncols())] for a in range(6)])
        nc.append(C.Z.spectral(hc)*r*r/2+C.Z.spectral(xc)*tau)
    hd=[C.Z.spectral(uc[b]-uc[a])*r+nc[a]+nc[b] for a,b in C.PAIRS]
    kd=[C.Z.spectral(prepared[clique[b]]['T']-prepared[clique[a]]['T'])*r+eps[a]+eps[b] for a,b in C.PAIRS]
    md=[[C.Z.spectral(prepared[clique[b]]['T']-uc[a])*r+eps[b]+nc[a] for b in range(6)] for a in range(6)]
    for direction_number,yy in enumerate(directions):
        y=C.Z.mat(yy[None,:]);constant=abs((y*f)[0,0])
        coefficients=[]
        for t,(re,im,den,ell) in enumerate(MS.TERMS):
            coefficients.append(-(y[0,re]*zs[t].real+(y[0,im]*zs[t].imag if im is not None else 0)))
        hessian=MS.LMAT.transpose()*arb_mat([[coefficients[t]*MS.LMAT[t,k] for k in range(72)] for t in range(len(MS.TERMS))])
        hh=y*jh2;ww=lift.transpose()*hessian*lift+arb_mat([[hh[0,4*a+b] for b in range(4)] for a in range(4)])
        hk=arb_mat([[hessian[i,36+k] for k in range(36)] for i in range(72)])*pk
        kk=pk*arb_mat([[hessian[36+i,36+k] for k in range(36)] for i in range(36)])*pk
        # Unselected error slots are zero in this partial scalar function.
        keep=[6*a+c for a in range(6) for c in active]
        hk=arb_mat([[hk[i,k] for k in keep] for i in range(72)])
        kk=arb_mat([[kk[i,k] for k in keep] for i in keep])
        hH=arb_mat([[hessian[i,k] for k in range(36)] for i in range(72)])
        kH=pk*arb_mat([[hessian[36+i,k] for k in range(36)] for i in range(36)])
        kH=arb_mat([[kH[i,k] for k in range(36)] for i in keep])
        HH=arb_mat([[hessian[i,k] for k in range(36)] for i in range(36)])
        # Bound the signed common-H polynomial as a whole. Its linear and
        # quadratic terms use the same four coordinates, so they need not
        # attain their separate worst cases at the same point.
        common=(C.rownorm(y*jl,0)*r+C.Z.spectral(ww)*r*r/2).upper()
        sign=1 if (y*f)[0,0]>0 else -1 if (y*f)[0,0]<0 else 0
        refined=quadratic_penalty((y*jl).transpose()*sign,ww*sign,r) if sign else None
        if refined is not None:common=min(common,refined)
        rhs=common+C.rownorm(y*jhx,0)*tau
        yjk=y*jk
        rhs+=sum((C.norm([yjk[0,6*a+c] for a in range(6)])*eps[c] for c in range(6)),arb(0))
        rhs+=C.Z.spectral(lift.transpose()*hk)*r*ne+C.Z.spectral(kk)*ne*ne/2
        rhs+=C.Z.spectral(lift.transpose()*hH)*r*nh+C.Z.spectral(kH)*ne*nh+C.Z.spectral(HH)*nh*nh/2
        for k in range(15):
            rhs+=(y[0,k]**2+y[0,15+k]**2).sqrt()*hd[k]**3/6
            rhs+=(y[0,30+k]**2+y[0,45+k]**2).sqrt()*kd[k]**3/6
        rhs+=sum((abs(y[0,60+6*a+b])*arb(2).sqrt()/3*md[a][b]**3 for a in range(6) for b in range(6)),arb(0))
        if not constant>rhs and sign:
            m=len(active);nk=len(keep);n=4+nk+36
            he=lift.transpose()*hk;hn=lift.transpose()*hH
            def component(i,j):
                if i<4 and j<4:return ww[i,j]
                if i<4 and j<4+nk:return he[i,j-4]
                if i<4:return hn[i,j-4-nk]
                if j<4:return component(j,i)
                if i<4+nk and j<4+nk:return kk[i-4,j-4]
                if i<4+nk:return kH[i-4,j-4-nk]
                if j<4+nk:return component(j,i)
                return HH[i-4-nk,j-4-nk]
            quadratic=arb_mat([[sign*component(i,j) for j in range(n)] for i in range(n)])
            yh=y*jl;ye=y*jk
            linear=arb_mat([[sign*yh[0,i]] for i in range(4)]+[[sign*ye[0,i]] for i in keep]+[[0] for _ in range(36)])
            groups=[list(range(4))]+[[4+a*m+c for a in range(6)] for c in active]+[list(range(4+nk,n))]
            coupled=coupled_quadratic_penalty(linear,quadratic,groups,[r]+[eps[c] for c in active]+[nh])
            if coupled is not None:
                rest=C.rownorm(y*jhx,0)*tau
                for k in range(15):
                    rest+=(y[0,k]**2+y[0,15+k]**2).sqrt()*hd[k]**3/6
                    rest+=(y[0,30+k]**2+y[0,45+k]**2).sqrt()*kd[k]**3/6
                rest+=sum((abs(y[0,60+6*a+b])*arb(2).sqrt()/3*md[a][b]**3 for a in range(6) for b in range(6)),arb(0))
                rhs=min(rhs.upper(),(coupled+rest).upper())
        if constant>rhs:
            return dict(status='EXCLUDED',route='partial-basis scalar support',lhs=str(constant),rhs=str(rhs),
                        direction_hex=[float(v).hex() for v in yy])
        if direction is None and direction_number==2:
            directions.extend(support_directions(columns,fn,selected))
    return None


def pooled_capture(model,captures):
    """Enclose a union, retaining a singleton's original common-H carrier."""
    import native_columns as C
    P.require(bool(captures),'empty union')
    if len(captures)==1:return captures[0]
    center=C.project6()*arb_mat([[sum((p['v0'][i,0] for p,e in captures),arb(0))/len(captures)] for i in range(6)])
    error=arb(0)
    for p,e in captures:
        motion=arb(0) if all(x==0 for x in p['T'].entries()) else C.Z.spectral(p['T'])*model['r']
        error=max(error,e+motion+P.A.norm([p['v0'][i,0]-center[i,0] for i in range(6)])).upper()
    return dict(model=model,v0=center,T=arb_mat(6,4),Tnorm=arb(0)),error


def known_support(model,captures,action=None):
    """Recompute the frozen symmetry proof; action and numerical inverses are proposals."""
    import moving_symmetry as MS
    P.require(len(captures)==6,'symmetry requires six columns')
    prepared={i:p for i,(p,e) in enumerate(captures)}
    bounds={i:dict(epsilon=e) for i,(p,e) in enumerate(captures)}
    if action is None:
        result=MS.classify(model,prepared,bounds,list(range(6)),attempts=1)
        return result if result['status']=='CERTIFIED' else None
    P.require(set(action)=={'anchor','labels','R','S','T'} and type(action['anchor']) is int and
              0<=action['anchor']<3 and len(action['labels'])==6 and
              all(type(x) is int for x in action['labels']) and sorted(action['labels'])==[0,0,1,1,2,2] and
              all(len(action[k])==6 and all(type(x) is int for x in action[k]) and
                  sorted(action[k])==list(range(6)) for k in ('R','S','T')),'invalid symmetry action')
    # These floating matrices propose windings only. MS.prove checks the exact
    # group identities, the inverse defect and its strict Arb contraction bound.
    h=np.exp(1j*MS.numeric(model['Q0']).reshape(6,6))/np.sqrt(6)
    k=np.exp(1j*np.column_stack([MS.numeric(p['v0'])[:,0] for p,e in captures]))/np.sqrt(6)
    bases=[np.eye(6),h,k];anchor=action['anchor']
    u=(bases[anchor]*np.exp(2j*np.pi*np.array(action['labels'])/3))@bases[anchor].conj().T
    proposed=dict(action,representations=[b.conj().T@u@b for b in bases])
    return MS.prove(model,prepared,bounds,list(range(6)),proposed)


def exclude(model,tubes,order,proposal=None,pair_cache=None,scalar_cache=None,
            node_cap=100000,scalar_cap=600,allow_known=False,allow_singletons=False):
    """Account for every root choice by exclusion or optional known-type proofs."""
    P.require(1<=len(order)<=6 and len(set(order))==len(order) and
              all(type(c) is int and c in tubes for c in order),'invalid column order')
    if pair_cache is None:pair_cache={}
    if scalar_cache is None:scalar_cache={}
    supplied={};used={};known={};used_known={};nodes=0;attempts=0;unary_attempts=0
    directional=proposal is None or proposal.get('pair_bound')=='directional-v1'
    if proposal is not None:
        P.require({'order','scalars'}<=set(proposal)<={'order','scalars','known','pair_bound'} and
                  ('pair_bound' not in proposal or proposal['pair_bound']=='directional-v1') and
                  proposal['order']==order,'joint order changed')
        P.require(allow_known or not proposal.get('known'),'classification is not an empty-cell proof')
        for item in proposal.get('known',[]):
            P.require(set(item)=={'prefix','action'},'invalid known-branch witness')
            prefix=item['prefix']
            P.require(len(order)==6 and isinstance(prefix,list) and len(prefix) in (4,5,6) and
                all(isinstance(x,list) and len(x)==2 and all(type(v) is int for v in x) for x in prefix),
                'invalid known-branch prefix')
            key=tuple(tuple(x) for x in prefix)
            P.require([c for c,i in key]==order[:len(key)] and all(i in tubes[c] for c,i in key) and
                      key not in known,'foreign or duplicate known-branch witness')
            known[key]=item['action']
        for item in proposal['scalars']:
            P.require(set(item)=={'roots','direction'},'invalid scalar witness')
            roots=item['roots']
            P.require(isinstance(roots,list) and len(roots) in (1,2,3,4,5,6) and
                all(isinstance(x,list) and len(x)==2 and all(type(v) is int for v in x) for x in roots),
                'invalid root tuple')
            key=tuple(tuple(x) for x in roots)
            P.require(key==tuple(sorted(key)) and len({c for c,i in key})==len(key) and
                all(c in order and i in tubes[c] for c,i in key) and key not in supplied,
                'foreign or duplicate scalar witness')
            supplied[key]=item['direction']
    def pair_bad(a,i,b,j):
        key=(directional,)+((a,i,b,j) if a<b else (b,j,a,i))
        if key not in pair_cache:
            if len(pair_cache)>200000:pair_cache.clear()
            pair_cache[key]=P.pair_excluded({0:tubes[a][i]},{0:tubes[b][j]},directional=directional)
        return pair_cache[key]
    def unary_bad(c,i):
        nonlocal unary_attempts
        key=((c,i),)
        if proposal is None:
            if not allow_singletons:return False
            if key not in scalar_cache:
                if unary_attempts>=2000:return False
                unary_attempts+=1
                try:scalar_cache[key]=scalar_support(model,[tubes[c][i]])
                except ArithmeticError:scalar_cache[key]=None
            result=scalar_cache[key]
            if result is not None:used[key]=result['direction_hex'];return True
        elif key in supplied:
            replay_key=(key,tuple(supplied[key]))
            if replay_key not in scalar_cache:
                scalar_cache[replay_key]=scalar_support(model,[tubes[c][i]],supplied[key])
            P.require(scalar_cache[replay_key] is not None,'scalar support does not exclude this single root')
            used[key]=supplied[key];return True
        return False
    def visit(chosen):
        nonlocal nodes,attempts
        nodes+=1
        if nodes>node_cap:raise ArithmeticError('joint graph budget exhausted')
        prefix=tuple(chosen)
        if len(chosen) in (2,3,4,5,6):
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
        if allow_known and len(order)==6 and (prefix in known or (proposal is None and len(chosen) in (4,5,6))):
            fixed=dict(chosen);captures=[]
            for c in order:
                keys=[fixed[c]] if c in fixed else [i for i in sorted(tubes[c])
                    if not any(pair_bad(c,i,a,j) for a,j in chosen)]
                if not keys:break
                captures.append(pooled_capture(model,[tubes[c][i] for i in keys]))
            if len(captures)==6:
                try:result=known_support(model,captures,known.get(prefix))
                except (ArithmeticError,ZeroDivisionError,np.linalg.LinAlgError):result=None
                if result is not None:
                    used_known[prefix]=result['action'];return
            if proposal is not None:P.require(False,'known-branch symmetry was not certified')
        if len(chosen)==len(order):raise ArithmeticError('captured combination remains')
        c=order[len(chosen)]
        for i in sorted(tubes[c]):
            if not any(pair_bad(c,i,a,j) for a,j in chosen) and not unary_bad(c,i):visit(chosen+[(c,i)])
    visit([])
    if proposal is not None:
        P.require(set(used)==set(supplied),'unused scalar witness')
        P.require(set(used_known)==set(known),'unused known-branch witness')
    result=dict(order=order,scalars=[dict(roots=[list(x) for x in key],direction=value)
                                   for key,value in sorted(used.items())])
    if directional:result['pair_bound']='directional-v1'
    if used_known:result['known']=[dict(prefix=[list(x) for x in key],action=value)
                                 for key,value in sorted(used_known.items())]
    return result
