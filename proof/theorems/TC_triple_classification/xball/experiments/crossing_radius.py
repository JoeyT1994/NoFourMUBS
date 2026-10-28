#!/usr/bin/env python3
"""Arb quantitative crossing criterion; does not assert core all-K inclusion."""
import argparse
import hashlib
import json
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import bootstrap as B
import run_xball as RX
import crossing_structure as CS
import numpy as np
import scipy.linalg as sla
import sympy as sp
from flint import arb, arb_mat, fmpq, fmpq_mat, ctx

Z=B.C.Z


def qmatrix(dm):
    rows=dm.to_list(); n,m=dm.shape
    a=fmpq_mat(n,m);b=fmpq_mat(n,m)
    for i in range(n):
        for j in range(m):
            coeff=rows[i][j].to_list()
            if coeff:a[i,j]=fmpq(str(coeff[-1]))
            if len(coeff)==2:b[i,j]=fmpq(str(coeff[0]))
            if len(coeff)>2:raise ValueError('field is not quadratic')
    return a,b


def qstrings(rows):
    return qmatrix(CS.matrix([[CS.FIELD.from_sympy(sp.sympify(v)) for v in row] for row in rows]))


def qab(pair):return arb_mat(pair[0])+arb_mat(pair[1])*arb(3).sqrt()
def qmul(a,b):return a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0]


def sub(pair, rows, cols):
    return tuple(fmpq_mat([[v[i,j] for j in cols] for i in rows]) for v in pair)


def qinverse(a):
    n=a[0].nrows()
    block=fmpq_mat([[a[0][i,j] for j in range(n)]+[3*a[1][i,j] for j in range(n)] for i in range(n)]+
                   [[a[1][i,j] for j in range(n)]+[a[0][i,j] for j in range(n)] for i in range(n)])
    inv=block.inv()
    result=(fmpq_mat([[inv[i,j] for j in range(n)] for i in range(n)]),
            fmpq_mat([[inv[n+i,j] for j in range(n)] for i in range(n)]))
    ident=fmpq_mat([[int(i==j) for j in range(n)] for i in range(n)])
    if qmul(a,result)!=(ident,fmpq_mat(n,n)):raise ArithmeticError('exact inverse failed')
    return result


def normalise(n):
    a=arb_mat([[n[i,0]] for i in range(72)])
    b=arb_mat([[n[i,1]] for i in range(72)])
    l0=(a.transpose()*a)[0,0].sqrt();u=a/l0
    dot=(u.transpose()*b)[0,0];v=b-u*dot
    l1=(v.transpose()*v)[0,0].sqrt();v=v/l1
    transform=arb_mat([[1/l0,-dot/(l0*l1)],[0,1/l1]])
    return arb_mat([[u[i,0],v[i,0]] for i in range(72)]),transform


def tensor(a,b):
    return arb_mat([[a[i,j]*b[k,l] for j in range(2) for l in range(2)]
                    for i in range(2) for k in range(2)])


def obstruction_inverse(jq,mq):
    jd=sub(jq,range(96),CS.VARIABLES)
    _,_,cols=sla.qr(Z.mid_np(qab(jd)),pivoting=True,mode='economic')
    jc=sub(jd,range(96),[int(v) for v in cols[:51]])
    aug=tuple(fmpq_mat([[jc[k][i,j] for j in range(51)]+[mq[k][i,j] for j in range(4)] for i in range(96)]) for k in range(2))
    # The least-norm exact solution avoids the large constants introduced
    # by selecting only 55 of the 96 residual equations.
    trans=tuple(v.transpose() for v in aug)
    inv=qinverse(qmul(trans,aug))
    result=qmul(sub(inv,range(51,55),range(55)),trans)
    if qmul(result,jq)!=(fmpq_mat(4,72),fmpq_mat(4,72)):
        raise ArithmeticError('obstruction map does not annihilate J')
    if qmul(result,mq)!=(fmpq_mat([[int(i==j) for j in range(4)] for i in range(4)]),fmpq_mat(4,4)):
        raise ArithmeticError('mixed obstruction not normalized')
    return result


def derivative_bounds(c,phases):
    """Signed Hessian flattening and a uniform third derivative norm bound."""
    terms=B.MS.TERMS;ls=np.array([t[3] for t in terms],dtype=np.int64)
    pairs=sorted({(i,j) for ell in ls for i in np.flatnonzero(ell)
                  for j in np.flatnonzero(ell) if i<=j})
    mapping={pair:n for n,pair in enumerate(pairs)}
    hess=arb_mat(c.nrows(),len(pairs));amps=arb_mat(c.nrows(),len(terms))
    co=[qab(qmatrix(CS.matrix([[v]])))[0,0] for v in CS.CO]
    si=[co[(3-i)%12] for i in range(12)];sqrt2=arb(2).sqrt()
    for t,(re,im,den,ell) in enumerate(terms):
        angle=sum(int(a)*b for a,b in zip(ell,phases))%12
        nonzero=[i for i,v in enumerate(ell) if v]
        for k in range(c.nrows()):
            cr=c[k,re]/den;ci=c[k,im]/den if im is not None else arb(0)
            amplitude=(abs(cr).upper()**2+abs(ci).upper()**2).sqrt()
            amps[k,t]=amplitude
            value=-(cr*co[angle]+ci*si[angle])
            for i in nonzero:
                for j in nonzero:
                    if i<=j:
                        index=mapping[(i,j)]
                        hess[k,index]+=value*int(ell[i]*ell[j])*(sqrt2 if i!=j else 1)
    # The Gram matrix of the flattened third-order frequency tensors has
    # entries (ell_i dot ell_j)^3. Integer row sums prove its norm bound.
    gram=ls@ls.T
    gmax=int(np.max(np.sum(np.abs(gram)**3,axis=1)))
    return Z.spectral(hess),Z.spectral(amps)*arb(gmax).sqrt(),gmax


def physical_actions(entry,actions):
    """Exact monomial representations of each proposed physical operator."""
    def mul(a,b):return a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0]
    def adj(a):return a[0].transpose(),-a[1].transpose()
    def phase_matrix(exponents):
        return (CS.matrix([[CS.CO[v%12] for v in row] for row in exponents]),
                CS.matrix([[CS.SI[v%12] for v in row] for row in exponents]))
    ident=CS.identity(6);zero=CS.matrix([[0]*6 for _ in range(6)])
    bases=[(ident,zero),phase_matrix(entry['H_exponents_mod12']),phase_matrix(entry['K_exponents_mod12'])]
    for action in actions:
        if sorted(action['labels'])!=[0,0,1,1,2,2]:raise ArithmeticError('unbalanced labels')
        diagonal=phase_matrix([[4*action['labels'][i] if i==j else 0 for j in range(6)] for i in range(6)])
        diagonal=tuple(CS.matrix([[v.to_list()[i][j] if i==j else 0 for j in range(6)] for i in range(6)]) for v in diagonal)
        u=mul(mul(bases[action['anchor']],diagonal),adj(bases[action['anchor']]))
        if action['anchor']!=0:u=tuple(v.mul(CS.FIELD.one/CS.FIELD.convert(6)) for v in u)
        for index,basis in enumerate(bases):
            rep=mul(mul(adj(basis),u),basis)
            if index!=0:rep=tuple(v.mul(CS.FIELD.one/CS.FIELD.convert(6)) for v in rep)
            re,im=[v.to_list() for v in rep];perm=action[('R','S','T')[index]]
            for i in range(6):
                for j in range(6):
                    norm=re[i][j]**2+im[i][j]**2
                    if norm!=CS.FIELD.convert(int(j==perm[i])):raise ArithmeticError('physical symmetry not monomial')


def certify(entry,structure):
    phases=sum(entry['H_exponents_mod12'],[])+sum(entry['K_exponents_mod12'],[])
    physical_actions(entry,structure['actions'])
    jq=qmatrix(CS.exact_system(phases));j=qab(jq)
    raw=[qab(qstrings(structure['fixed_plane_basis_'+str(i)])) for i in range(2)]
    (n0,l0),(n1,l1)=[normalise(v) for v in raw]
    kernel=n0*n0.transpose()+n1*n1.transpose()
    w=arb_mat(B.MS.group(structure['actions'][0],rational=True)[0][1])
    v=w-kernel
    a=v*Z.mat(np.linalg.pinv(Z.mid_np(j),rcond=1e-10))
    actions=[tuple(qab(qmatrix(m)) for m in CS.covariance(phases,action)) for action in structure['actions']]
    (p0,y0),(p1,y1)=actions
    averaged=arb_mat(72,96)
    for i in range(3):
        for k in range(3):averaged+=(p0**i)*(p1**k)*a*((y0**i)*(y1**k)).transpose()/9
    a=averaged
    defect=Z.spectral(v-a*j*v)
    if not defect<arb(1)/100:raise ArithmeticError('normal inverse defect too large')
    braw=qab(obstruction_inverse(jq,qstrings(structure['mixed_hessian'])))
    b=tensor(l0,l1).inv()*braw
    h2,h3,gram=derivative_bounds(a,phases)
    g2,g3,_=derivative_bounds(b,phases)
    print(json.dumps(dict(number=entry['number'],defect=str(defect),h2=str(h2),h3=str(h3),g2=str(g2),g3=str(g3))),flush=True)
    trials=[];success=None
    for power in range(1,41):
        radius=arb(1)/2**power;rho=eta=radius/2
        h=h2+h3*radius;q=defect+h*radius
        if not q<1:continue
        inclusion=h*rho*rho/2+q*eta
        t=h*radius/(1-q);s=h*(1+t*t)/(1-q)
        epsilon=g3*radius*(1+t*t)+g2*(2*t+t*t)+(g2+g3*radius)*radius*s
        value=dict(ambient_radius_power=power,ambient_radius=str(radius),kernel_radius=str(rho),normal_radius=str(eta),
            q=str(q),normal_image_bound=str(inclusion),mixed_invertibility_defect_bound=str(2*epsilon))
        trials.append(value)
        if inclusion<eta and 2*epsilon<1:
            success=value;break
    return dict(number=entry['number'],status='CERTIFIED LOCAL PHASE NEIGHBOURHOOD' if success else 'NOT ESTABLISHED',
        conditional_on='QUANTITATIVE_CROSSING.md and the supplied qualitative crossing theorem',
        physical_actions_exact=True,normal_inverse_defect=str(defect),hessian_H=str(h2),third_derivative_H=str(h3),
        hessian_G=str(g2),third_derivative_G=str(g3),third_frequency_gram_row_bound=gram,
        success=success,classification_phase_radius=str(arb(1)/2**(success['ambient_radius_power']+1)) if success else None,
        trials=trials,core_all_K_inclusion_certified=False)


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    ctx.prec=224;root=Path(__file__).resolve().parents[1];base=RX.binding()
    files=[root/'results/exact_centres.json',root/'results/crossing_structure_20261028.json',
           root/'reference/prior_local_CHECKPOINT.md',
           Path(__file__),Path(__file__).with_name('crossing_structure.py'),Path(__file__).with_name('QUANTITATIVE_CROSSING.md')]
    before={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
    exact=json.loads(files[0].read_text());structure=json.loads(files[1].read_text())
    if exact['base_binding']!=base['id'] or structure['base_binding']!=base['id']:
        raise ArithmeticError('input base binding mismatch')
    if structure['controller_sha256']!=hashlib.sha256(Path(CS.__file__).read_bytes()).hexdigest():
        raise ArithmeticError('exact structure controller mismatch')
    results=[certify(exact['patterns'][s['number']],s) for s in structure['patterns']]
    after={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
    if before!=after or RX.binding()!=base:raise ArithmeticError('source changed')
    result=dict(status='LOCAL PHASE NEIGHBOURHOODS ONLY; CORE NOT ESTABLISHED',base_binding=base['id'],sources_sha256=before,patterns=results)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','base_binding')}),flush=True)


if __name__=='__main__':main()
