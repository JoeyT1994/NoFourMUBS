"""Uniform coverage of two chosen H phase coordinates by the known construction.

The independent parameters are *phase coordinates*, not fitted invariants.
All decisions use Arb; the two-parameter existence problem is a 2x2 contraction.
"""
import itertools
import sys
from pathlib import Path

from flint import acb, arb, arb_mat, fmpq_mat

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent))
from local import H_POS,K_POS,norm_inf

# G = b+c/b+1/c+e+f/e+1/f, based at (b,c,e,f)=(i,i,1,-1).
FREQUENCIES=[(1,0,0,0),(-1,1,0,0),(0,-1,0,0),(0,0,1,0),(0,0,-1,1),(0,0,0,-1)]
COEFFICIENTS=[acb(0,1),acb(1),acb(0,-1),acb(1),acb(-1),acb(-1)]


def g_jac(p):
    g=acb(0);j=[acb(0) for _ in range(4)]
    for f,c in zip(FREQUENCIES,COEFFICIENTS):
        q=c*acb(0,sum((f[i]*p[i] for i in range(4)),arb(0))).exp();g+=q
        for i in range(4): j[i]+=acb(0,f[i])*q
    return arb_mat([[g.real],[g.imag]]),arb_mat([[v.real for v in j],[v.imag for v in j]])


def raw_coefficients():
    zero=(0,0,0,0)
    units=[tuple(int(i==j) for i in range(4)) for j in range(4)]
    a=[zero,units[0],units[1]];b=[zero,units[2],units[3]]
    out=[[None]*6 for _ in range(6)]
    for r,c in itertools.product(range(3),repeat=2):
        out[r][c]=a[(c-r)%3];out[r][c+3]=b[(c-r)%3]
        out[r+3][c]=tuple(-x for x in b[(r-c)%3])
        out[r+3][c+3]=tuple(-x for x in a[(r-c)%3])
    return out


def validate_template(template):
    for name in ('rows','columns'):
        if sorted(template[name])!=list(range(6)): raise ValueError('invalid permutation')
    if len(template['signs'])!=3 or any(s not in (-1,1) for s in template['signs']):
        raise ValueError('invalid spectral signs')
    if not isinstance(template['conjugate'],bool): raise ValueError('invalid conjugation')
    if sorted(template.get('k_columns',list(range(6))))!=list(range(6)):
        raise ValueError('invalid K column permutation')


def phase_coefficients(template):
    validate_template(template)
    a=raw_coefficients();rr,cc=template['rows'],template['columns']
    sg=-1 if template['conjugate'] else 1
    return [[sg*(a[rr[r]][cc[c]][i]-a[rr[r]][cc[0]][i]
                 -a[rr[0]][cc[c]][i]+a[rr[0]][cc[0]][i]) for i in range(4)] for r,c in H_POS]


def matrices(p,template):
    """Enclose the explicit formula; G(p)=0 is required for it to be a triple."""
    validate_template(template)
    b,c,e,f=[base*acb(0,v).exp() for base,v in zip((acb(0,1),acb(0,1),acb(1),acb(-1)),p)]
    a=[acb(1),b,c];bb=[acb(1),e,f]
    h=[[acb(0) for _ in range(6)] for _ in range(6)]
    for r,s in itertools.product(range(3),repeat=2):
        h[r][s]=a[(s-r)%3];h[r][s+3]=bb[(s-r)%3]
        h[r+3][s]=bb[(r-s)%3].conjugate();h[r+3][s+3]=-a[(r-s)%3].conjugate()
    omega=acb(-arb(1)/2,arb(3).sqrt()/2)
    fourier=[[omega**((r*s)%3) for s in range(3)] for r in range(3)]
    lam=[1+b*omega**q+c*omega**((2*q)%3) for q in range(3)]
    mu=[1+e*omega**q+f*omega**((2*q)%3) for q in range(3)]
    z=[]
    for s,l,m in zip(template['signs'],lam,mu):
        if not abs(l*m)>0: raise ArithmeticError('spectral phase denominator not separated from zero')
        z.append(s*acb(0,1)*(l*m).conjugate()/abs(l*m))
    k=[[acb(0) for _ in range(6)] for _ in range(6)]
    for r,s in itertools.product(range(3),repeat=2):
        k[r][s]=k[r][s+3]=fourier[r][s]
        k[r+3][s]=fourier[r][s]*z[s];k[r+3][s+3]=-fourier[r][s]*z[s]
    rr,cc=template['rows'],template['columns']
    op=(lambda v:v.conjugate()) if template['conjugate'] else (lambda v:v)
    h=[[op(h[r][c]) for c in cc] for r in rr]
    k=[[op(k[r][c]) for c in template.get('k_columns',range(6))] for r in rr]
    row=[h[r][0].conjugate() for r in range(6)]
    col=[h[0][c].conjugate()*h[0][0] for c in range(6)]
    hh=[[row[r]*h[r][c]*col[c] for c in range(6)] for r in range(6)]
    kk=[[row[r]*k[r][c]*(row[0]*k[0][c]).conjugate() for c in range(6)] for r in range(6)]
    return hh,kk


def k_phase_box(p,template):
    """Use arg(lambda)+arg(mu); positive normalizers create no phase error."""
    omega=acb(-arb(1)/2,arb(3).sqrt()/2)
    b,c,e,f=[base*acb(0,v).exp() for base,v in zip((acb(0,1),acb(0,1),acb(1),acb(-1)),p)]
    dz=[]
    for q in range(3):
        w,v=omega**q,omega**((2*q)%3)
        lam,mu=1+b*w+c*v,1+e*w+f*v
        l0,m0=1+acb(0,1)*w+acb(0,1)*v,1+w-v
        al,am=(lam/l0).arg(),(mu/m0).arg()
        if not abs(al)<arb.pi()/2 or not abs(am)<arb.pi()/2:
            raise ArithmeticError('spectral phase lift not certified')
        dz.append(-al-am)
    raw=raw_coefficients();rr,cc=template['rows'],template['columns'];sg=-1 if template['conjugate'] else 1
    out=[]
    for r,c in K_POS:
        row=sum(((raw[rr[0]][cc[0]][i]-raw[rr[r]][cc[0]][i])*p[i] for i in range(4)),arb(0))
        kc=template.get('k_columns',list(range(6)))[c]
        out.append(sg*(row+(int(rr[r]>=3)-int(rr[0]>=3))*dz[kc%3]))
    return out


def cover(template,free,targets):
    """Cover every pair of free H-phase increments in `targets`.

    Returns an enclosure of the known triples, in all 55 phases relative to
    the exact anchor. It does not assert that arbitrary triples are in it.
    """
    if len(free)!=2 or len(set(free))!=2 or any(i not in range(25) for i in free):
        raise ValueError('select two distinct H phase coordinates')
    if len(targets)!=2 or any(not x.is_finite() for x in targets): raise ValueError('invalid target box')
    coeff=phase_coefficients(template)
    # The first two rows are D(Re G,Im G)(0), exactly integer.
    a=fmpq_mat([[-1,-1,0,0],[-1,1,2,0],coeff[free[0]],coeff[free[1]]])
    inv=a.inv()
    n=arb_mat([[arb(inv[i,j]) for j in range(2)] for i in range(4)])
    t=arb_mat([[arb(inv[i,j+2]) for j in range(2)] for i in range(4)])
    pred=t*arb_mat([[v] for v in targets])
    # G(0)=0 and DG(0)T=0 EXACTLY. |exp(ix)-1-ix|<=x^2/2.
    error=sum((abs(sum((f[i]*pred[i,0] for i in range(4)),arb(0))).upper()**2/2
               for f in FREQUENCIES),arb(0))
    eye=arb_mat([[1,0],[0,1]])
    def evaluate(epsilon):
        normal=arb_mat([[arb(0,epsilon)],[arb(0,epsilon)]])
        box=pred+n*normal
        _,j=g_jac([box[i,0] for i in range(4)])
        return box,norm_inf(eye-j*n)
    _,q=evaluate(arb(0))
    if not q<1: raise ArithmeticError('known-family initial contraction fails')
    epsilon=(2*error/(1-q)).upper()
    if epsilon==0: epsilon=arb(2)**-80
    for _ in range(30):
        box,q=evaluate(epsilon)
        if not q<1: raise ArithmeticError('known-family tube contraction fails')
        if error+q*epsilon<epsilon: break
        epsilon=(arb(11)/10*error/(1-q)).upper()
    else: raise ArithmeticError('known-family self-map not certified')
    h0,k0=matrices([arb(0)]*4,template)
    hp=arb_mat(coeff)*box
    kp=k_phase_box([box[i,0] for i in range(4)],template)
    if any(not abs(v)<arb.pi()/2 for v in kp): raise ArithmeticError('known K phase lift is not certified')
    return dict(status='CERTIFIED',claim='known-family coverage of every pair of free phase coordinates',
                free=free,targets=targets,phase_box=[hp[i,0] for i in range(25)]+kp,
                parameter_box=[box[i,0] for i in range(4)],epsilon=epsilon,q=q,error=error,
                h0=h0,k0=k0,template=template)


NATIVE_1879=dict(rows=[0,1,2,4,3,5],columns=[3,5,4,2,1,0],signs=[1,1,1],conjugate=True)
