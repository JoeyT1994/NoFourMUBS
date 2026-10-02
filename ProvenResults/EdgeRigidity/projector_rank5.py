"""Exact Fourier-block refinement and uniform three-row projector controls."""
import itertools as it
from fractions import Fraction as F
import sympy as s
from hx_nonbinary import Q,physical,star,mul,scale,diag
from one_binary import det3
from compatibility import Exact

TAO=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
     [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]

def symbolic():
    omega=(-1+s.I*s.sqrt(3))/2
    K=s.QQ.algebraic_field(omega);R=K.frac_field('p','q','r','t')
    p,q,r,t=R.gens;w=R.convert(K.from_sympy(omega),K);one=R.one
    v=[one,p,q];u=[one,r,t]
    vh=[sum((v[l]*w**(k*l) for l in range(3)),R.zero) for k in range(3)]
    vb=[sum((v[l]**-1*w**(-k*l) for l in range(3)),R.zero) for k in range(3)]
    A=[vh[k]*vb[(k-1)%3] for k in range(3)]
    Ab=[vb[k]*vh[(k-1)%3] for k in range(3)]
    ah=[sum((A[k]*w**(j*k) for k in range(3)),R.zero) for j in range(3)]
    assert not ah[0]
    candidates=[3*(q+w/p+w*w*p/q),3*(p+w*q/p+w*w/q)]
    assert any(all(not (a-b) for a,b in zip(ah[1:],cs)) for cs in (candidates,candidates[::-1]))
    alpha=[1/r,r/t,t];alphab=[r,t/r,1/t]
    conv=[sum((alpha[m]*A[(k-m)%3] for m in range(3)),R.zero) for k in range(3)]
    convb=[sum((alphab[m]*Ab[(k-m)%3] for m in range(3)),R.zero) for k in range(3)]
    for j,k in it.product(range(3),repeat=2):
        D=-sum((u[m]*vh[(k-m)%3]*w**(j*m) for m in range(3)),R.zero)/3
        Db=-sum((u[m]**-1*vb[(k-m)%3]*w**(-j*m) for m in range(3)),R.zero)/3
        assert not (9*(D*Db-1)-w**(-j)*conv[k]-w**j*convb[k])
    for j in range(3):
        left=sum((conv[k]*w**(j*k) for k in range(3)),R.zero)
        right=sum((alpha[m]*w**(j*m) for m in range(3)),R.zero)*ah[j]
        assert not (left-right)
    return {'field':'Q(omega)(p,q,r,t)','modulus_autocorrelation_identities':9,
            'convolution_identities':3,'Ahat_zero_and_explicit_nonconstant_coefficients':True}

def tao_equivalence(exponents):
    wanted=list(map(tuple,TAO));target=set(wanted)
    for r0 in range(6):
        for cols in it.permutations(range(6)):
            c0=cols[0]
            rows=[tuple((exponents[r][c]-exponents[r][c0]-exponents[r0][c]+exponents[r0][c0])%3
                        for c in cols) for r in range(6)]
            if set(rows)==target:
                perm=[rows.index(t) for t in wanted]
                assert [rows[i] for i in perm]==wanted and perm[0]==r0
                return {'rows':perm,'columns':list(cols)}
    raise AssertionError('no Tao equivalence: retain this case')

def finite():
    ii=Q({1:1});r3=Q({4:1});w=(-1+ii*r3)/2;roots=[w**j for j in range(3)]
    FF=[[w**(i*j) for j in range(3)] for i in range(3)]
    counts={'total':0,'nonphysical':0,'zero3':0,'tao':0};witnesses=[]
    for ex in it.product(range(3),repeat=4):
        counts['total']+=1;p,q,r,t=[roots[i] for i in ex]
        B=mul(diag([Q(1),p,q]),FF);C=mul(FF,diag([Q(1),r,t]))
        D=scale(mul(mul(C,star(FF)),B),F(-1,3))
        if any(z*z.bar()!=1 for row in D for z in row):
            counts['nonphysical']+=1;continue
        H=[a+b for a,b in zip(FF,B)]+[a+b for a,b in zip(C,D)];physical(H)
        if (ex[1]-2*ex[0])%3==0 or (ex[3]-2*ex[2])%3==0:
            witness=next(({'rows':list(I),'columns':list(J)}
                          for I,J in it.product(it.combinations(range(6),3),repeat=2)
                          if det3([[H[i][j] for j in J] for i in I])==0),None)
            assert witness is not None;counts['zero3']+=1
        else:
            assert all(z**3==1 for row in H for z in row)
            exponents=[[next(k for k in range(3) if z==roots[k]) for z in row] for row in H]
            eq=tao_equivalence(exponents)
            # Independently check the monomial phases in the ORIGINAL exact field.
            rr,cc=eq['rows'],eq['columns'];r0,c0=rr[0],cc[0]
            assert [[H[i][j]*H[r0][c0]/(H[i][c0]*H[r0][j]) for j in cc] for i in rr]==[[roots[k] for k in row] for row in TAO]
            moment=sum((H[0][j]*H[1][j]*H[2][j]*(H[3][j]*H[4][j]*H[5][j]).bar() for j in range(6)),Q())
            assert moment*moment.bar()==9
            counts['tao']+=1;witnesses.append({'parameters':list(ex),**eq})
    assert counts=={'total':81,'nonphysical':18,'zero3':45,'tao':18}
    T=[[roots[k] for k in row] for row in TAO];physical(T)
    assert all(det3([[T[i][j] for j in J] for i in I])!=0
               for I,J in it.product(it.combinations(range(6),3),repeat=2))
    return {'counts':counts,'tao_monomial_witnesses':witnesses,
            'tao_nonzero_three_minors':400,'mixed_balanced_moment_squared':9}

def rank5_control():
    E=Exact(s.QQ.algebraic_field(s.I,s.sqrt(33)))
    a=s.I;b=(3-4*s.I)/5;c=(-57-176*s.I)/185;d=(2-12*s.I+(6+s.I)*s.sqrt(33))/37
    H=E.matrix([[1]*6,[1,a,b,a/c,a/d,a*d/(b*c)],[1,c,d,a,b*c/d,a/b],
       [1,a/b,-1,a/d,-a/d,-a/b],[1,d,-d,a*d/(b*c),-1,-a*d/(b*c)],
       [1,b*c/d,-b,b,-b*c/d,-1]])
    E.validate_hadamard(H);h=H.to_list();K=E.F
    triples=list(it.combinations(range(6),3))
    assert all(H.extract(I,J).det()!=K.zero for I,J in it.product(triples,repeat=2))
    from sympy.polys.matrices import DomainMatrix
    ranks=[];normal_determinants=[]
    for T in (H,H.transpose()):
        hh=T.to_list()
        for I in triples:
            pairs=list(it.combinations(range(3),2))
            z=[[hh[I[i]][k]*E.bar(hh[I[j]][k]) for k in range(6)] for i,j in pairs]
            R=DomainMatrix([*z,*[[E.bar(v) for v in row] for row in z]],(6,6),K).to_sparse()
            ranks.append(R.rank())
            ns=R.transpose().nullspace()
            assert ns.shape==(1,6) and E.is_zero(R.transpose()*ns.transpose())
            v=ns.to_list()[0];N=[[K.zero]*3 for _ in range(3)]
            for j,(i,k) in enumerate(pairs):N[k][i]=v[j];N[i][k]=v[j+3]
            det=DomainMatrix(N,(3,3),K).det()
            assert det!=K.zero
            normal_determinants.append(True)
    assert ranks==[5]*40
    moment=sum((h[0][j]*h[1][j]*h[2][j]*E.bar(h[3][j]*h[4][j]*h[5][j]) for j in range(6)),K.zero)
    assert moment==K.zero
    # Independently construct a COMPLETE mate at this fixed carrier, in a
    # cubic algebra. No numerical cube/square roots or all-mates premise.
    R=K.poly_ring('q');q=R.gens[0]
    aa,bb,cc,dd=[h[i][j] for i,j in [(1,1),(1,2),(2,1),(2,2)]]
    ac=aa*cc;mod=q**3-R.convert(ac,K)
    red=lambda x:x.rem(mod)
    qr=q*q/R.convert(ac,K)
    const=lambda x:R.convert(x,K)
    uu=[R.one,const(aa)*qr,q]
    vv=[R.one,const(dd)*qr,const(bb/aa)*q]
    def bar(x):
        return red(sum((const(E.bar(c))*qr**m[0] for m,c in x.to_dict().items()),R.zero))
    assert all(red(x*bar(x))==R.one for x in uu+vv)
    XY=[]
    for j in range(6):
        A=red(sum((uu[i]*const(E.bar(h[i][j])) for i in range(3)),R.zero))
        B=red(sum((vv[i]*const(E.bar(h[i+3][j])) for i in range(3)),R.zero))
        assert red(A*bar(A)+B*bar(B))==const(K.convert(6))
        X,Y=red(A*bar(B)),red(B*bar(A))
        assert bar(X)==Y
        XY.append((X,Y))
    assert all(red(X*Yp-Xp*Y)==R.zero for (X,Y),(Xp,Yp) in it.combinations(XY,2))
    # Orthogonality for all three q roots and BOTH signs at each root.
    aq,bq,dq,q0,q1,z0,z1=s.symbols('a b d q0 q1 z0 z1',nonzero=True)
    x0=[1,aq/q0,q0,z0,dq*z0/q0,bq*q0*z0/aq]
    x1=[1,aq/q1,q1,z1,dq*z1/q1,bq*q1*z1/aq]
    assert s.cancel(sum(y/x for x,y in zip(x0,x1))-(1+z1/z0)*(1+q1/q0+q0/q1))==0
    return {'field':'Q(i,sqrt(33))','nonzero_three_minors':400,'three_row_feature_ranks':ranks[:20],
            'transpose_three_row_feature_ranks':ranks[20:],
            'nonsingular_projector_normals_H_and_transpose':len(normal_determinants),
            'full_mate_cubic_algebra':{'constant_modulus_identities':6,
                'cross_pivot_identities':15,'all_zero_pivots_retained':True,
                'six_ray_orthogonality_factorization':True},
            'balanced_first_moment':0,'scope':'exact extendible carrier with forty nonsingular projector normals; global rank claim uses the written proof'}

def calculate():
    return {'evidence_label':'Certified computation','symbolic':symbolic(),
            'finite_mixed_cases':finite(),'rank5_control':rank5_control(),
            'scope':'complete finite Fourier-block cases plus identities and controls for the analytic rank theorem'}

if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    import json
    print(json.dumps(calculate(),indent=2,sort_keys=True))
