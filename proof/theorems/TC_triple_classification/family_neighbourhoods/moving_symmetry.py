"""Force a genuine balanced order-three symmetry on a correlated native tube.

Reference points need not solve the triple equations. Permutations and
windings are proposals; exact group identities and Arb injectivity decide.
"""
import itertools
import numpy as np
from scipy.optimize import linear_sum_assignment
from flint import arb,arb_mat,fmpq,fmpq_mat,acb
import native_columns as C


def layout():
    terms=[]
    for block in range(2):
        for pair,(s,t) in enumerate(C.PAIRS):
            for r in range(6):
                ell=[0]*72;ell[36*block+6*r+t]=1;ell[36*block+6*r+s]=-1
                terms.append((30*block+pair,30*block+15+pair,1,ell))
    for s,t in itertools.product(range(6),repeat=2):
        for r,q in C.PAIRS:
            ell=[0]*72
            for idx,sign in ((36+6*r+t,1),(6*r+s,-1),(36+6*q+t,-1),(6*q+s,1)):ell[idx]+=sign
            terms.append((60+6*s+t,None,3,ell))
    return terms


TERMS=layout()
LMAT=arb_mat([t[3] for t in TERMS])


def numeric(a):return np.array([[float(a[i,j].mid()) for j in range(a.ncols())] for i in range(a.nrows())])


def cycle_positions(perm):
    if sorted(perm)!=list(range(6)):raise ArithmeticError('invalid permutation')
    result=[None]*6
    for i in range(6):
        if result[i] is not None:continue
        j=i;cycle=[]
        while j not in cycle:
            cycle.append(j);j=perm[j]
        if j!=i or len(cycle)!=3:raise ArithmeticError('two 3-cycles required')
        for k,j in enumerate(cycle):result[j]=k
    return result


def balanced_labels():
    return [v for v in itertools.product(range(3),repeat=6)
            if v[0]==0 and all(v.count(i)==2 for i in range(3))
            and v<tuple((-x)%3 for x in v)]


def monomial(a):
    rows,cols=linear_sum_assignment(-abs(a))
    perm=cols.tolist()
    score=np.linalg.norm(a-np.array([[a[i,j] if j==perm[i] else 0 for j in range(6)] for i in range(6)]))
    return perm,float(score)


def proposed_actions(q):
    h=np.exp(1j*q[:36].reshape(6,6))/np.sqrt(6)
    k=np.exp(1j*q[36:].reshape(6,6))/np.sqrt(6)
    bases=[np.eye(6),h,k];out=[]
    for anchor in range(3):
        for labels in balanced_labels():
            u=(bases[anchor]*np.exp(2j*np.pi*np.array(labels)/3))@bases[anchor].conj().T
            representations=[b.conj().T@u@b for b in bases]
            perms=[];score=0
            for i,a in enumerate(representations):
                p,err=monomial(a);score+=err
                perms.append(list(range(6)) if i==anchor else p)
            # U H M_H^{-1}: both row permutations of U and M_H are used.
            # If M has row permutation p, M^{-1} has column permutation p.
            try:
                for i in range(3):
                    if i!=anchor:cycle_positions(perms[i])
            except ArithmeticError:continue
            out.append(dict(anchor=anchor,labels=labels,R=perms[0],S=perms[1],T=perms[2],
                            score=score,representations=representations))
    return sorted(out,key=lambda a:a['score'])


def group(action,rational=False):
    rr,ss,tt=action['R'],action['S'],action['T']
    anchor=action['anchor'];labels=action['labels']
    if sorted(labels)!=[0,0,1,1,2,2]:raise ArithmeticError('unbalanced spectrum')
    for i,p in enumerate((rr,ss,tt)):
        if i==anchor:
            if p!=list(range(6)):raise ArithmeticError('anchor must be fixed')
        else:cycle_positions(p)
    perm=[36*b+6*rr[r]+(ss if b==0 else tt)[c] for b in range(2) for r in range(6) for c in range(6)]
    p=fmpq_mat([[int(j==perm[i]) for j in range(72)] for i in range(72)])
    variables=list(itertools.product(range(2),range(6),range(6)))
    w=fmpq_mat([[(fmpq(int(r==s))-fmpq(1,6))*(fmpq(int(b==d and c==j))-fmpq(1,12))
                 for d,s,j in variables] for b,r,c in variables])
    ident=fmpq_mat([[int(i==j) for j in range(72)] for i in range(72)])
    average=(ident+p+p*p)/3;moving=(ident-average)*w
    if p*p*p!=ident or p*w!=w*p or w*w!=w or w.transpose()!=w:
        raise ArithmeticError('group/gauge identities failed')
    if moving*moving!=moving or moving.transpose()!=moving or moving.rank()!=40:
        raise ArithmeticError('moving projector identity failed')
    base=[0]*72
    if anchor==0:
        for b,pp in enumerate((ss,tt)):
            pos=cycle_positions(pp)
            for r,c in itertools.product(range(6),repeat=2):base[36*b+6*r+c]=-labels[r]*pos[c]
    else:
        pos=cycle_positions(rr);b=anchor-1
        for r,c in itertools.product(range(6),repeat=2):base[36*b+6*r+c]=pos[r]*labels[c]
    return ((p,w,average,moving) if rational else tuple(arb_mat(a) for a in (p,w,average,moving))),arb_mat([[2*arb.pi()*v/3] for v in base])


def proposed_windings(q,base,action):
    """Remove proposed monomial phases for unwrapping only; they are gauges."""
    reps=action['representations'];anchor=action['anchor']
    phases=[]
    for b,perm in enumerate((action['R'],action['S'],action['T'])):
        angles=np.zeros(6)
        if b!=anchor:
            done=set()
            for i in range(6):
                if i in done:continue
                j=i
                for _ in range(3):
                    done.add(j);nxt=perm[j]
                    if nxt!=i:angles[nxt]=angles[j]-np.angle(reps[b][j,nxt])
                    j=nxt
        phases.append(angles)
    gauged=q.copy()
    for b in range(2):
        gauged[36*b:36*b+36]+=(-phases[0][:,None]+phases[b+1][None,:]).ravel()
    delta=gauged-base
    rr,ss,tt=action['R'],action['S'],action['T']
    perm=[36*b+6*rr[r]+(ss if b==0 else tt)[c] for b in range(2) for r in range(6) for c in range(6)]
    wind=np.zeros(72,dtype=int);done=set()
    for i in range(72):
        if i in done:continue
        j=i
        for _ in range(3):
            done.add(j);wind[j]=round((delta[i]-delta[j])/(2*np.pi));j=perm[j]
    return wind.tolist()


def jacobian(phase):
    weights=arb_mat(96,len(TERMS))
    angles=LMAT*phase
    for t,(re,im,den,_) in enumerate(TERMS):
        z=acb(0,angles[t,0]).exp()/den
        weights[re,t]=-z.imag
        if im is not None:weights[im,t]=z.real
    return weights*LMAT


def equation_moving_projector(action):
    """Exact Q(sqrt(3)) covariance of the 96 residual equations."""
    ya=fmpq_mat(96,96);yb=fmpq_mat(96,96)
    for block,perm in enumerate((action['S'],action['T'])):
        for k,(s,t) in enumerate(C.PAIRS):
            u,v=perm[s],perm[t];sign=1 if u<v else -1
            source=C.PAIRS.index(tuple(sorted((u,v))))
            angle=(action['labels'][s]-action['labels'][t])%3 if action['anchor']==block+1 else 0
            co=fmpq(1) if angle==0 else fmpq(-1,2)
            si=fmpq(0) if angle==0 else fmpq(1 if angle==1 else -1,2)
            re=30*block+k;im=re+15;sr=30*block+source;ii=sr+15
            ya[re,sr]=co;ya[im,ii]=sign*co
            yb[re,ii]=-sign*si;yb[im,sr]=si
    for s,t in itertools.product(range(6),repeat=2):
        ya[60+6*s+t,60+6*action['S'][s]+action['T'][t]]=1
    def multiply(a,b):return (a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
    identity=fmpq_mat([[int(i==j) for j in range(96)] for i in range(96)])
    zero=fmpq_mat(96,96);y=(ya,yb);y2=multiply(y,y)
    if multiply(y2,y)!=(identity,zero) or multiply((ya.transpose(),yb.transpose()),y)!=(identity,zero):
        raise ArithmeticError('equation action identities failed')
    qa=(2*identity-ya-y2[0])/3;qb=(-yb-y2[1])/3
    if multiply((qa,qb),(qa,qb))!=(qa,qb) or qa.transpose()!=qa or qb.transpose()!=qb:
        raise ArithmeticError('equation moving projector failed')
    return arb_mat(qa)+arb_mat(qb)*arb(3).sqrt(),arb_mat(ya)+arb_mat(yb)*arb(3).sqrt()


def prove(model,prepared,bounds,clique,action,averaged=True,mixed_weight=1):
    (pq,wq,gq,eq),base=group(action,rational=True)
    p,w,average,e=map(arb_mat,(pq,wq,gq,eq))
    q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+[[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
    wind=proposed_windings(numeric(q)[:,0],numeric(base)[:,0],action)
    q+=arb_mat([[2*arb.pi()*j] for j in wind])
    m=w*(q-base);ref=base+average*m;m=m-average*m
    carrier=arb_mat([[model['U'][i,j] for j in range(4)] for i in range(36)]+
                    [[prepared[clique[c]]['T'][r,j] for j in range(4)] for r in range(6) for c in range(6)])
    carrier=w*carrier
    j=jacobian(ref)
    weights=np.r_[np.ones(60),np.full(36,mixed_weight)]
    pre=e*C.Z.mat(np.linalg.pinv(weights[:,None]*numeric(j*e))*weights[None,:])
    if averaged:pre=pre*equation_moving_projector(action)[0]
    defect=C.Z.spectral(e-pre*j*e)
    if not defect<arb(1)/10:raise ArithmeticError('moving inverse defect')
    angles=LMAT*ref;linear=arb_mat(72,len(TERMS));amplitudes=arb_mat(72,len(TERMS))
    for t,(re,im,den,_) in enumerate(TERMS):
        z=acb(0,angles[t,0]).exp()/den
        for row in range(72):
            coeff=acb(pre[row,re],-pre[row,im] if im is not None else 0)*z
            linear[row,t]=-coeff.real;amplitudes[row,t]=abs(coeff).upper()
    le=LMAT*e
    absle=arb_mat([[abs(le[i,j]).upper() for j in range(72)] for i in range(len(TERMS))])
    # The first derivative in the unknown error keeps its signed Hessian
    # coefficients. Taking absolute Fourier coefficients before summation
    # destroys cancellations and is far too loose even for small tubes.
    hessian=[]
    identity=fmpq_mat([[int(i==j) for j in range(72)] for i in range(72)])
    first_projector=((identity+gq)/2)*wq if averaged else wq
    first_frequencies=arb_mat(fmpq_mat([term[3] for term in TERMS])*first_projector)
    for k in range(72):
        ids=[t for t in range(len(TERMS)) if not first_frequencies[t,k].is_zero()]
        weighted=arb_mat([[linear[i,t]*first_frequencies[t,k] for t in ids] for i in range(72)])
        restricted=arb_mat([[le[t,j] for j in range(72)] for t in ids])
        hessian.append(weighted*restricted)
    hflat=arb_mat([[hessian[k][i,j] for k in range(72) for j in range(72)] for i in range(72)])
    hessian_norm=C.Z.spectral(hflat)
    hessian_h=C.Z.spectral(arb_mat([[hessian[k][i,j] for k in range(36) for j in range(72)] for i in range(72)]))
    hessian_k=C.Z.spectral(arb_mat([[hessian[k][i,j] for k in range(36,72) for j in range(72)] for i in range(72)]))
    r=model['r'];estimates=[];remainders=[];signed=[]
    phase_error=C.Z.spectral(model['H2'])*r*r/2+C.Z.spectral(model['X'])*model['tau']
    k_error=C.norm([bounds[c]['epsilon'] for c in clique])
    hessian_error=min((hessian_h*phase_error+hessian_k*k_error).upper(),
        (hessian_norm*(phase_error**2+k_error**2).sqrt()).upper())

    for transform in ((average,C.Z.eye(72)) if averaged else (C.Z.eye(72),p)):
        shift=LMAT*transform*m;dc=LMAT*transform*carrier
        lw=LMAT*transform*w
        lh=arb_mat([[lw[i,j] for j in range(36)] for i in range(len(TERMS))])
        hh=lh*model['H2'];hx=lh*model['X']
        rem=[]
        for i in range(len(TERMS)):
            # Frobenius is enough for each scalar quadratic remainder.
            tail=C.rownorm(hh,i)*r*r/2+C.rownorm(hx,i)*model['tau']
            for c in range(6):
                ls=[lw[i,36+6*a+c] for a in range(6)];mean=sum(ls,arb(0))/6
                tail+=C.norm([v-mean for v in ls])*bounds[clique[c]]['epsilon']
            delta=abs(shift[i,0])+C.rownorm(dc,i)*r+tail
            rem.append(delta)
        constant=arb_mat([[linear[i,t]*shift[t,0] for t in range(len(TERMS))] for i in range(72)])*le
        matrices=[arb_mat([[linear[i,t]*dc[t,k] for t in range(len(TERMS))] for i in range(72)])*le for k in range(4)]
        flat=arb_mat([[matrices[k][i,j] for k in range(4) for j in range(72)] for i in range(72)])
        estimates.append(C.Z.spectral(constant)+C.Z.spectral(flat)*r)
        signed.append((constant,flat))
        remainders.append(rem)
    # A segment between the two endpoints has each Fourier increment
    # bounded by the maximum of the two endpoint bounds, term by term.
    # The signed linear part interpolates between the endpoint matrices.
    if averaged:
        rem=[(remainders[0][t]**2+remainders[0][t]*remainders[1][t]+remainders[1][t]**2)/6 for t in range(len(TERMS))]
    else:
        rem=[arb(max(C.Z.upper(v[t]**2/2) for v in remainders)) for t in range(len(TERMS))]
    error=arb_mat([[amplitudes[i,t]*rem[t] for t in range(len(TERMS))] for i in range(72)])*absle
    remainder_norm=C.Z.spectral(error)
    linear_norm=(C.Z.spectral((signed[0][0]+signed[1][0])/2)+C.Z.spectral((signed[0][1]+signed[1][1])/2)*r
                 if averaged else arb(max(C.Z.upper(a) for a in estimates)))
    qbound=defect+linear_norm+hessian_error+remainder_norm
    if not qbound<1:raise ArithmeticError('moving contraction q='+str(qbound)+'; linear='+str(linear_norm)+'; Hessian error='+str(hessian_error)+'; remainder='+str(remainder_norm))
    return dict(status='CERTIFIED',kind='balanced order-three symmetry',q=str(qbound),
                method='averaged moving equation' if averaged else 'symmetry-pair segment',mixed_weight=mixed_weight,
                action={k:action[k] for k in ('anchor','labels','R','S','T')},windings=wind)


def classify(model,prepared,bounds,clique,attempts=3):
    q=np.r_[numeric(model['Q0'])[:,0],np.array([[float(prepared[clique[c]]['v0'][r,0].mid()) for c in range(6)] for r in range(6)]).ravel()]
    diagnostics=[]
    for action in proposed_actions(q)[:attempts]:
        try:return prove(model,prepared,bounds,clique,action)
        except (ArithmeticError,ZeroDivisionError) as error:diagnostics.append(dict(score=action['score'],reason=str(error)))
    return dict(status='NOT ESTABLISHED',diagnostics=diagnostics)
