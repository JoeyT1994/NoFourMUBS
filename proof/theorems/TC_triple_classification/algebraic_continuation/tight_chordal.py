"""Retain H-jet contractions inside the complex-entry residual remainder."""
from flint import arb,arb_mat,acb_mat
from load_native import C,S,norm_upper
import chordal_support as base


def complex_bilinear(a):
    """Bound |x^T A y| for real unit vectors x,y, including x=y."""
    re=C.Z.spectral(a.real);im=C.Z.spectral(a.imag)
    return (re*re+im*im).sqrt()


def block(a,rows,cols):
    return acb_mat([[a[i,j] for j in cols] for i in rows])


def prepare(model,prepared,bounds,clique):
    d=base.prepare(model,prepared,bounds,clique);p6=C.project6();r=model['r'];tau=model['tau']
    for c in range(6):
        u=p6*S.block(model['U'],range(c,36,6),range(4))
        hh=p6*S.block(model['H2'],range(c,36,6),range(16))
        x=p6*S.block(model['X'],range(c,36,6),range(model['X'].ncols()))
        rows=[]
        for a in range(6):
            aa=C.rownorm(u,a)*r
            ha=arb_mat([[hh[a,4*i+j] for j in range(4)] for i in range(4)])
            nn=C.Z.spectral(ha)*r*r/2+C.rownorm(x,a)*tau
            rows.append(aa*nn+nn*nn/2+(aa+nn)**3/6)
        beta=C.Z.spectral(x)*tau+norm_upper(rows)
        d['h'][c]['remainder']=min(d['h'][c]['remainder'].upper(),beta.upper())
    tails=[]
    for a in range(6):
        for b in range(6):
            hh,kk=d['h'][a],d['k'][b]
            s0=(hh['h0'].conjugate().transpose()*kk['k0'])[0,0]
            linear=hh['h0'].conjugate().transpose()*kk['b']
            first=hh['h1'].conjugate().transpose()*kk['k0']
            for j in range(4):linear[0,j]+=first[j,0]
            b1=sum((base.real_operator(acb_mat([[linear[0,j] for j in g]])) for g in d['groups']),arb(0))
            b1=min(b1.upper(),(arb(6).sqrt()*(kk['phase']+hh['dnorm'])).upper())
            cross=hh['h1'].conjugate().transpose()*kk['b']
            ww=block(cross,range(4),range(4));ww+=ww.transpose()
            curv=hh['h2'].conjugate().transpose()*kk['k0']
            for i in range(4):
                for j in range(4):ww[i,j]+=curv[4*i+j,0]
            we=block(cross,range(4),d['groups'][b+1])
            tensor2=complex_bilinear(ww)/2+complex_bilinear(we)
            b2=min((hh['dnorm']*kk['phase']+hh['n2']*arb(6).sqrt()).upper(),tensor2.upper())
            cubic=hh['h2'].conjugate().transpose()*kk['b']
            tensor3=(complex_bilinear(block(cubic,range(16),range(4)))+
                     complex_bilinear(block(cubic,range(16),d['groups'][b+1])))/2
            normal_cross=min((hh['n2']*kk['phase']).upper(),tensor3.upper())
            rest=normal_cross+hh['remainder']*arb(6).sqrt()
            tail=(2*abs(s0)*rest+2*b1*(b2+rest)+(b2+rest)**2)/6
            tails.append(min(d['tails'][6*a+b].upper(),tail.upper()))
    d['tails']=tails
    return d


def exclude(model,prepared,bounds,clique):
    proof,info=base.propose(prepare(model,prepared,bounds,clique))
    if proof is not None:proof['chordal_remainder']='contracted H jets v2'
    return proof,info


def replay(model,prepared,bounds,clique,witness):
    proof=base.receipt(prepare(model,prepared,bounds,clique),
                       [float.fromhex(x) for x in witness['direction_hex']],
                       [float.fromhex(x) for x in witness['dual_multipliers_hex']])
    if proof is not None:proof['chordal_remainder']='contracted H jets v2'
    return proof
