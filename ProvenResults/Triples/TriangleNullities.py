"""Exact proof controls for TriangleNullities.md (global order-six triangle-nullity gap).

Run with cwd = this folder: python3 TriangleNullities.py
"""
import itertools as it
import sympy as s
from sympy.polys.matrices import DomainMatrix
from compatibility import Exact


def sign_space():
    points=list(it.product(range(3),repeat=3));pos={p:i for i,p in enumerate(points)}
    constants={};width=30  # 27 tensor signs, then three common h signs.
    for changed in range(3):
        for summed in range(3):
            if changed==summed:continue
            for a,c in it.product(range(3),repeat=2):
                constants[changed,summed,a,c]=width;width+=1
    equations=[]
    for changed in range(3):
        for summed in range(3):
            if changed==summed:continue
            fixed=3-changed-summed
            for p in points:
                nxt=list(p);nxt[changed]=(nxt[changed]+1)%3
                equations.append((1<<pos[p])^(1<<pos[tuple(nxt)])^
                                 (1<<(27+sum(p)%3))^
                                 (1<<constants[changed,summed,p[changed],p[fixed]]))
    rows=list(equations);pivots=[];r=0
    for j in range(width):
        pivot=next((i for i in range(r,len(rows)) if rows[i]>>j&1),None)
        if pivot is None:continue
        rows[r],rows[pivot]=rows[pivot],rows[r]
        for i in range(len(rows)):
            if i!=r and rows[i]>>j&1:rows[i]^=rows[r]
        pivots.append(j);r+=1
    nullspace=[]
    for j in range(width):
        if j in pivots:continue
        v=1<<j
        for i,p in enumerate(pivots):
            if rows[i]>>j&1:v|=1<<p
        assert all((v&q).bit_count()%2==0 for q in equations)
        nullspace.append(v)
    projected=[v&((1<<27)-1) for v in nullspace]
    factorized=[]
    for axis,j in it.product(range(4),range(3)):
        factorized.append(sum(1<<pos[p] for p in points
                              if (p[axis] if axis<3 else sum(p)%3)==j))
    def rank(vectors):
        basis={}
        for v in vectors:
            while v:
                k=v.bit_length()-1
                if k in basis:v^=basis[k]
                else:basis[k]=v;break
        return len(basis)
    assert (len(equations),width,r,len(nullspace))==(162,84,74,10)
    assert rank(projected)==rank(factorized)==rank(projected+factorized)==9
    return {'equations':162,'variables':84,'rank':74,'sign_projection_dimension':9,
            'factorized_sign_space_dimension':9,'spaces_equal':True}


def free_unitary_identities():
    # Free-star words, modulo adjacent U*U=UU*=I for each generator.
    c,d=s.symbols('c d',real=True)
    def reduce(word):
        out=[]
        for letter in word:
            if out and out[-1]==letter.swapcase():out.pop()
            else:out.append(letter)
        return ''.join(out)
    def multiply(P,Q):
        out={}
        for v,a in P.items():
            for w,b in Q.items():
                key=reduce(v+w);out[key]=s.expand(out.get(key,0)+a*b)
        return {k:v for k,v in out.items() if v!=0}
    M={'v':c,'w':d};Ms={'V':c,'W':d}
    R=multiply(Ms,M);S=multiply(M,Ms)
    assert multiply(multiply({'v':1},R),{'V':1})==S
    assert multiply(multiply({'w':1},R),{'W':1})==S
    N={'':c,'u':d};Ns={'':c,'U':d}
    assert multiply(Ns,N)==multiply(N,Ns)
    return {'free_star_Gram_identities':3}


def physical_controls():
    E=Exact();root=E.scalar((s.sqrt(6)+s.sqrt(2)+s.I*(s.sqrt(6)-s.sqrt(2)))/4)
    powers=[root**j for j in range(24)]
    def phase(exponents):
        return DomainMatrix([[powers[j%24] for j in row] for row in exponents],(6,6),E.F).to_sparse()
    A=phase([[4*k*j for j in range(6)] for k in range(6)])
    B2=phase([[0,0,0,0,0,0],[6,14,22,2,10,18],[16,8,0,0,16,8],
              [6,6,6,18,18,18],[0,8,16,8,16,0],[22,14,6,18,10,2]])
    X2=E.scale(E.star(A)*B2,1/s.sqrt(6))
    B6=phase([[2*k*k+4*k*j for j in range(6)] for k in range(6)])
    X6=phase([[3-2*(j-i)**2 for j in range(6)] for i in range(6)])
    assert E.is_zero(E.star(A)*B6-E.scale(X6,s.sqrt(6)))
    X0=phase([[4*k*j for j in range(6)] for k in [0,2,1,3,4,5]])
    counts=[]
    for B,X,wanted in [(A,X0,0),(B2,X2,2),(B6,X6,6)]:
        triangle=E.triangle(A,B,X)
        cube=[V.to_list() for V in triangle['V']]  # sqrt(6) times the tensor.
        observed=[]
        for axis in range(3):
            free=[i for i in range(3) if i!=axis];slices=[]
            for fixed in range(6):
                rows=[]
                for i in range(6):
                    row=[]
                    for j in range(6):
                        ix=[0]*3;ix[axis]=fixed;ix[free[0]]=i;ix[free[1]]=j
                        row.append(cube[ix[0]][ix[1]][ix[2]])
                    rows.append(row)
                V=DomainMatrix(rows,(6,6),E.F).to_sparse()
                E.validate_hadamard(V);slices.append(V)
            G=[E.scale(E.star(slices[0])*V,s.Rational(1,6)) for V in slices]
            for k,U in enumerate(G):
                for l,V in enumerate(G):
                    T=(E.star(U)*V).to_list()
                    assert sum((T[j][j] for j in range(6)),E.F.zero)==E.F.convert(6*(k==l))
            _,ranks=E.stabilized(G);observed.append(6-ranks[-1])
        assert observed==[wanted]*3
        counts.append(observed)
    isolated=exceptional_isolation(E,A,B6)
    assert all(M.extract([0,1,3],[0,2,4]).det()==E.F.zero for M in (A,B6,X6))
    isolated['zero3_on_all_three_edges']=True
    return {'field':'Q(i,sqrt(2),sqrt(3))','directional_counts':counts,
            'exceptional_triplet_isolation':isolated,
            'flat_unitary_slices_checked':54,'scope':'fixed exact controls, not a physical stratum inventory'}


def exceptional_isolation(E,H,B):
    """A lifted 55-minor of the FULL gauge-fixed real triangle Jacobian.

    H,B physicality is checked by physical_controls. This control does not
    assert a uniform Jacobian rank or use a restricted Fourier ansatz for
    the varying matrices.
    """
    prime=97;z=pow(5,4,prime)
    assert all(prime%d for d in range(2,10))
    assert (pow(z,8,prime)-pow(z,4,prime)+1)%prime==0
    ii=pow(z,6,prime)
    rr2=(pow(z,3,prime)+pow(z,-3,prime))%prime
    rr3=(pow(z,2,prime)+pow(z,-2,prime))%prime
    assert (ii*ii%prime,rr2*rr2%prime,rr3*rr3%prime)==(96,2,3)
    alpha=E.F.ext.as_expr().subs({s.I:ii,s.sqrt(2):rr2,s.sqrt(3):rr3})
    assert alpha.is_Integer;alpha=int(alpha)%prime
    def rational(c):
        n,d=int(c.numerator),int(c.denominator)
        assert d%prime
        return n*pow(d,-1,prime)%prime
    def evaluate(coeffs):
        out=0
        for c in coeffs:out=(out*alpha+rational(c))%prime
        return out
    assert evaluate(E.F.mod.to_list())==0
    mod=lambda x:evaluate(x.to_list())
    assert [mod(E.scalar(x)) for x in (s.I,s.sqrt(2),s.sqrt(3))]==[ii,rr2,rr3]
    root=(s.sqrt(6)+s.sqrt(2)+s.I*(s.sqrt(6)-s.sqrt(2)))/4
    assert mod(E.scalar(root))==z
    h,b=H.to_list(),B.to_list()
    hb=[[mod(E.bar(x)) for x in row] for row in h]
    bb=[[mod(E.bar(x)) for x in row] for row in b]
    h=[[mod(x) for x in row] for row in h]
    b=[[mod(x) for x in row] for row in b]
    G=[[sum(hb[r][i]*b[r][j] for r in range(6))%prime for j in range(6)] for i in range(6)]
    Gb=[[sum(h[r][i]*bb[r][j] for r in range(6))%prime for j in range(6)] for i in range(6)]
    assert all(G[i][j]*Gb[i][j]%prime==6 for i,j in it.product(range(6),repeat=2))
    pairs=list(it.combinations(range(6),2))
    variables=[('H',r,c) for r in range(1,6) for c in range(1,6)]
    variables += [('B',r,c) for r in range(1,6) for c in range(6)]
    columns=[];half=pow(2,-1,prime);half_i=pow(2*ii,-1,prime)
    for kind,r,c in variables:
        parts=[]
        for name,M,Mb in [('H',h,hb),('B',b,bb)]:
            dr=[];di=[]
            for i,j in pairs:
                sign=int(c==j)-int(c==i) if name==kind else 0
                a=ii*sign*Mb[r][i]*M[r][j]%prime
                ab=-ii*sign*M[r][i]*Mb[r][j]%prime
                dr.append((a+ab)*half%prime);di.append((a-ab)*half_i%prime)
            parts.extend(dr+di)
        for i,j in it.product(range(6),repeat=2):
            sign=-int(c==i) if kind=='H' else int(c==j)
            a=ii*sign*hb[r][i]*b[r][j]%prime
            ab=-ii*sign*h[r][i]*bb[r][j]%prime
            parts.append((a*Gb[i][j]+G[i][j]*ab)%prime)
        assert len(parts)==96;columns.append(parts)
    # Rebuild every column by dual-number products of the ORIGINAL Gram
    # and cross-flatness equations, independently of the entry formulas.
    def dual_sum_products(xs,ys):
        return (sum(a*c for (a,b),(c,d) in zip(xs,ys))%prime,
                sum(a*d+b*c for (a,b),(c,d) in zip(xs,ys))%prime)
    for column,(kind,r,c) in zip(columns,variables):
        def dual_matrix(M,name,conjugate=False):
            sign=-1 if conjugate else 1
            return [[(M[i][j],sign*ii*M[i][j]%prime if kind==name and (i,j)==(r,c) else 0)
                     for j in range(6)] for i in range(6)]
        hh=dual_matrix(h,'H');hhb=dual_matrix(hb,'H',True)
        kk=dual_matrix(b,'B');kkb=dual_matrix(bb,'B',True)
        def entry(A,B,i,j):
            return dual_sum_products([A[k][i] for k in range(6)],[B[k][j] for k in range(6)])
        rebuilt=[]
        for M,Mb in [(hh,hhb),(kk,kkb)]:
            x=[entry(Mb,M,i,j)[1] for i,j in pairs]
            xb=[entry(M,Mb,i,j)[1] for i,j in pairs]
            rebuilt += [(a+ab)*half%prime for a,ab in zip(x,xb)]
            rebuilt += [(a-ab)*half_i%prime for a,ab in zip(x,xb)]
        for i,j in it.product(range(6),repeat=2):
            x,dx=entry(hhb,kk,i,j);xb,dxb=entry(hh,kkb,i,j)
            rebuilt.append((dx*xb+x*dxb)%prime)
        assert rebuilt==column
    # Independent rows via elimination of the transposed Jacobian.
    rows=[row[:] for row in columns];pivot_rows=[];rank=0
    for c in range(96):
        p=next((r for r in range(rank,55) if rows[r][c]),None)
        if p is None:continue
        rows[rank],rows[p]=rows[p],rows[rank]
        inv=pow(rows[rank][c],-1,prime)
        rows[rank]=[v*inv%prime for v in rows[rank]]
        for r in range(rank+1,55):
            factor=rows[r][c]
            rows[r]=[(a-factor*b)%prime for a,b in zip(rows[r],rows[rank])]
        pivot_rows.append(c);rank+=1
        if rank==55:break
    assert rank==55
    minor=[[columns[c][r] for c in range(55)] for r in pivot_rows]
    determinant=int(s.polys.matrices.DomainMatrix.from_Matrix(s.Matrix(minor)).convert_to(s.GF(prime)).det())%prime
    assert determinant!=0
    return {'evidence_label':'Certified computation','prime':prime,
            'zeta24_image':z,'primitive_element_image':alpha,
            'Jacobian_shape':[96,55],'rank':55,'minor_rows_zero_based':pivot_rows,
            'minor_determinant_mod_prime':determinant,
            'independent_dual_number_columns_checked':55,
            'cross_equations':'unnormalized |H*B|^2-6',
            'scope':'one physical isolated triplet, not a global rank or exclusion statement'}


def abstract_one():
    perm=[[0,1,2,3,4,5],[1,2,3,4,5,0],[2,3,5,0,1,4],
          [3,0,4,5,2,1],[4,5,0,1,3,2],[5,4,1,2,0,3]]
    P=[s.Matrix(6,6,lambda i,j:int(j==p[i])) for p in perm]
    for i,U in enumerate(P):
        assert U.T*U==s.eye(6)
        for j,V in enumerate(P):assert s.trace(U.T*V)==6*(i==j)
    K=s.zeros(6)
    for j,k in it.combinations(range(1,6),2):
        C=P[j]*P[k]-P[k]*P[j];K+=C.T*C
    expected=s.Matrix([[12,-1,-3,-1,-4,-3],[-1,12,-3,-3,-4,-1],
                       [-3,-3,16,-3,-4,-3],[-1,-3,-3,12,-4,-1],
                       [-4,-4,-4,-4,20,-4],[-3,-1,-3,-1,-4,12]])
    assert K==expected and K.rank()==5 and K*s.ones(6,1)==s.zeros(6,1)
    q=K.charpoly().gen
    assert s.expand(K.charpoly(q).as_expr()-q*(q-11)*(q-15)**2*(q-19)*(q-24))==0
    E=Exact();_,ranks=E.stabilized([E.matrix(U) for U in P])
    assert ranks==[5]*7
    assert [m for m in range(6) if len({m*(perm[2][j]-j)%6 for j in range(6)})==1]==[0]
    return {'initial_K_matches':True,'stabilized_ranks':ranks,
            'scope':'abstract orthogonal unitaries only; NOT a physical Hadamard triangle'}


def disconnected_partner():
    """Exact Q(i,sqrt(33)) edge with all 400 three-minors nonzero and a full mate.

    Copied from the archive's projector-rank-five control (Section 4 there);
    the projector-normal checks, not needed here, are omitted.
    """
    E=Exact(s.QQ.algebraic_field(s.I,s.sqrt(33)))
    a=s.I;b=(3-4*s.I)/5;c=(-57-176*s.I)/185;d=(2-12*s.I+(6+s.I)*s.sqrt(33))/37
    H=E.matrix([[1]*6,[1,a,b,a/c,a/d,a*d/(b*c)],[1,c,d,a,b*c/d,a/b],
       [1,a/b,-1,a/d,-a/d,-a/b],[1,d,-d,a*d/(b*c),-1,-a*d/(b*c)],
       [1,b*c/d,-b,b,-b*c/d,-1]])
    E.validate_hadamard(H);h=H.to_list();K=E.F
    triples=list(it.combinations(range(6),3))
    assert all(H.extract(I,J).det()!=K.zero for I,J in it.product(triples,repeat=2))
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
    return {'field':'Q(i,sqrt(33))','nonzero_three_minors':400,
            'full_mate_cubic_algebra':{'constant_modulus_identities':6,
                'cross_pivot_identities':15,'all_zero_pivots_retained':True,
                'six_ray_orthogonality_factorization':True},
            'scope':'second triple class used for disconnectedness; no zero3 on the edge I-H'}


def quartet_operator_controls():
    """Controls for the 36-by-36 (d^2-by-d^2) quartet operator L of MATHEMATICS Section 4.

    d=3: I,F,DF,D^2F is an actual quartet; both triangles have r=3 and L=0,
    so all nine ordered phase pairs succeed (dim ker L = 9).
    d=6: B=C, X=Y (the zeta=exp(i pi/12) triple, r=6); L=5I, so no pair
    succeeds and the residual is far above the proved bound 1/5.
    """
    E=Exact();w=(-1+s.I*s.sqrt(3))/2
    F3=s.Matrix(3,3,lambda i,j:s.expand(w**(i*j)));D=s.diag(1,w,w)
    A=E.matrix(F3);B=E.matrix(D*F3);C=E.matrix(D*D*F3)
    X=E.scale(E.star(A)*B,1/s.sqrt(3));Y=E.scale(E.star(A)*C,1/s.sqrt(3))
    q=E.quartet(A,B,C,X,Y)
    assert q['left']['count']==q['right']['count']==3
    assert E.is_zero(q['L'])
    root=E.scalar((s.sqrt(6)+s.sqrt(2)+s.I*(s.sqrt(6)-s.sqrt(2)))/4)
    powers=[root**j for j in range(24)]
    def phase(ex):
        return DomainMatrix([[powers[j%24] for j in row] for row in ex],(6,6),E.F).to_sparse()
    A6=phase([[4*k*j for j in range(6)] for k in range(6)])
    B6=phase([[2*k*k+4*k*j for j in range(6)] for k in range(6)])
    X6=phase([[3-2*(j-i)**2 for j in range(6)] for i in range(6)])
    q6=E.quartet(A6,B6,B6,X6,X6)
    assert q6['left']['count']==6
    assert E.is_zero(q6['L']-E.scale(E.eye(36),5))
    return {'d3_quartet':{'triangle_counts':[3,3],'L':'0','dim_ker_L':9},
            'd6_repeated_edge':{'triangle_count':6,'L':'5 I_36','dim_ker_L':0}}


def calculate():
    return {'evidence_label':'Certified computation','sign_rigidity':sign_space(),
            'unitary_lemma':free_unitary_identities(),'physical_controls':physical_controls(),
            'abstract_nullity_one':abstract_one(),'disconnected_partner':disconnected_partner(),
            'quartet_operator_controls':quartet_operator_controls(),
            'scope':'exact components of the written analytic proof and controls; not formal verification of the entire theorem'}


if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    import json
    print(json.dumps(calculate(),sort_keys=True,indent=2))
    print('PASS triangle nullity gap: sign rigidity, unitary lemma, physical controls, isolation, disconnectedness partner, quartet-operator controls')
