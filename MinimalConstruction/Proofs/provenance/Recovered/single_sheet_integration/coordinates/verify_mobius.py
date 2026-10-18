"""Independent checks of the supplied Möbius–cubic normal form.

Consolidated from the exact, Tao-census and numerical checks independently
reconstructed during the 20 September review. No upstream implementation or
verifier was supplied or used. Requires SymPy and NumPy. The local AUDIT.json
contains the reproducible barycentric sample seeds. Numerical checks are in
double precision and do not prove global soundness or interval bounds.
"""
from pathlib import Path
import json

def verify_exact():
    from pathlib import Path
    from itertools import permutations,combinations
    from collections import Counter
    import json
    import sympy as sp
    import numpy as np
    ROOT=Path(__file__).resolve().parent
    report={}
    s,S,t,T,r,R,z,u,x=sp.symbols('s S t T r R z u x')
    sharp=lambda e:sp.sympify(e).xreplace({s:S,S:s,t:T,T:t,r:R,R:r})
    X,Y,Z=s*S,t*T,r*R
    p=X+Y+Z;J=s*r*T+S*R*t;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    P=r*s*s+R*t*t+(3-Z)*s*t;Q=t*S*S+r*r*T+(3-Y)*r*S
    assert sp.expand(P*sharp(P)-g*g-(9-Z)*chi-(9-Z)**2*eta)==0
    assert sp.expand(Q*sharp(Q)-g*g-(9-Y)*chi-(9-Y)**2*eta)==0
    G=sp.Matrix([[3,S,T],[s,3,R],[t,r,3]])
    Gamma=sp.Matrix([[9-Z,r*T-3*S,S*R-3*T],[R*t-3*s,9-Y,s*T-3*R],[s*r-3*t,S*t-3*r,9-X]])
    assert sp.expand(G.det()-g)==0
    assert all(sp.expand(v)==0 for v in G.adjugate()-Gamma)
    report['exact_scalar_norms_and_gram_cofactors']=True
    print('PASS: scalar norm identities and Gram cofactors',flush=True)
    a,b,c,d=sp.symbols('a b c d',nonzero=True)
    seedsharp=lambda e:sp.sympify(e).xreplace({a:1/a,b:1/b,c:1/c,d:1/d})
    ss=-(1+a+b);tt=-(1+c+d);rr=-(1+c/a+d/b)
    subs={s:ss,t:tt,r:rr,S:seedsharp(ss),T:seedsharp(tt),R:seedsharp(rr)}
    det=a*d-b*c-d+b+c-a;per=a*d+b*c+a+b+c+d;M=a*b*c*d
    A=det*seedsharp(det);B=per*seedsharp(per);K=per*det**2/M
    assert sp.expand(g.subs(subs)-2*A+3*B)==0
    assert sp.expand(eta.subs(subs)-A+2*B)==0
    assert sp.expand(chi.subs(subs)+K+seedsharp(K)+(A-B+12)*(A-3*B)/2)==0
    report['exact_seed_determinant_permanent_identities']=True
    print('PASS: determinant/permanent seed identities',flush=True)
    # The bridge follows from scalar norm identities; test as a polynomial identity
    # with g, eta, chi, |t|^2, |r|^2 treated as independent real indeterminates.
    gg,ee,cc,yy,zz=sp.symbols('g eta chi Y Z')
    aP=gg**2+(9-zz)*cc+(9-zz)**2*ee
    aQ=gg**2+(9-yy)*cc+(9-yy)**2*ee
    del_=zz-yy;rho=aP+aQ-del_**2*ee
    bridge=sp.expand(2*aP*(gg+(9-yy)*z)-(rho+del_*(2*gg*z-cc))*(gg+(9-zz)*z))
    assert sp.rem(bridge,gg*z*z-cc*z+gg*ee,z)==0
    report['exact_signed_product_bridge']=True
    print('PASS: signed product bridge',flush=True)

    simp=lambda e:sp.simplify(sp.expand_complex(e))
    def traces(seed):
     a,b,c,d=seed
     return [-(1+a+b),-(1+c+d),-(1+c/a+d/b)]
    def exact_side(seed,g,zz,roots):
     s,t,r=map(simp,traces(seed));n=9-r*sp.conjugate(r)
     P=simp(r*s*s+sp.conjugate(r)*t*t+(3-r*sp.conjugate(r))*s*t)
     Q=simp(t*sp.conjugate(s)**2+r*r*sp.conjugate(t)+(3-t*sp.conjugate(t))*r*sp.conjugate(s))
     lam=simp(P/(g+n*zz));mu=simp(Q/(g+(9-t*sp.conjugate(t))*zz));u=simp(lam/mu)
     beta=simp((3*t-r*s+lam*(r*sp.conjugate(t)-3*sp.conjugate(s)))/n)
     L=simp(lam*sp.conjugate(beta));v=simp(lam*(1-beta*sp.conjugate(beta)))
     q=x**3-s*x*x+u*sp.conjugate(s)*x-u
     q0=simp(q.subs(x,-L));q1=simp(sp.diff(q,x).subs(x,-L))
     T0=simp(q0*sp.conjugate(q0)+q1*sp.conjugate(q1));assert T0>0
     alpha=simp((-v*sp.conjugate(q0)+(t-3*beta)*sp.conjugate(q1))/T0)
     assert simp((t-3*beta)*q0+v*q1)==0
     if roots is None:
      roots=sp.solve(q,x)
      assert len(roots)==3
     ys=[];poles=0
     for root in roots:
      assert simp(q.subs(x,root))==0
      val=simp(beta+alpha*(root**2-(s+L)*root+L**2+s*L+u*sp.conjugate(s)))
      if simp(root+L)==0: poles+=1;assert simp(val-(t-2*beta))==0
      else:assert simp(val-(lam+beta*root)/(root+L))==0
      assert simp(val*sp.conjugate(val)-1)==0
      ys.append(val)
     return sp.Matrix([[1]*3,roots,ys]),poles
    cases=[('hcross',[-1,-1,-1,sp.I],0,[1,sp.I,-sp.I],[1,sp.I,-sp.I]),
     ('zero_imbalance',[sp.I,-sp.I,-sp.I,sp.I],(-14+2*sp.I)/5,[-1,sp.I,-sp.I],[-1,sp.I,-sp.I]),
     ('removable',[-1,-sp.I,1,sp.I],0,[1,-1,sp.I],None)]
    exact=[]
    for name,seed,zz,hr,vr in cases:
     seed=list(map(sp.sympify,seed));a,b,c,d=seed;E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
     G=6*sp.eye(3)-E*E.H;g=simp(G.det());assert G.is_positive_definite
     BB,hp=exact_side(seed,g,zz,hr)
     CC,vp=exact_side([a,c,b,d],g,sp.conjugate(zz),vr);CC=CC.T
     DD=(-CC*E.H*G.adjugate()*BB/g).applyfunc(simp)
     HH=E.row_join(BB).col_join(CC.row_join(DD))
     assert all(simp(e)==0 for e in HH*HH.H-6*sp.eye(6))
     assert all(simp(e*sp.conjugate(e)-1)==0 for e in HH)
     exact.append({'name':name,'removable_coordinates':hp+vp})
     print('PASS: exact example',name,'removable coordinates',hp+vp,flush=True)
    report['exact_examples']=exact
    return report


def verify_tao():
    from fractions import Fraction as F
    from itertools import combinations,permutations
    from collections import Counter
    from pathlib import Path
    import json
    class K:
     def __init__(self,a=0,b=0):self.a=F(a);self.b=F(b)
     @staticmethod
     def coerce(q):return q if isinstance(q,K) else K(q)
     def __add__(self,q):
      q=K.coerce(q);return K(self.a+q.a,self.b+q.b)
     __radd__=__add__
     def __neg__(self):return K(-self.a,-self.b)
     def __sub__(self,q):return self+-K.coerce(q)
     def __mul__(self,q):
      q=K.coerce(q);return K(self.a*q.a-self.b*q.b,self.a*q.b+self.b*q.a-self.b*q.b)
     __rmul__=__mul__
     def conj(self):return K(self.a-self.b,-self.b)
     def __truediv__(self,q):
      q=K.coerce(q);n=(q*q.conj()).a;assert n
      t=self*q.conj();return K(t.a/n,t.b/n)
     def __eq__(self,q):q=K.coerce(q);return self.a==q.a and self.b==q.b
     def key(self):return (str(self.a),str(self.b))
     def __repr__(self):return str(self.key())
    O=K(0,1);power=[K(1),O,K(-1,-1)]
    exps=[[0]*6,[0,0,1,1,2,2],[0,1,0,2,2,1],[0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
    H=[[power[v] for v in row] for row in exps]
    perms=list(permutations(range(3)))
    signs=[(-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3)) for p in perms]
    def block(rows,cols):return [[H[i][j] for j in cols] for i in rows]
    def invariant(A):
     vals=[A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in perms]
     det=sum(s*v for s,v in zip(signs,vals));perm=sum(vals);prod=K(1)
     for row in A:
      for q in row:prod=prod*q
     return -(perm*det*det)/(det*det.conj()*prod)
    def had3(A):return all(sum(A[i][k]*A[j][k].conj() for k in range(3))==3*int(i==j) for i in range(3) for j in range(3))
    census=Counter();nonreal=real=0
    for rows in combinations(range(6),3):
     rcomp=[i for i in range(6) if i not in rows]
     for cols in combinations(range(6),3):
      ccomp=[j for j in range(6) if j not in cols]
      E=block(rows,cols);B=block(rows,ccomp);C=block(rcomp,cols)
      census[invariant(E).key()]+=1
      thb,thc=invariant(B),invariant(C)
      assert thb==thc
      if thb!=thb.conj():nonreal+=1
      else:
       real+=1;assert thb==-3 and had3(B) and had3(C)
    assert census=={('-1','1'):180,('-2','-1'):180,('-3','0'):40}
    assert (nonreal,real)==(360,40)
    report={'status':'PASS','field':'Exact Q(omega), omega^2+omega+1=0','corner_count':400,'theta_census':[{'a':a,'b':b,'count':n} for (a,b),n in sorted(census.items())],'equal_side_invariants':400,'nonreal_matching_failures':nonreal,'real_PQ_zero_cases':real}
    print('PASS: exact 400-corner Tao census and exclusion',flush=True)
    return report


def verify_numeric():
    from pathlib import Path
    from itertools import permutations
    import numpy as np
    import json
    base=Path(__file__).resolve().parent
    records=json.loads((base/'AUDIT.json').read_text())['records']
    def data(seed):
     a,b,c,d=seed;s,t,r=-(1+a+b),-(1+c+d),-(1+c/a+d/b)
     P=r*s*s+r.conjugate()*t*t+(3-abs(r)**2)*s*t
     Q=t*s.conjugate()**2+r*r*t.conjugate()+(3-abs(t)**2)*r*s.conjugate()
     return s,t,r,P,Q
    def side(seed,g,z):
     s,t,r,P,Q=data(seed)
     lam=P/(g+(9-abs(r)**2)*z);mu=Q/(g+(9-abs(t)**2)*z);u=lam/mu
     beta=(3*t-r*s+lam*(r*t.conjugate()-3*s.conjugate()))/(9-abs(r)**2)
     L=lam*beta.conjugate();v=lam*(1-abs(beta)**2)
     q=lambda x:x**3-s*x*x+u*s.conjugate()*x-u
     q0=q(-L);q1=3*L*L+2*s*L+u*s.conjugate()
     T0=abs(q0)**2+abs(q1)**2
     alpha=(-v*q0.conjugate()+(t-3*beta)*q1.conjugate())/T0
     roots=np.roots([1,-s,u*s.conjugate(),-u])
     y=beta+alpha*(roots**2-(s+L)*roots+L*L+s*L+u*s.conjugate())
     return np.array([np.ones(3),roots,y])
    def oldside(seed,sign,match):
     s,t,r,P,Q=data(seed);delta=abs(r)**2-abs(t)**2
     eta=9-abs(s)**2-abs(t)**2-abs(r)**2+2*(s*r*t.conjugate()).real
     f=P.conjugate()*Q;rho=abs(P)**2+abs(Q)**2-delta*delta*eta
     discr=(4*abs(f)**2-rho*rho)/(delta*delta)
     u=(rho+1j*sign*delta*np.sqrt(discr))/(2*f)
     roots=np.roots([1,-s,u*s.conjugate(),-u])
     perm=min(permutations(range(3)),key=lambda pp:np.max(abs(roots[list(pp)]-match)))
     roots=roots[list(perm)];k=(P-Q*u)/delta
     y=(t*roots**2+k*roots+u*r)/(3*roots**2-2*s*roots+u*s.conjugate())
     return np.array([np.ones(3),roots,y])
    def theta(X):
     per=sum(np.prod([X[i,p[i]] for i in range(3)]) for p in permutations(range(3)))
     det=np.linalg.det(X)
     return -per*det*det/(abs(det)**2*np.prod(X))
    worst={k:0. for k in ['modulus','orthogonality','difference_from_barycentric','theta_matching']}
    for record in records:
     seed=np.exp(1j*np.array(record['seed_angles']));a,b,c,d=seed
     E=np.array([[1,1,1],[1,a,b],[1,c,d]],complex)
     det=np.linalg.det(E);per=a*d+b*c+a+b+c+d;M=a*b*c*d
     A=abs(det)**2;BB=abs(per)**2;g=2*A-3*BB;eta=A-2*BB
     chi=-2*(per*det*det/M).real-(A-BB+12)*(A-3*BB)/2
     discr=4*g*g*eta-chi*chi
     assert g>0 and discr>=0
     G=6*np.eye(3)-E@E.conj().T
     s,t,r,_,_=data(seed)
     Gamma=np.array([[9-abs(r)**2,r*t.conjugate()-3*s.conjugate(),s.conjugate()*r.conjugate()-3*t.conjugate()],
     [r.conjugate()*t-3*s,9-abs(t)**2,s*t.conjugate()-3*r.conjugate()],
     [s*r-3*t,s.conjugate()*t-3*r,9-abs(s)**2]])
     for sign in [-1,1]:
      z=(chi+1j*sign*np.sqrt(discr))/(2*g)
      B=side(seed,g,z);C=side([a,c,b,d],g,z.conjugate()).T
      D=-C@E.conj().T@Gamma@B/g;H=np.block([[E,B],[C,D]])
      B0=oldside(seed,sign,B[1]);C0=oldside([a,c,b,d],-sign,C[:,1]).T
      D0=-C0@E.conj().T@np.linalg.solve(G,B0);H0=np.block([[E,B0],[C0,D0]])
      errors={'modulus':np.max(abs(abs(H)-1)), 'orthogonality':np.max(abs(H@H.conj().T-6*np.eye(6))),
       'difference_from_barycentric':np.max(abs(H-H0)),'theta_matching':abs(theta(C)-theta(B).conjugate())}
      for k,v in errors.items():worst[k]=max(worst[k],float(v))
    assert all(v<1e-6 for v in worst.values()),worst
    report={'status':'PASS','precision':'ordinary double precision; not an interval certificate','seed_count':len(records),'matrix_count':2*len(records),'max_errors':worst,'sample_source':'MeasurementCompatibility/coordinates/AUDIT.json'}
    print('PASS: 200 double-precision matrices and barycentric comparison',flush=True)
    return report

def main():
    report = {
        "status": "PASS",
        "scope": "Independent exact identities and boundary examples, exact Tao census, and double-precision regression. Global flatness and coverage still use the paper and the written extension argument.",
        "exact": verify_exact(),
        "tao": verify_tao(),
        "numerical": verify_numeric(),
    }
    output = Path(__file__).with_name("MOBIUS_VERIFICATION.json")
    output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
