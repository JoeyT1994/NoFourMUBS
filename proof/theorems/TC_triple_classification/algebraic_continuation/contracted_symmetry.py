"""Contract the signed symmetry Hessian with the actual H error carriers.

The prove routine retains the native exact group and interval argument.
Only its sufficient curvature-error bound is strengthened; frozen source
files and their certificates are unchanged.
"""
import numpy as np
from flint import arb,arb_mat,fmpq_mat,acb
from load_native import C,MS
from intervals import norm_upper

TERMS=MS.TERMS
LMAT=MS.LMAT
group=MS.group
numeric=MS.numeric
proposed_windings=MS.proposed_windings
jacobian=MS.jacobian
equation_moving_projector=MS.equation_moving_projector


def spectral(matrix):
    if all(x.is_zero() for x in matrix.entries()):return arb(0)
    try:return C.Z.spectral(matrix)
    except ArithmeticError:return norm_upper(matrix.entries())


def contracted_matrix(hessian,indices,carrier):
    """Flatten sum_k hessian[k] carrier[k,a], with columns (a,j)."""
    rows=hessian[0].nrows();cols=hessian[0].ncols()
    if carrier.nrows()!=len(indices):raise ValueError('carrier dimension mismatch')
    tensor=arb_mat([[hessian[k][i,j] for k in indices] for i in range(rows) for j in range(cols)])
    block=tensor*carrier
    return arb_mat([[block[cols*i+j,a] for a in range(carrier.ncols()) for j in range(cols)]
                    for i in range(rows)])


def contracted_error(hessian,model,bounds,clique):
    r=model['r'];p6=C.project6()
    h2=spectral(contracted_matrix(hessian,range(36),model['H2']))*r*r/2
    normal=spectral(contracted_matrix(hessian,range(36),model['X']))*model['tau']
    k_parts=[]
    for column,color in enumerate(clique):
        indices=[36+6*row+column for row in range(6)]
        k_parts.append(spectral(contracted_matrix(hessian,indices,p6))*bounds[color]['epsilon'])
    # The individual K balls and their direct-sum Euclidean ball are both
    # valid. The native expression below retains the latter as an option.
    k_tensor=contracted_matrix(hessian,range(36,72),C.Z.eye(36))
    k_global=spectral(k_tensor)*norm_upper([bounds[c]['epsilon'] for c in clique])
    k_bound=min(sum(k_parts,arb(0)).upper(),k_global.upper())
    result=h2+normal+k_bound
    return result,dict(hadamard_quadratic=str(h2),hadamard_normal=str(normal),
                       completing_basis=str(k_bound),total=str(result))


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
    curvature_details=None
    if not qbound<1:
        candidate,curvature_details=contracted_error(hessian,model,bounds,clique)
        hessian_error=min(hessian_error.upper(),candidate.upper())
        qbound=defect+linear_norm+hessian_error+remainder_norm
    if not qbound<1:raise ArithmeticError('moving contraction q='+str(qbound)+'; linear='+str(linear_norm)+'; Hessian error='+str(hessian_error)+'; remainder='+str(remainder_norm))
    return dict(status='CERTIFIED',kind='balanced order-three symmetry',q=str(qbound),
                method='averaged moving equation' if averaged else 'symmetry-pair segment',mixed_weight=mixed_weight,
                contracted_curvature=curvature_details,
                action={k:action[k] for k in ('anchor','labels','R','S','T')},windings=wind)

