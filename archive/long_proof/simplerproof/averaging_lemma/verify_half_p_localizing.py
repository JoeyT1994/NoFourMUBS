"""Exact Laurent checks of p/2 +/- J matrices and universal side moments."""
import inspect,json,hashlib,itertools,sys
from pathlib import Path
import sympy as sp
import numpy as np
import mpmath as mp
import half_p_localizing as local
from reconstruction_polynomials import LP
HERE=Path(__file__).resolve().parent

def run():
    A,B,x,y=sp.symbols('A B x y')
    star=lambda z:sp.sympify(z).xreplace({sp.conjugate(v):1/v for v in [A,B,x,y]})
    source=inspect.getsource(local.affine_data)
    code=source.split('        c0=',1)[1].split('        ds=[z*',1)[0]
    code='def coefficients(A,B):\n        c0='+code+'        return ds\n'
    namespace={};exec(code,namespace);ds=list(map(star,namespace['coefficients'](A,B)))
    powers=[(0,0),(1,0),(0,1),(1,-1),(-1,0),(0,-1),(-1,1)]
    s,t,r=-1-A-x,-1-B-y,-1-B/A-y/x
    target=s*r*star(sp.conjugate(t))+star(sp.conjugate(s*r))*t
    assert sp.cancel(sum(c*x**i*y**j for c,(i,j) in zip(ds,powers))-target)==0
    code=source.split('        p0=',1)[1].split('        ps=[z*',1)[0]
    namespace={};exec('def coefficients(A,B):\n        p0='+code+'        return ps\n',namespace)
    ps=list(map(star,namespace['coefficients'](A,B)))
    expected_p=sum(v*star(sp.conjugate(v)) for v in [s,t,r])
    assert sp.cancel(sum(c*x**i*y**j for c,(i,j) in zip(ps,powers))-expected_p)==0
    xx=sp.symbols('x0:3');yy=sp.symbols('y0:3')
    conjugates={sp.conjugate(v):1/v for v in xx+yy}
    st=lambda v:sp.conjugate(v).xreplace(conjugates)
    body=source.split('u,v,w,Pi,C1,C2=unknown;m={}',1)[1].split('    powers=',1)[0]
    code='def moments(s,t,r,u,v,w,Pi,C1,C2):\n    const=lambda z:z\n    m={}'+body+'    return m\n'
    namespace={};exec(code,namespace)
    s,t,r=sum(xx),sum(yy),sum(b/a for a,b in zip(xx,yy))
    u,v=sp.prod(xx),sp.prod(yy);pi=s*t-sum(a*b for a,b in zip(xx,yy))
    moments=namespace['moments'](s,t,r,u,v,u/v,pi,u*st(pi),v*st(pi))
    for (i,j),value in moments.items():
        expected=sum(a**i*b**j for a,b in zip(xx,yy))
        assert sp.cancel(sp.sympify(value).xreplace(conjugates)-expected)==0,(i,j)
    matrices=local.exact_side();a,b,c,d=[LP.variable(k) for k in range(4)]
    s,t,r=-1-a-b,-1-c-d,-1-c/a-d/b;J=2*(s*r*t.conjugate()).real
    for pair in range(3):
        for i in range(3):
            for j in range(14):
                value=(matrices[2*pair,i,i,j]-matrices[2*pair+1,i,i,j])/2
                assert not (value+(J if j==0 else 0)).d
    controls=[];mp.mp.dps=60
    sys.path.insert(0,str(HERE.parents[1]/'MinimalConstruction/Implementation'));from model import Model
    rows=json.loads((HERE/'unresolved_admissible_probe_seeds.json').read_text())['rows'][:2]
    for row in rows:
        path=row['path'];angles=[mp.pi*(2*int(path[j::4],2)+1-64)/64 for j in range(4)]
        for sign in [1,-1]:
            H=np.array(Model([mp.exp(mp.j*x) for x in angles],sign).hadamard().tolist(),complex)
            for orientation,H0 in enumerate([H,H.T]):
                theta=np.array(list(map(float,angles)))[[0,2,1,3] if orientation else [0,1,2,3]]
                B=H0[:3,3:];xv,yv=B[1]/B[0],B[2]/B[0]
                u,v=np.prod(xv),np.prod(yv);pi=sum(xv)*sum(yv)-sum(xv*yv)
                zz=[u,v,u/v,pi,u*np.conj(pi),v*np.conj(pi)]
                values=np.r_[1,np.array([[z.real,z.imag] for z in zz]).ravel(),0]
                expected=local.affine_data(theta)
                Ns=np.einsum('aijk,k->aij',(expected[::2]-expected[1::2])/2,values)
                for index,(j,k) in enumerate([(0,1),(0,2),(1,2)]):
                    direct=np.zeros((3,3),complex)
                    for l in range(3):
                        E=H0[:3,[j,k,l+3]];G=6*np.eye(3)-E@E.conj().T
                        signed_J=2*(G[1,0]*G[2,1]*np.conj(G[2,0])).real
                        column=B[:,l]/B[0,l];direct+=signed_J*np.outer(column,np.conj(column))
                    P=np.zeros((3,3),complex)
                    for l in range(3):
                        E=H0[:3,[j,k,l+3]];G=6*np.eye(3)-E@E.conj().T
                        signed_p=sum(abs(G[a,b])**2 for a,b in [(1,0),(2,0),(2,1)])
                        column=B[:,l]/B[0,l];P+=signed_p*np.outer(column,np.conj(column))
                    actual=np.einsum('aijk,k->aij',expected,values)
                    error=max(float(np.max(abs(direct-Ns[index]))),float(np.max(abs(actual[2*index]-(P/2+direct)))),float(np.max(abs(actual[2*index+1]-(P/2-direct)))))
                    assert error<1e-9
                    controls.append(error)
    files=['half_p_localizing.py','verify_half_p_localizing.py','half_p_certificate.py','half_p_certificate.json','HALF_P_BOUND.tex']
    result=dict(status='PASS_EXACT_HALF_P_LOCALIZING_ALGEBRA',seven_term_J_identity_exact=True,seven_term_p_identity_exact=True,
        exact_side_moments=len(moments),diagonal_sum_identity_exact=True,numerical_matrix_controls=len(controls),
        maximum_control_error=max(controls),global_confinement_proved=False,
        scope='Algebra of additional PSD necessary conditions, not a global cover',
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in files})
    (HERE/'half_p_localizing_algebra_receipt.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))

if __name__=='__main__':run()
