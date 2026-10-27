"""Quadratic implicit models of unbiased columns in the EXISTING seed w coordinates.

Acceptance uses Arb. The supplied H model is the existing certified whole-ball
model Q=Q0+U w+H2[w,w]/2+X z_H, ||z_H||<=tau, ||w||<=r.
Each accepted model is v=v0+T w+V2[w,w]/2+z, ||z||<=epsilon (radians).
"""
import itertools
import sys
from pathlib import Path

from flint import acb, arb, arb_mat

ROOT=Path(__file__).resolve().parents[4]
sys.path.insert(0,str(ROOT/'proof/seed_atlas/cert'))
import wholeball as Z

PAIRS=list(itertools.combinations(range(6),2))


def abs_matrix(a):
    return arb_mat([[abs(a[i,j]).upper() for j in range(a.ncols())] for i in range(a.nrows())])


def build(model,v0):
    """Prepare one root proposal; v0 contains five exact dyadic radians."""
    v=[arb(0)]+[arb(x) for x in v0]
    q0,u,h2,x=model['Q0'],model['U'],model['H2'],model['X']
    f=arb_mat(6,1);j=arb_mat(6,5);dw=arb_mat(6,4)
    terms=[]
    for row,c in enumerate(range(6)):
        terms.append([])
        for a,b in PAIRS:
            q=acb(0,v[a]-v[b]-q0[6*a+c,0]+q0[6*b+c,0]).exp()
            ell=[int(a==k)-int(b==k) for k in range(1,6)]
            hu=[u[6*a+c,k]-u[6*b+c,k] for k in range(4)]
            f[row,0]+=2*q.real
            for k in range(5): j[row,k]+=-2*q.imag*ell[k]
            for k in range(4): dw[row,k]+=2*q.imag*hu[k]
            terms[-1].append(dict(q=q,ell=ell,hu=hu,a=a,b=b,c=c))
    inv=(j.transpose()*j).solve(j.transpose())
    pre=inv.mid()
    # Exact row sums zero: ker(pre)=span(1), once pre*J is nonsingular.
    for k in range(5):
        pre[k,5]=-sum((pre[k,c] for c in range(5)),arb(0))
    t=-(pre*dw).mid()
    second=arb_mat(6,16)
    for row,rowterms in enumerate(terms):
        for term in rowterms:
            a,b,c=term['a'],term['b'],term['c']
            aa=[sum((arb(term['ell'][p])*t[p,k] for p in range(5)),arb(0))-term['hu'][k] for k in range(4)]
            term['linear']=aa
            for k in range(4):
                for l in range(4):
                    hh=h2[6*a+c,4*k+l]-h2[6*b+c,4*k+l]
                    second[row,4*k+l]+=-2*term['q'].real*aa[k]*aa[l]+2*term['q'].imag*hh
    v2=-(pre*second).mid()
    f1=dw+j*t
    f2=second+j*v2
    derivative_linear=arb_mat(6,20)
    for row,rowterms in enumerate(terms):
        for term in rowterms:
            a,b,c=term['a'],term['b'],term['c']
            term['quadratic']=arb_mat([[sum((arb(term['ell'][p])*v2[p,4*k+l] for p in range(5)),arb(0))
                                      -h2[6*a+c,4*k+l]+h2[6*b+c,4*k+l]
                                      for l in range(4)] for k in range(4)])
            term['anorm']=sum((z*z for z in term['linear']),arb(0)).sqrt().upper()
            term['bnorm']=Z.spectral(term['quadratic']).upper()
            term['hnorm']=sum(((x[6*a+c,k]-x[6*b+c,k])**2 for k in range(x.ncols())),arb(0)).sqrt().upper()
            for l in range(5):
                for k in range(4):
                    derivative_linear[row,4*l+k]+=-2*term['q'].real*term['ell'][l]*term['linear'][k]
    return dict(model=model,v0=v[1:],T=t,V2=v2,pre=pre,terms=terms,
                q0=Z.spectral(Z.eye(5)-pre*j),linear_jacobian=Z.spectral(pre*derivative_linear),
                f0=Z.frob(pre*f),f1=Z.spectral(pre*f1),f2=Z.spectral(pre*f2))


def bounds(prepared,epsilon):
    r,tau=prepared['model']['r'],prepared['model']['tau']
    e=arb_mat(6,1);remainder=arb_mat(6,5)
    for row,terms in enumerate(prepared['terms']):
        for term in terms:
            aa=term['anorm']*r;bb=term['bnorm']*r*r;hh=term['hnorm']*tau
            # Taylor polynomial of 2 Re(q exp(i(a+b/2))) through degree two in w.
            e[row,0]+=aa*bb+bb*bb/4+(aa+bb/2)**3/3+2*hh
            delta=aa+bb/2+arb(2).sqrt()*epsilon+hh
            tail=bb/2+arb(2).sqrt()*epsilon+hh+delta*delta/2
            for k in range(5):remainder[row,k]+=2*abs(term['ell'][k])*tail
    ap=abs_matrix(prepared['pre'])
    residual=prepared['f0']+r*prepared['f1']+r*r*prepared['f2']/2+Z.frob(ap*e)
    q=prepared['q0']+r*prepared['linear_jacobian']+Z.spectral(ap*remainder)
    return residual,q


def higher_order(prepared):
    """Keep cancellations in the cubic/quartic predictor and quadratic Jacobian."""
    d3=arb_mat(6,64);d4=arb_mat(6,256);j2=arb_mat(6,80)
    fifth=arb_mat(6,1);third_j=arb_mat(6,5)
    r=prepared['model']['r']
    for row,terms in enumerate(prepared['terms']):
        for term in terms:
            a=term['linear']; b=term['quadratic']; q=term['q']
            for i,j,k in itertools.product(range(4),repeat=3):
                re=-(b[i,j]*a[k]+b[i,k]*a[j]+b[j,k]*a[i])
                im=-a[i]*a[j]*a[k]
                d3[row,16*i+4*j+k]+=2*(q.real*re-q.imag*im)
            for i,j,k,l in itertools.product(range(4),repeat=4):
                re=a[i]*a[j]*a[k]*a[l]-b[i,j]*b[k,l]-b[i,k]*b[j,l]-b[i,l]*b[j,k]
                im=-(b[i,j]*a[k]*a[l]+b[i,k]*a[j]*a[l]+b[i,l]*a[j]*a[k]
                     +b[j,k]*a[i]*a[l]+b[j,l]*a[i]*a[k]+b[k,l]*a[i]*a[j])
                d4[row,64*i+16*j+4*k+l]+=2*(q.real*re-q.imag*im)
            for p,i,j in itertools.product(range(5),range(4),range(4)):
                j2[row,16*p+4*i+j]+=2*term['ell'][p]*(q.imag*a[i]*a[j]-q.real*b[i,j])
            an=term['anorm']+r*term['bnorm'];bn=term['bnorm']
            fifth[row,0]+=2*(an**5+10*bn*an**3+15*bn**2*an)
            for p in range(5):
                third_j[row,p]+=2*abs(term['ell'][p])*(an**3+3*bn*an)
    pre=prepared['pre'];ap=abs_matrix(pre)
    prepared.update(d3=Z.spectral(pre*d3),d4=Z.spectral(pre*d4),j2=Z.spectral(pre*j2),
                    fifth=Z.frob(ap*fifth),third_j=Z.spectral(ap*third_j))
    return prepared


def higher_bounds(prepared,epsilon):
    r,tau=prepared['model']['r'],prepared['model']['tau']
    eh=arb_mat(6,1);jz=arb_mat(6,5)
    for row,terms in enumerate(prepared['terms']):
        for term in terms:
            hh=term['hnorm']*tau
            eh[row,0]+=2*hh
            for p in range(5):
                ellnorm=sum(arb(x*x) for x in term['ell']).sqrt()
                jz[row,p]+=2*abs(term['ell'][p])*(ellnorm*epsilon+hh)
    ap=abs_matrix(prepared['pre'])
    e=(prepared['f0']+r*prepared['f1']+r*r*prepared['f2']/2
       +r**3*prepared['d3']/6+r**4*prepared['d4']/24+r**5*prepared['fifth']/120+Z.frob(ap*eh))
    q=(prepared['q0']+r*prepared['linear_jacobian']+r*r*prepared['j2']/2
       +r**3*prepared['third_j']/6+Z.spectral(ap*jz))
    return e,q


def phase_box(prepared,epsilon):
    r=prepared['model']['r']
    out=[arb(0)]
    for j in range(5):
        a=sum((prepared['T'][j,k]**2 for k in range(4)),arb(0)).sqrt()
        b=Z.spectral(arb_mat([[prepared['V2'][j,4*k+l] for l in range(4)] for k in range(4)]))
        out.append(prepared['v0'][j]+arb(0,(a*r+b*r*r/2+epsilon).upper()))
    return out


def uniqueness_cube(prepared,radius):
    """Uniform uniqueness in a fixed v0+[-radius,radius]^5 cube.

    Expand pre*D_v F through first order BEFORE taking absolute values.
    This retains the cancellations needed for complete torus coverage.
    """
    r,tau=prepared['model']['r'],prepared['model']['tau']
    hv=arb_mat(6,25);hw=arb_mat(6,20);j0=arb_mat(6,5);rem=arb_mat(6,5)
    h2=prepared['model']['H2']
    for row,terms in enumerate(prepared['terms']):
        for term in terms:
            q,ell,hu=term['q'],term['ell'],term['hu']
            a,b,c=term['a'],term['b'],term['c']
            hn=Z.spectral(arb_mat([[h2[6*a+c,4*k+l]-h2[6*b+c,4*k+l] for l in range(4)] for k in range(4)]))
            tail=hn*r*r/2+term['hnorm']*tau
            delta=sum(abs(x) for x in ell)*radius+sum((x*x for x in hu),arb(0)).sqrt()*r+tail
            for k in range(5):
                j0[row,k]+=-2*q.imag*ell[k]
                rem[row,k]+=2*abs(ell[k])*(tail+delta*delta/2)
                for l in range(5):hv[row,5*k+l]+=-2*q.real*ell[k]*ell[l]
                for l in range(4):hw[row,4*k+l]+=2*q.real*ell[k]*hu[l]
    pre=prepared['pre'];av=pre*hv;aw=pre*hw
    base=Z.eye(5)-pre*j0;er=abs_matrix(pre)*rem
    rows=[]
    for i in range(5):
        total=arb(0)
        for k in range(5):
            total+=abs(base[i,k])+radius*sum((abs(av[i,5*k+l]) for l in range(5)),arb(0))
            total+=r*sum((abs(aw[i,4*k+l]).upper()**2 for l in range(4)),arb(0)).sqrt()+er[i,k]
        rows.append(total)
    return arb(max(Z.upper(v) for v in rows))


def normal_derivative_bound(prepared,epsilon):
    """Bound ||D_w z_v||_2 for v=v0+T*w+V2[w,w]/2+z_v(w)."""
    if 'd3' not in prepared:higher_order(prepared)
    m=prepared['model'];r,tau,z1=m['r'],m['tau'],m['Z1']
    eh=arb_mat(6,1);mixed=arb_mat(6,1)
    for row,terms in enumerate(prepared['terms']):
        for term in terms:
            an=term['anorm']+r*term['bnorm'];hn=term['hnorm']
            ellnorm=sum((arb(x*x) for x in term['ell']),arb(0)).sqrt()
            eh[row,0]+=2*hn*(tau*an+z1)
            mixed[row,0]+=2*ellnorm*(an+hn*z1)
    ap=abs_matrix(prepared['pre'])
    b1=(prepared['f1']+r*prepared['f2']+r*r*prepared['d3']/2
        +r**3*prepared['d4']/6+r**4*prepared['fifth']/24+Z.frob(ap*eh))
    _,q=bounds(prepared,epsilon)
    if not q<1:raise ArithmeticError('column derivative inverse not certified')
    return (b1+Z.frob(ap*mixed)*epsilon)/(1-q)


def certify(prepared,max_iterations=30):
    """Uniform existence and uniqueness INSIDE the returned tube, not torus coverage."""
    bound=higher_bounds if 'd3' in prepared else bounds
    e,q=bound(prepared,arb(0))
    if not q<1:
        return dict(status='NOT ESTABLISHED',reason='initial contraction',q=str(q),residual=str(e))
    epsilon=arb(Z.upper(2*e/(1-q)))
    for _ in range(max_iterations):
        e,q=bound(prepared,epsilon)
        if not q<1:
            return dict(status='NOT ESTABLISHED',reason='tube contraction',epsilon=str(epsilon),q=str(q),residual=str(e))
        if e+q*epsilon<epsilon:
            return dict(status='CERTIFIED',claim='one unbiased-column branch on the whole seed ball',
                        radius=str(prepared['model']['r']),epsilon=str(epsilon),q=str(q),residual=str(e))
        epsilon=arb(Z.upper(arb(11)/10*e/(1-q)))
    return dict(status='NOT ESTABLISHED',reason='iteration limit')
