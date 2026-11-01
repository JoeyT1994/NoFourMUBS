"""Exact algebra supporting the all-strict side-fiber proof.

No random tests, interpolation or sampled acceptance. The written proof
supplies the density, specialization, and orbit-count arguments.
"""
from itertools import permutations
import json,time
import sympy as sp


def run():
    started=time.process_time()
    x=sp.symbols('x0:3',nonzero=True)
    y=sp.symbols('y0:3',nonzero=True)
    w=sp.Symbol('w')
    def red(expr):
        return sp.rem(sp.expand(expr),w*w+w+1,w).expand()
    def star(expr):
        return red(sp.sympify(expr).xreplace({**{v:1/v for v in x+y},w:-1-w}))
    X=sp.Matrix([[1]*3,list(x),list(y)])
    det=sp.expand(X.det())
    per=sp.expand(sum(sp.prod(X[i,p[i]] for i in range(3))
                      for p in permutations(range(3))))
    u,v=sp.prod(x),sp.prod(y)
    s,t,r=sum(x),sum(y),sum(yj/xj for xj,yj in zip(x,y))
    ss,tt,rr=star(s),star(t),star(r)
    P=[r*s*s+rr*t*t+(3-r*rr)*s*t,
       t*ss*ss+r*r*tt+(3-t*tt)*r*ss,
       s*tt*tt+rr*rr*ss+(3-s*ss)*rr*tt]
    cs=[9-r*rr,9-t*tt,9-s*ss]
    # lambda0=-uv det*/det, lambda1=lambda0/u, lambda2=lambda0/v.
    # Clear only the already nonzero determinant and unit monomials.
    for Pj,cj,factor in zip(P,cs,(u*v,v,u)):
        assert red(det**2-u*v*cj*star(per)+factor*star(Pj))==0
    print('PASS three intrinsic lambda identities',flush=True)

    def modes(row):
        return [(sum(row)/3),
                red((row[0]+(-1-w)*row[1]+w*row[2])/3),
                red((row[0]+w*row[1]+(-1-w)*row[2])/3)]
    mu,A,B=modes(x);nu,C,D=modes(y)
    alpha=red(mu*mu-u*star(mu))
    gamma=red(2*mu*nu-per/3)
    n=red(1-mu*star(mu))
    k=red(r/3-nu*star(mu))
    delta=red(A*D-B*C)
    identities=[alpha-A*B,gamma-A*D-B*C,
                n-A*star(A)-B*star(B),k-C*star(A)-D*star(B),
                det**2+27*delta**2,
                n*gamma-2*alpha*k-(A*star(A)-B*star(B))*delta,
                A**3-u*A*star(A)-mu*A*B,
                n*C-(A*k-star(B)*delta),
                n*D-(B*k+star(A)*delta)]
    for i,expr in enumerate(identities):
        assert red(expr)==0,i
    # A column reflection preserves Gram and Theta, but reverses delta.
    swap={x[1]:x[2],x[2]:x[1],y[1]:y[2],y[2]:y[1]}
    assert red(delta.xreplace(swap)+delta)==0
    assert sp.expand(per.xreplace(swap)-per)==0
    assert sp.expand(det.xreplace(swap)+det)==0
    print('PASS Fourier inversion and reflection identities',flush=True)

    omega=(-1+sp.I*sp.sqrt(3))/2
    clean=lambda z:sp.simplify(sp.expand_complex(z))
    xx=[sp.Integer(1),omega,omega]
    yy=[omega,sp.Integer(1),omega]
    def jacobian(a,b):
        cols=[]
        for j in range(6):
            ds=sp.I*a[j] if j<3 else 0
            dt=sp.I*b[j-3] if j>=3 else 0
            dr=-sp.I*b[j]/a[j] if j<3 else sp.I*b[j-3]/a[j-3]
            cols.append(sp.Matrix([sp.re(ds),sp.im(ds),sp.re(dt),sp.im(dt),
                                   sp.re(dr),sp.im(dr)]).applyfunc(clean))
        return clean(sp.Matrix.hstack(*cols).det())
    X0=sp.Matrix([[1]*3,xx,yy])
    X1=sp.diag(1,-1,-1)*sp.conjugate(X0)
    assert (X0*X0.H-X1*X1.H).applyfunc(clean)==sp.zeros(3)
    def theta(M):
        perm=sum(sp.prod(M[i,p[i]] for i in range(3)) for p in permutations(range(3)))
        dd=M.det()
        return clean(-perm*dd/(sp.conjugate(dd)*sp.prod(M)))
    theta0,theta1=theta(X0),theta(X1)
    assert theta0==(-3+sp.I*sp.sqrt(3))/2
    assert theta1==sp.conjugate(theta0) and theta1!=theta0
    jac0=jacobian(xx,yy)
    jac1=jacobian(list(X1[1,:]),list(X1[2,:]))
    assert jac0==-9*sp.sqrt(3)/8
    assert jac1!=0
    # These are exact nonsingular witnesses for a universal inverse-function
    # and rational-function argument, not evidence inferred from sampling.
    print('PASS exact two-sheet local-dominance witnesses',flush=True)
    return dict(status='PASS_EXACT_SIDE_FIBER_ALGEBRA',
                intrinsic_lambda_identities=3,Fourier_identities=len(identities),
                reflection_identities=3,
                exact_Gram=str((X0*X0.H).applyfunc(clean)),
                Theta_values=[str(theta0),str(theta1)],
                Jacobian_determinants=[str(jac0),str(jac1)],
                cpu_seconds=time.process_time()-started,
                scope='Exact algebra for SIDE_FIBER.md; no matched-completion flatness or global strict-corner claim.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
