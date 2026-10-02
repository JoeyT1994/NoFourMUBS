"""Independent exact checks of finite algebra and parameter conventions.

The analytic continuation and Taylor remainder arguments are in PROOF.md;
this script does not claim to formalize them in a proof assistant.
"""
from fractions import Fraction as Q
from itertools import permutations
import sympy as sp
from interval import require
from geometry import FRAMES, PROFILES, audit_partition, frame_test
from charts import PhaseBase
from corner import TERMS, parity


def audit():
    z,w,o=sp.symbols('z w o')
    def star(e):
        return e.xreplace({z:1/z,w:1/w,o:o**2})
    def zero(e):
        num,den=sp.fraction(sp.cancel(e))
        return sp.Poly(num,o).rem(sp.Poly(o**2+o+1,o)).is_zero
    F=sp.Matrix(3,3,lambda i,j:o**((i*j)%3))
    Z=sp.diag(1,z,w)
    N0=F.row_join(F).col_join((F*Z).row_join(-F*Z))
    N=N0.extract([0,1,3,2,4,5],range(6))
    S=1+z+w; T=1+o**2*z+o*w
    alpha=S*star(T)/(star(S)*T); gamma=-S/star(S)
    BA=sp.Matrix([[1,1,1],[alpha,alpha*o,alpha*o**2],
                  [gamma,gamma/w,gamma/z]])
    K=N[:3,:3].row_join(BA)
    require(all(zero(e) for e in N*N.applyfunc(star).T-6*sp.eye(6)),
            'exact Fourier Gram identity failed')
    require(all(zero(e*star(e)-1) for e in N), 'Fourier unit entries failed')
    require(all(zero(e) for e in K*K.applyfunc(star).T-6*sp.eye(3)),
            'exact alternative side Gram identity failed')
    require(all(zero(e*star(e)-1) for e in K), 'alternative unit entries failed')
    # Independent polynomial specialization of the surface R formula.
    s=0;t=-1-z-w;r=-1-o**2*z-o*w
    Y=t*star(t);Zr=r*star(r);P=Y+Zr
    g=27-3*P;eta=9-P;chi=Y*Zr-(P-9)*(P-18)
    R=4*g*g*eta-chi*chi
    factor=9*(z*z-w)*star(z*z-w)*(w*w-z)*star(w*w-z)*(z*w-1)*star(z*w-1)
    require(zero(R-factor), 'surface R factorization failed')

    # Phase identities are in turns. A difference by an integer is allowed.
    p,q=sp.symbols('p q',real=True)
    def fphase(a,b,i,j):
        return sp.Rational(i*j,6)+(j%2)*[0,a,b][i%3]
    rows=[(0,False),(1,False),(0,True),(2,False),(1,True),(2,True)]
    def nphase(i,j):
        r,bottom=rows[i];k=j%3
        return (sp.Rational(r*k,3)+(sp.Rational(1,2) if bottom and j>=3 else 0)
                +([0,sp.Rational(1,6)+p-q,sp.Rational(1,3)-q][k] if bottom else 0))
    # Bind the actual implementation's reference coefficients to the
    # independently constructed exact reference phases.
    from interval import v as iv_number
    aa_arg,bb_arg=sp.symbols('Aarg Barg',real=True)
    center_p=iv_number(Q(21,1000));center_q=iv_number(Q(7,1000))
    programmed_N=PhaseBase(center_p,center_q,'N')
    programmed_A=PhaseBase(center_p,center_q,'A')
    def programmed_turns(base,i,j):
        v0,vp,vq,vs,vt=map(sp.Rational,base.coef[i,j])
        return v0/2+vp*p+vq*q+vs*aa_arg+vt*bb_arg
    for i in range(6):
        for j in range(6):
            require(sp.expand(programmed_turns(programmed_N,i,j)-nphase(i,j)).is_Integer,
                    'implemented Fourier reference coefficient mismatch')
    ref_A=[[0]*6,
           [0,sp.Rational(1,3),sp.Rational(2,3),aa_arg-bb_arg,
            aa_arg-bb_arg+sp.Rational(1,3),aa_arg-bb_arg+sp.Rational(2,3)],
           [0,sp.Rational(1,6)+p-q,sp.Rational(1,3)-q,
            sp.Rational(1,2)+aa_arg,sp.Rational(1,6)+aa_arg+q,
            sp.Rational(1,3)+aa_arg-p+q]]
    for i in range(3):
        for j in range(6):
            require(sp.expand(programmed_turns(programmed_A,i,j)-ref_A[i][j]).is_Integer,
                    'implemented alternative reference coefficient mismatch')
    reorder=[0,2,1,4,3,5]
    for i in range(6):
        for j in range(6):
            require(sp.expand(fphase(p-q,-q,i,j)-nphase(reorder[j],i)).is_Integer,
                    'N transpose/Fourier phase identity failed')
            expr=(fphase(p-q,-q,i,j)-fphase(p,q,(2-i)%6,(-j)%6)
                  +fphase(p,q,2,(-j)%6))
            require(sp.expand(expr).is_Integer, 'parameter involution failed')

    # Check the six-sine Q against the real moment-Jacobian determinant.
    xs=sp.symbols('x0:3');ys=sp.symbols('y0:3')
    sn=lambda a:(a-1/a)/(2*sp.I)
    cs=lambda a:(a+1/a)/2
    J=sp.zeros(6)
    for j in range(3):
        zz=ys[j]/xs[j]
        J[0,2*j]=-sn(xs[j]);J[1,2*j]=cs(xs[j])
        J[2,2*j+1]=-sn(ys[j]);J[3,2*j+1]=cs(ys[j])
        J[4,2*j]=sn(zz);J[5,2*j]=-cs(zz)
        J[4,2*j+1]=-sn(zz);J[5,2*j+1]=cs(zz)
    det=0
    for perm in permutations(range(6)):
        term=sp.prod(J[i,perm[i]] for i in range(6))
        if term != 0: det+=parity(perm)*term
    sinsum=0
    for i,j,a,b,c,d,sg in TERMS:
        sinsum+=sg*sn(xs[b]/xs[a])*sn(ys[d]/ys[c])*sn((ys[i]/xs[i])/(ys[j]/xs[j]))
    require(sp.expand(det-sinsum)==0 or sp.expand(det+sinsum)==0,
            'six-sine determinant identity failed')

    # Normal derivatives through order three of a quadratic phase.
    u,v,aa,bb,cc,dd,ee=sp.symbols('u v a b c d e',real=True)
    phase=aa*u+bb*v+cc*u*u/2+dd*u*v+ee*v*v/2
    eephase=sp.exp(sp.I*phase);du=sp.diff(phase,u);dv=sp.diff(phase,v)
    expected=[-3*cc*du-sp.I*du**3,
              -cc*dv-2*dd*du-sp.I*du**2*dv,
              -ee*du-2*dd*dv-sp.I*du*dv**2,
              -3*ee*dv-sp.I*dv**3]
    for k,ex in enumerate(expected):
        actual=sp.diff(eephase,u,3-k,v,k)/eephase
        require(sp.simplify(actual-ex)==0, 'third derivative identity failed')

    # Nonvacuity on the thick surface, via an exact Laurent sine identity.
    b,c=sp.symbols('b c',nonzero=True)
    require(sp.expand(sn(b*b)+sn(c*c)+sn(b*b*c*c)
                       -4*sn(b*c)*cs(b)*cs(c))==0,
            'maximal-surface sine identity failed')
    cf=PROFILES['thick']
    require(cf['p'][0]>2*cf['q'][1], 'thick surface sign chamber failed')
    require(0<2*cf['p'][0]-cf['q'][1]
            and 2*cf['p'][1]-cf['q'][0]<Q(1,2), 'sine sign failed')
    require(cf['p'][1]+cf['q'][1]<Q(1,2), 'cosine sign failed')

    # Every frame is an exact invertible integer seed-phase transformation.
    require(len(FRAMES)==144, 'missing leading-corner frames')
    for fr in FRAMES:
        require(abs(int(sp.Matrix(fr['matrix']).det()))==1,
                'noninvertible phase frame')
    primary=sp.Matrix([[0,0,1,0],[0,0,1,-1],[-1,0,1,0],[-1,1,1,-1]])
    root=sp.Matrix([2,4,1,2])
    require([int(x)%6 for x in primary*root]==[1,5,5,1], 'primary frame failed')
    require([int(x)%6 for x in -primary*root]==[5,1,1,5], 'conjugate primary frame failed')
    return dict(status='PASS', Fourier_Gram='exact', alternative_side_Gram='exact',
                implemented_reference_coefficients=54, primary_endpoint_maps=2,
                surface_R_factorization='exact', explicit_phase_identities=72,
                complementary_sine_determinant='exact', third_derivative_identities=4,
                frame_maps=144, thick_surface_maximality_chamber='exact',
                proof_assistant_formalization=False)

if __name__=='__main__':
    import json,time
    t=time.process_time();r=audit();r['cpu_seconds']=time.process_time()-t
    print(json.dumps(r,indent=2))
