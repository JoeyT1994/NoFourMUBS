"""Exclude triple zeros by subtracting quadratic multiples of their equations."""
import numpy as np
from flint import arb,arb_mat
from load_native import C,MS,S
from intervals import quadratic_lower,dual_lower,endpoints,norm_upper,symmetric
import constraint_score as CS
import unitary_score as U


def sub(m,rows,cols):return arb_mat([[m[i,j] for j in cols] for i in rows])


def scalar(d,direction,bottom):
    direction=np.asarray(direction,dtype=float);bottom=np.asarray(bottom,dtype=float)
    if direction.shape!=(96,) or bottom.shape!=(36,96) or not np.isfinite(direction).all() or not np.isfinite(bottom).all():
        raise ValueError('finite residual weights and a 36 by 96 multiplier required')
    y=C.Z.mat(direction[None,:]);b=arb_mat([[0]*96 for _ in range(36)]+C.Z.mat(bottom).tolist())
    coefficients=[-(y[0,re]*d['zs'][i].real+(y[0,im]*d['zs'][i].imag if im is not None else 0)) for i,(re,im,den,ell) in enumerate(MS.TERMS)]
    h=MS.LMAT.transpose()*arb_mat([[coefficients[t]*MS.LMAT[t,j] for j in range(72)] for t in range(len(MS.TERMS))])
    linear,hs,v=CS.quadratic_multiple(d['j'],d['f'],y*d['j'],[h],b);hh=hs[0]
    model=d['model'];r=model['r'];tau=model['tau'];nh=d['nh'];ne=norm_upper(d['eps'])
    q=d['scaled'].transpose()*hh*d['scaled'];h2=sub(linear,[0],range(36))*model['H2']
    for i in range(4):
        for j in range(4):q[i,j]+=h2[0,4*i+j]*r*r
    g=(linear*d['scaled']).transpose();tail=C.rownorm(sub(linear,[0],range(36))*model['X'],0)*tau
    hH=sub(hh,range(72),range(36))
    tail+=C.Z.spectral(d['lift'].transpose()*hH)*r*nh
    tail+=C.Z.spectral(d['pk']*sub(hh,range(36,72),range(36)))*ne*nh
    tail+=C.Z.spectral(sub(hh,range(36),range(36)))*nh*nh/2
    for i in range(15):
        tail+=norm_upper([y[0,i],y[0,15+i]])*d['hd'][i]**3/6
        tail+=norm_upper([y[0,30+i],y[0,45+i]])*d['kd'][i]**3/6
    tail+=sum((abs(y[0,60+6*a+c])*arb(2).sqrt()/3*d['md'][a][c]**3 for a in range(6) for c in range(6)),arb(0))
    caps=[norm_upper([z*z/2 for z in d['hd']]),norm_upper([z*z/2 for z in d['kd']]),norm_upper([d['md'][a][c]**2 for a in range(6) for c in range(6)])]
    tensor=v.transpose()*h*b
    def bound(columns):
        value=sub(tensor,range(72),columns)
        return C.Z.spectral(d['lift'].transpose()*value)*r+C.Z.spectral(d['pk']*sub(value,range(36,72),range(value.ncols())))*ne+C.Z.spectral(sub(value,range(36),range(value.ncols())))*nh
    extra=min(U.up(bound(range(96))*norm_upper(caps)),U.up(sum((bound(range(30*i,30*(i+1)) if i<2 else range(60,96))*caps[i] for i in range(3)),arb(0))))
    return (y*d['f'])[0,0],symmetric(q),g,U.up(tail+extra),extra


def receipt(d,direction,bottom,multipliers):
    c,q,g,tail,extra=scalar(d,direction,bottom)
    lower=dual_lower(q,g,d['groups'],multipliers);margin=c+lower-tail
    if not margin>0:return None
    return dict(status='EXCLUDED',route='quadratic multiples of triple equations',
        constant=endpoints(c),quadratic_lower=endpoints(lower),tail=endpoints(tail),multiplier_tail=endpoints(extra),margin=endpoints(margin),
        direction_hex=[float(x).hex() for x in direction],
        bottom_hex=[[float(x).hex() for x in row] for row in bottom],dual_multipliers_hex=[float(x).hex() for x in multipliers])


def exclude(model,prepared,bounds,clique):
    d=S.data(model,prepared,bounds,clique);jn=MS.numeric(d['j']);jk=jn[:,36:]@MS.numeric(d['pk']);fn=MS.numeric(d['f'])[:,0]
    scaled=MS.numeric(d['j']*d['scaled']);gram=scaled@scaled.T
    directions=[fn-jk@np.linalg.lstsq(jk,fn,rcond=1e-3)[0]]
    for reg in (1e-6,1e-3):directions.append(np.linalg.solve(gram+reg*np.eye(96),fn))
    for cut in (.01,.1,.2):
        bottom=MS.numeric(d['pk'])@np.linalg.pinv(jk,rcond=cut)
        for y in directions:
            scale=np.max(np.abs(y))
            if not scale or not np.isfinite(y).all():continue
            y=y/scale
            if y@fn<0:y=-y
            c,q,g,tail,extra=scalar(d,y,bottom)
            if not c>tail:continue
            dual=quadratic_lower(q,g,d['groups'])
            if dual is not None and c+dual[0]>tail:
                return receipt(d,y,bottom,[float.fromhex(x) for x in dual[1]])
    return None


def replay(model,prepared,bounds,clique,witness):
    return receipt(S.data(model,prepared,bounds,clique),[float.fromhex(x) for x in witness['direction_hex']],
        [[float.fromhex(x) for x in row] for row in witness['bottom_hex']],
        [float.fromhex(x) for x in witness['dual_multipliers_hex']])
