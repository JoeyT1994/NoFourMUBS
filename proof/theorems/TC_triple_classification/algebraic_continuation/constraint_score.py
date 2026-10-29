"""Bound transition phases after subtracting vanishing triple equations.

A numerical matrix proposes the subtraction. Its residual, derivative
defect, signed Hessian, and Taylor remainders are enclosed in Arb.
"""
import numpy as np
from flint import arb,arb_mat,acb,acb_mat
import unitary_score as U
import score_quadratic as SQ
from load_native import C,MS


def sub(m,rows,cols):return arb_mat([[m[i,j] for j in cols] for i in rows])


def tensor_norm(hessians,left,right):
    values=[left.transpose()*h*right for h in hessians]
    return C.Z.spectral(arb_mat([v.entries() for v in values]))


def pattern(context,prepared,bounds,clique,rcond=.01):
    result=U.pattern(context,prepared,bounds,clique)
    if result['incompatible'] or result.get('phase_error') is None:return result
    model=context['model'];r,tau=model['r'],model['tau'];p=U.column_projection()
    q,u,h2,x=(p*model[name] for name in ('Q0','U','H2','X'))
    v=arb_mat([[prepared[clique[c]]['v0'][a,0]] for a in range(6) for c in range(6)])
    hrad=U.norm([arb(z.rad()) for z in q.entries()])
    krad=[arb(z.rad()) for z in v.entries()]
    pr=[U.up(bounds[color]['phase_radius']+U.norm(krad[c::6])) for c,color in enumerate(clique)]
    kp=U.up(U.norm(pr));nh=U.up(C.Z.spectral(h2)*r*r/2+C.Z.spectral(x)*tau+hrad)
    hc=context['Hc'];kc=acb_mat([[acb(0,v[6*a+c,0].mid()).exp() for c in range(6)] for a in range(6)])
    lc=hc.conjugate().transpose()*kc/arb(6).sqrt()
    phases=arb_mat([[z.mid()] for z in q.entries()]+[[z.mid()] for z in v.entries()])
    j=MS.jacobian(phases);f=arb_mat(96,1);zs=[]
    angles=MS.LMAT*phases
    for t,(re,im,den,ell) in enumerate(MS.TERMS):
        z=acb(0,angles[t,0]).exp()/den;zs.append(z);f[re,0]+=z.real
        if im is not None:f[im,0]+=z.imag
    w=U.horizontal_projection();js=arb_mat(36,72);sh=[]
    for a in range(6):
        for k in range(6):
            rotation=lc[a,k].conjugate()/abs(lc[a,k]);out=6*a+k
            for row in range(6):
                z=rotation*hc[row,a].conjugate()*kc[row,k]/arb(6).sqrt()
                hi=6*row+a;ki=36+6*row+k
                js[out,hi]-=z.real;js[out,ki]+=z.real
                sh.append((out,hi,ki,-z.imag))
    js=w*js
    jh=sub(j,range(96),range(36));jk=sub(j,range(96),range(36,72))
    a=C.Z.mat(MS.numeric(sub(js,range(36),range(36,72)))@np.linalg.pinv(MS.numeric(jk),rcond=rcond))
    residual=js-a*j;bh=sub(residual,range(36),range(36));bk=sub(residual,range(36),range(36,72))
    error_k=min(U.up(C.Z.spectral(bk)*kp),
                U.up(sum((C.Z.spectral(sub(bk,range(36),range(c,36,6)))*pr[c] for c in range(6)),arb(0))))
    linear=U.up(C.Z.spectral(bh*u)*r+error_k+C.Z.spectral(bh*h2)*r*r/2+
                C.Z.spectral(bh*x)*tau+C.Z.spectral(bh)*hrad)
    coefficients=arb_mat([[a[o,re]*zs[t].real+(a[o,im]*zs[t].imag if im is not None else 0)
                          for t,(re,im,den,ell) in enumerate(MS.TERMS)] for o in range(36)])
    hessians=[]
    for out in range(36):
        h=MS.LMAT.transpose()*arb_mat([[coefficients[out,t]*MS.LMAT[t,k] for k in range(72)] for t in range(len(MS.TERMS))])
        for source,hi,ki,value in sh:
            c=w[out,source]*value
            h[hi,hi]+=c;h[ki,ki]+=c;h[hi,ki]-=c;h[ki,hi]-=c
        hessians.append(h)
    wu=arb_mat([[u[i,j] if i<36 else 0 for j in range(4)] for i in range(72)])
    hh=arb_mat([[int(i==j) for j in range(36)] for i in range(72)])
    kk=arb_mat([[int(i==36+j) for j in range(36)] for i in range(72)])
    sizes=[(wu,wu,r*r/2),(wu,kk,r*kp),(kk,kk,kp*kp/2),
           (wu,hh,r*nh),(kk,hh,kp*nh),(hh,hh,nh*nh/2)]
    quadratic=U.up(sum((tensor_norm(hessians,left,right)*size for left,right,size in sizes),arb(0)))
    hp=context['h_columns']
    hd=[(hp[b]+hp[a])**3/6 for a,b in C.PAIRS]
    kd=[(pr[b]+pr[a])**3/6 for a,b in C.PAIRS]
    md=[arb(2).sqrt()/3*(hp[a]+pr[k])**3 for a in range(6) for k in range(6)]
    global_tail=C.Z.spectral(a)*U.norm(hd+kd+md)
    separate=arb(0)
    for offset,radii in ((0,hd),(30,kd)):
        for i,radius in enumerate(radii):separate+=C.Z.spectral(sub(a,range(36),[offset+i,offset+15+i]))*radius
    separate+=sum((U.norm([a[o,60+i] for o in range(36)])*radius for i,radius in enumerate(md)),arb(0))
    s_tail=U.norm([(hp[a]+pr[k])**3/(6*arb(6).sqrt()) for a in range(6) for k in range(6)])
    cubic=U.up(s_tail+min(U.up(global_tail),U.up(separate)))
    theta=2*(result['entry_chord']/(2*result['m'].sqrt())).asin()
    sine=U.up(theta*theta*result['phase_error']/6)
    correction=a*f
    centre=[[lc[a,k].arg()-correction[6*a+k,0] for k in range(6)] for a in range(6)]
    error=U.up(linear+quadratic+cubic+sine)
    score=U.up(U.score_upper(centre)+arb(2)*error/5)
    result.update(constraint_linear=linear,constraint_quadratic=quadratic,constraint_cubic=cubic,
                  constraint_sine=sine,constraint_phase_error=error,constraint_centre_score=U.score_upper(centre),
                  constraint_correction=correction.entries(),constraint_rcond=rcond,
                  g_up_L_unsigned=result['g_up_L'],g_up_L=min(result['g_up_L'],score))
    if min(result['g_up_K'],result['g_up_L'])>arb(19)/50:
        direction=arb_mat(36,40);bhu=bh*u
        for i in range(36):
            for j in range(4):direction[i,j]=bhu[i,j]*r
            for j in range(36):direction[i,4+j]=bk[i,j]*pr[j%6]
        groups=[list(range(4))]+[list(range(4+c,40,6)) for c in range(6)]
        direct=SQ.upper(centre,direction,groups)
        if direct is not None:
            normal=U.up(C.Z.spectral(bh*h2)*r*r/2+C.Z.spectral(bh*x)*tau+C.Z.spectral(bh)*hrad)
            sharp=U.up(direct+arb(2)*(normal+quadratic+cubic+sine)/5)
            result.update(linear_score_bound=direct,directional_score=sharp,
                          g_up_L_triangle=result['g_up_L'],g_up_L=min(result['g_up_L'],sharp))
    result['fourier_threshold_met']=min(result['g_up_K'],result['g_up_L'])<=arb(19)/50
    return result
