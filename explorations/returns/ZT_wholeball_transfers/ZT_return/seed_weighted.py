"""Output-weighted normal remainder bounds for a certified seed Z model.

Keep C=A X through every centre residual tensor and through the derivative
of the projected equation. A single cache is shared by all transfers from
one seed ball. All returned error bounds are outward Arb upper bounds.

No covering theorem or MUB exclusion is used. The local matched-completion
germ is the same dependency as in zt_patch.normal_form.
"""
import argparse, json
from pathlib import Path
import zt_patch as ZT
from edge.edge_augmented import predictor_residual


def upper_point(x):
    return ZT.arb(ZT.Z.upper(x))


def min_upper(*values):
    return ZT.arb(min(ZT.Z.upper(v) for v in values))


def tensor_norm(H, scalar_quadratic=False):
    if scalar_quadratic and H.nrows()==1 and H.ncols()==16:
        H=ZT.arb_mat([[H[0,4*i+j] for j in range(4)] for i in range(4)])
    return ZT.matrix_norm(H)


class SeedWeighted:
    """Reusable centre tensor cache; ``bounds(A)`` returns normal errors.

    If Q = Q0 + U w + H2[w,w]/2 + X z(w), then the returned fields mean
      ||A X z|| <= normal_value,
      ||A X Dz|| <= normal_gradient,
      ||A X D2z|| <= normal_hessian,
    throughout the original certified source ball.
    """

    def __init__(self, model):
        self.model=model
        self.r=model['r'];self.tau=model['tau'];self.Z1=model['Z1'];self.Z2=model['Z2']
        self.X=model['X'];self.W=model['W'];self.H2=model['H2']
        self.u=ZT.arb(model['summary']['u'])
        self.x=ZT.arb(model['summary']['x'])
        self.beta=ZT.arb(model['summary']['beta'])
        H=model['H']
        zz=[H[i,k]*H[j,k].conjugate() for i,j in ZT.Z.PAIRS for k in range(6)]
        s=ZT.Z.differences(model['U']);dx=ZT.Z.differences(self.X)
        t=ZT.Z.differences(self.H2)
        normal=self.X.ncols(); terms=len(zz)
        K=[[ZT.acb(self.W[i,a//6],-self.W[i,15+a//6])*zz[a]
            for a in range(terms)] for i in range(normal)]
        self.kr=ZT.arb_mat([[z.real for z in row] for row in K])
        self.ki=ZT.arb_mat([[z.imag for z in row] for row in K])
        _,self.cache=predictor_residual(K,s,t,dx,self.r,return_cache=True)
        self.Cm=self.W*ZT.Z.derivative2(zz,s,dx)
        self.Dm=self.W*ZT.Z.derivative2(zz,dx,dx)

    def bounds(self,A):
        C=A*self.X
        cr=C*self.kr;ci=C*self.ki
        m=A.nrows();terms=self.kr.ncols();ca=self.cache
        t3=ZT.matrix_norm(C*ca['R3'])
        t4=ZT.matrix_norm(C*ca['R4'])
        a2=ZT.matrix_norm(C*ca['A2'])
        cn=[ZT.matrix_norm(ZT.arb_mat([[cr[i,a],ci[i,a]] for i in range(m)]))
            for a in range(terms)]
        L5=sum((cn[a]*ca['L5weights'][a] for a in range(terms)),ZT.arb(0))
        L3a=sum((cn[a]*ca['L3aweights'][a] for a in range(terms)),ZT.arb(0))
        r,tau,Z1,Z2=self.r,self.tau,self.Z1,self.Z2
        b0=t3*r**3/6+t4*r**4/24+L5*r**5/120
        b1=t3*r*r/2+t4*r**3/6+L5*r**4/24
        b2=t3*r+t4*r*r/2+L5*r**3/6
        wn=ZT.matrix_norm(C*self.W)
        L2=2*ZT.arb(3).sqrt()*wn
        L3=2*ZT.arb(6).sqrt()*wn
        c=ZT.matrix_norm(C*self.Cm)
        d=ZT.matrix_norm(C*self.Dm)
        u,x,beta=self.u,self.x,self.beta
        base=u*r+beta*r*r/2
        delta=base+x*tau
        qbase=c*r+a2*r*r/2+L3a*r**3/6
        qA=qbase+(d+L3*x*x*base)*tau+L3*x**3*tau*tau/2
        m1=c+a2*r+L3a*r*r/2+L3*x*x*(u+beta*r)*tau
        m2=L3*x*(u+beta*r)**2+L2*x*beta
        mzz=d+L3*x*x*delta
        chi=ZT.matrix_norm(C)
        value0=chi*tau
        value1=b0+qA*tau
        # Integrating the normal derivative gives the sharper 1/2 and 1/6
        # coefficients. This is a bound on C z, not a new contraction test.
        value2=b0+qbase*tau+(d+L3*x*x*base)*tau*tau/2+L3*x**3*tau**3/6
        grad0=chi*Z1
        grad1=b1+m1*tau+qA*Z1
        hess0=chi*Z2
        hess1=b2+m2*tau+2*m1*Z1+mzz*Z1*Z1+qA*Z2
        val=min_upper(value0,value1,value2)
        grad=min_upper(grad0,grad1)
        hess=min_upper(hess0,hess1)
        alpha=tensor_norm(A*self.H2,scalar_quadratic=True)
        return dict(normal_value=val,normal_gradient=grad,normal_hessian=hess,
            Hessian=upper_point(alpha+hess),alpha=upper_point(alpha),chi=upper_point(chi),
            old_normal_value=upper_point(value0),old_normal_hessian=upper_point(hess0),
            simple_Hessian=upper_point(alpha+hess0),
            refined_normal_value=upper_point(value2),refined_normal_hessian=upper_point(hess1),
            b0=upper_point(b0),b1=upper_point(b1),b2=upper_point(b2),
            qA=upper_point(qA),qbase=upper_point(qbase),m1=upper_point(m1),
            m2=upper_point(m2),mzz=upper_point(mzz))


def json_bounds(bounds):
    return {k:ZT.Z.upper(v) for k,v in bounds.items()}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('certificate');p.add_argument('--seed',type=int,required=True)
    p.add_argument('--group',type=int,required=True);p.add_argument('--output')
    a=p.parse_args();data=ZT.load_certificate(a.certificate)
    model=ZT.normal_form(ZT.SC.Ball(data['seeds'][a.seed]));cache=SeedWeighted(model)
    group=data['seeds'][a.seed]['transfers'][a.group]
    if group['kind']!='T1':raise ValueError('choose a T1 group')
    target=ZT.SC.Ball(data['seeds'][group['target']])
    L=ZT.SC.corner_L(group['rows'],group['cols'])@ZT.SC.g_matrix(group['g'])
    A=ZT.Z.mat(target.Mth).inv()*ZT.Z.mat(L)
    out=dict(status='CERTIFIED',seed=a.seed,group=a.group,target=group['target'],
        bounds=json_bounds(cache.bounds(A)))
    if a.output:Path(a.output).write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))


if __name__=='__main__':main()
