"""Signed second-order scalar residual bound for fiber parameter separation.

The multiplier is arbitrary. Acceptance belongs to the caller's final strict
Arb inequality. This module only returns a proved bound on the omitted residual.
"""
from flint import arb
from strong_contraction import A,gram_bound

def norm(v):return sum((x.abs_upper()**2 for x in v),arb(0)).sqrt().upper()
def second_order_error(p,data,lam):
    # Joint variable is (weak displacement 2, strong displacement 3, shared w 4).
    Q=[[arb(0) for j in range(9)] for i in range(9)]
    kappa=[sum((lam[k]*p['P'][k][j] for k in range(5)),arb(0)) for j in range(6)]
    transverse=[arb(0) for k in p['terms'][0]['raw'][0]['dx']]
    remainder=arb(0);h=data['h'];rho=data['rho'];r=p['r']
    for term,(cp,sp) in zip(p['terms'],data['phase_factors']):
        eo=term['eo'];xlinear=sum((eo[i].abs_upper()*h[i] for i in range(2)),arb(0))+rho*norm(eo[2:])
        for raw in term['raw']:
            kap=kappa[raw['j']];co=raw['base_re']*cp-raw['base_im']*sp;si=raw['base_re']*sp+raw['base_im']*cp
            direction=eo+[-u for u in raw['du']]
            fac=-kap*co/6
            for i in range(9):
                fi=fac*direction[i]
                for j in range(9):Q[i][j]+=fi*direction[j]
            for i in range(4):
                for j in range(4):Q[5+i][5+j]+=kap*si*(raw['dh'][4*i+j]+raw['dh'][4*j+i])/12
            for i,x in enumerate(raw['dx']):transverse[i]+=kap*si*x/3
            alpha=xlinear+r*raw['un'];beta=raw['beta'];width=alpha+beta
            remainder+=kap.abs_upper()*(co.abs_upper()*(alpha*beta+beta*beta/2)/3+width**3/18)
    quad=sum((Q[i][j].abs_upper()*h[i]*h[j] for i in range(2) for j in range(2)),arb(0))
    quad+=2*rho*sum((h[i]*norm(Q[i][2:5]) for i in range(2)),arb(0))
    quad+=2*r*sum((h[i]*norm(Q[i][5:9]) for i in range(2)),arb(0))
    quad+=rho*rho*gram_bound([row[2:5] for row in Q[2:5]])
    quad+=2*rho*r*gram_bound([row[5:9] for row in Q[2:5]])
    quad+=r*r*gram_bound([row[5:9] for row in Q[5:9]])
    return (quad+p['tau']*norm(transverse)+remainder).upper()
