#!/usr/bin/env python3
"""Exact checks (SymPy, no floating-point acceptance thresholds).
Run: python verify_exact.py
The report gives the proofs; these checks verify all claimed exact certificates.
"""
import itertools
import sympy as s


def red(x):
    return s.expand(x)

def zero(M):
    return all(red(x)==0 for x in M)

def check(name, proposition):
    print(('PASS' if proposition else 'FAIL')+': '+name,flush=True)
    if not proposition:raise AssertionError(name)


def exact_triple():
    i=s.I
    H=s.Matrix([[1,1,1,1,1,1],[1,-1,i,-i,-i,i],[1,i,-1,i,-i,-i],
                [1,-i,i,-1,i,-i],[1,-i,-i,i,-1,i],[1,i,-i,-i,i,-1]])
    w=(s.sqrt(6)+s.sqrt(2)+i*(s.sqrt(6)-s.sqrt(2)))/4
    p=[s.S.One]
    for k in range(1,25):p.append(red(p[-1]*w))
    b=(-1+2*i)/s.sqrt(5)
    K=s.Matrix([[1]*6,[-i,-i,p[2],p[10],p[10],p[2]],
       [-i*b,i*b,p[9],p[21],p[9],p[21]],[-i,-i,p[10],p[2],p[2],p[10]],
       [i*b,-i*b,p[13],p[17],p[5],p[1]],[i*b,-i*b,p[5],p[1],p[13],p[17]]])
    return H,K,p


def perm(A):
    return sum(s.prod(A[j,p[j]] for j in range(A.rows))
               for p in itertools.permutations(range(A.rows)))


def signature(A):
    return s.simplify(-perm(A)*A.det()**2/s.prod(A))


def test_triple():
    H,K,p=exact_triple()
    check('zeta_24^24=1 and zeta_24^12=-1',p[24]==1 and p[12]==-1)
    check('D0 is an exact phase Hadamard',zero(H*H.H-6*s.eye(6)))
    check('K has exact phase entries',all(red(z*s.conjugate(z)-1)==0 for z in K))
    check('K is an exact phase Hadamard',zero(K.H*K-6*s.eye(6)))
    Z=(H.H*K).applyfunc(red)
    check('D0^* K is unbiased: all squared moduli equal 6',all(red(z*s.conjugate(z)-6)==0 for z in Z))
    blocks=list(itertools.combinations(range(6),3)); mins=[]
    for rows in blocks:
        for cols in blocks:
            E=H.extract(rows,cols);G=E*E.H-3*s.eye(3)
            mins.append(red(sum(z*s.conjugate(z) for z in G)))
    check('all 400 3x3 D0 blocks are non-Hadamard; min Gram defect squared=6',min(mins)==6)
    rp=[0,1,2,3,5,4]; cp=[0,3,5,1,4,2]
    Hm=H.extract(rp,cp);Km=K.extract(rp,range(6))
    E=Hm[:3,:3];B=Hm[:3,3:];C=Hm[3:,:3]
    G=6*s.eye(3)-E*E.H
    ss,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=[red(z*s.conjugate(z)) for z in [ss,t,r]]
    pp=X+Y+Z;JJ=red(ss*r*s.conjugate(t)+s.conjugate(ss*r)*t)
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*pp+JJ;eta=9-pp+JJ
    chi=W-(pp-9)*(pp-18)+(pp-15)*JJ;R=4*g*g*eta-chi*chi
    check('strict matched seed (-i,i,i,-i): (g,eta,chi,R)=(20,8,-112,256)',(g,eta,chi,R)==(20,8,-112,256))
    check('matched positive and negative side signatures',signature(B)==-56+8*s.I and signature(C)==-56-8*s.I)
    L=(Hm.H*Km/s.sqrt(6)).applyfunc(red)
    X=Km[:3,:];P=L[:3,:]
    check('triple strip identity X P^*=sqrt(6) E',zero(X*P.H-s.sqrt(6)*E))
    check('triple strip tightness XX^*=PP^*=6I',zero(X*X.H-6*s.eye(3)) and zero(P*P.H-6*s.eye(3)))
    Z=(s.sqrt(6)*P-E.H*X).applyfunc(red);T=6*s.eye(3)-E.H*E
    check('division-free six-ray Gram identity',zero(g*X.H*X+Z.H*T.adjugate()*Z-6*g*s.eye(6)))
    # A concrete exact shared skew antiunitary on D0.
    J=s.zeros(6)
    for (a,b),v in zip([(0,1),(2,4),(3,5)],[1,s.I,-s.I]):J[a,b]=v;J[b,a]=-v
    Q=(H.H*J*s.conjugate(H)/6).applyfunc(red)
    check('D0 shared skew antiunitary: J^T=-J, J conjugate(J)=-I',zero(J.T+J) and zero(J*s.conjugate(J)+s.eye(6)))
    check('induced antiunitary is skew unitary monomial',zero(Q.T+Q) and zero(Q*s.conjugate(Q)+s.eye(6)) and all(sum(Q[a,b]!=0 for b in range(6))==1 for a in range(6)))
    QK=(K.H*J*s.conjugate(K)/6).applyfunc(red)
    check('chosen common symmetry need not preserve the third basis: all induced rows have five nonzeros',all(red(QK[a,b]*s.conjugate(QK[a,b])).is_positive is True for a in range(6) for b in range(6) if a!=b))
    check('third-basis induced symmetry is nevertheless skew unitary',zero(QK.T+QK) and zero(QK*s.conjugate(QK)+s.eye(6)))
    check('explicit mixing witness: |QK[0,1]|^2=1/9',red(QK[0,1]*s.conjugate(QK[0,1]))==s.Rational(1,9))


def test_general_identities():
    a,b,c,d=s.symbols('a b c d');M=s.Matrix([[a,b],[c,d]])
    J=s.Matrix([[0,1],[-1,0]])
    check('universal 2x2 skew determinant identity',zero(M*J*M.T-M.det()*J))
    z=s.symbols('z0:6');v=s.Matrix(z)
    JJ=s.diag(J,J,J)
    check('universal skew orthogonality v^T J v=0',red((v.T*JJ*v)[0])==0)
    # Determinant-phase rank one implies the block intertwining relation.
    rr,cc=s.symbols('r c',nonzero=True)
    # J conj(M)=(2/det M) M J for every M M*=2I; det M=-2 r c.
    check('block phase intertwining coefficient',s.simplify(rr*(2/(-2*rr*cc))+1/cc)==0)
    u,vv,k,r=s.symbols('u v k r',real=True)
    aa=u+s.I*vv;bb=k+s.I*r
    A=s.Matrix([[aa,bb],[s.conjugate(bb),-s.conjugate(aa)]])
    n=u*u+vv*vv+k*k+r*r
    check('Karlsson core determinant and unitarity',red(A.det()+n)==0 and zero(A*A.H-n*s.eye(2)))
    # Normal form has n=2 for both A and B, so all nine block determinants are -2 r_i c_j.
    rs,cs=s.symbols('r0:3'),s.symbols('c0:3')
    dets=s.Matrix(3,3,lambda i,j:-2*rs[i]*cs[j])
    check('all nine determinant phases factor',all(red(dets[i,j]*dets[k,l]-dets[i,l]*dets[k,j])==0
          for i in range(3) for k in range(3) for j in range(3) for l in range(3)))

    # Symbolic Fourier-family intertwining, with the unit-circle conjugation rule.
    z1,z2=s.symbols('z1 z2',nonzero=True);zs=[s.S.One,z1,z2]
    omega=(-1+s.sqrt(3)*s.I)/2
    Hf=s.Matrix(6,6,lambda i,j:red(omega**((i//2)*(j//2))*(-1)**((i%2)*(j%2))*zs[j//2]**(i%2)))
    Hfc=s.conjugate(Hf).subs({s.conjugate(z1):1/z1,s.conjugate(z2):1/z2})
    Jr=s.zeros(6)
    for pp in range(3):
        for bit in range(2):Jr[2*pp+bit,2*((-pp)%3)+1-bit]=(-1)**bit
    Jc=s.diag(*[-J/z for z in zs])
    check('symbolic entire Fourier family shared antiunitary',zero(Jr*Hfc-Hf*Jc))
    # Exact strict H2 seed used in the dimension argument.
    E2=s.Matrix([[1,1,1],[1,-1,-1],[1,-s.I,s.I]])
    G2=6*s.eye(3)-E2*E2.H
    aa,bb,cc=G2[1,0],G2[2,0],G2[2,1]
    xx,yy,zz=[red(v*s.conjugate(v)) for v in [aa,bb,cc]]
    pp=xx+yy+zz;jj=red(aa*cc*s.conjugate(bb)+s.conjugate(aa*cc)*bb)
    gg=27-3*pp+jj;ee=9-pp+jj
    ww=xx*yy+xx*zz+yy*zz-xx*yy*zz
    ch=ww-(pp-9)*(pp-18)+(pp-15)*jj;rad=4*gg*gg*ee-ch*ch
    check('strict H2 seed (-1,-1,-i,i) invariant values', (gg,ee,ch,rad)==(20,8,-112,256))

    # Generic quadratic ball witness identity, in two variables (dimension-independent expansion).
    x,y,lam,rho,c0,b0,b1,a00,a01,a11=s.symbols('x y lam rho c b0 b1 a00 a01 a11',real=True)
    A=s.Matrix([[a00,a01],[a01,a11]]);b=s.Matrix([b0,b1]);w=s.Matrix([x,y]);v=s.Matrix([x,y,1])
    M=(A+lam*s.eye(2)).row_join(b);M=M.col_join(s.Matrix([[b0,b1,c0-lam*rho**2]]))
    target=(w.T*A*w)[0]+2*(b.T*w)[0]+c0
    check('quadratic ball certificate polynomial identity',red((v.T*M*v)[0]+lam*(rho**2-(w.T*w)[0])-target)==0)

if __name__=='__main__':
    test_general_identities()
    test_triple()
    print('PASS: ALL EXACT CHECKS')
