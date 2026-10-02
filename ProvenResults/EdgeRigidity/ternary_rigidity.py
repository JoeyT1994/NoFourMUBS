"""Exact checks for the positive-sign cubic matching rigidity theorem."""
import itertools as it
import sympy as s
from sympy.polys.matrices import DomainMatrix
from compatibility import Exact


def symbolic():
    omega=(-1+s.I*s.sqrt(3))/2
    K=s.QQ.algebraic_field(omega);R=K.frac_field('a','b')
    a,b=R.gens;w=R.convert(K.from_sympy(omega),K)
    c=[(1+a*w**j+b*w**(2*j))/3 for j in range(3)]
    cb=[(1+w**(-j)/a+w**(-2*j)/b)/3 for j in range(3)]
    d=[1/b,a,b/a]
    delta=(d[0]-d[1])*(d[1]-d[2])*(d[2]-d[0])
    assert not (c[0]**2*cb[1]*cb[2]-cb[0]**2*c[1]*c[2]+delta/27)
    # Every row pair of a circulant unitary has the same nonzero-area
    # criterion, up to sign. This owns all pairs used in the real-ratio lemma.
    areas=[]
    for i,k in it.combinations(range(3),2):
        z=[c[(j-i)%3]*cb[(j-k)%3] for j in range(3)]
        zb=[cb[(j-i)%3]*c[(j-k)%3] for j in range(3)]
        area=z[0]*zb[1]-zb[0]*z[1]
        assert any(not (area-sign*delta/27) for sign in (1,-1))
        areas.append(True)
    t=sum(d,R.zero);tb=sum((z**-1 for z in d),R.zero)
    for j in range(3):
        # Direct discrete Fourier autocorrelation: flat iff t=0.
        assert not (9*c[j]*cb[j]-3-w**j*t-w**(-j)*tb)
    # Exact symmetric-variable reduction for the two deltoid boundaries.
    S,P=s.symbols('S P')
    x,y=s.symbols('x y',nonzero=True)
    assert s.expand((2*(x+y)+x**-2+y**-2)*(x*y)**2-
                    ((x+y)**2+2*(x*y)**2*(x+y)-2*x*y))==0
    n=s.symbols('n0:3',real=True);m=s.symbols('m0:3',real=True)
    pauli=[s.Matrix([[0,1],[1,0]]),s.Matrix([[0,-s.I],[s.I,0]]),s.diag(1,-1)]
    PN=(s.eye(2)+sum((n[j]*pauli[j] for j in range(3)),s.zeros(2)))/2
    PM=(s.eye(2)+sum((m[j]*pauli[j] for j in range(3)),s.zeros(2)))/2
    assert s.expand(s.trace(PN*PM)-(1+sum(n[j]*m[j] for j in range(3)))/2)==0
    return {'field':'Q(omega)(a,b)','Jarlskog_discriminant_identity':True,
            'row_pair_area_checks':len(areas),'Fourier_autocorrelation_checks':3,
            'boundary_symmetric_identity':True,'Bloch_overlap_identity':True}


def finite():
    E=Exact(s.QQ.algebraic_field(s.I,s.sqrt(3),s.sqrt(2*s.sqrt(3))))
    K=E.F;one=K.one;zero=K.zero
    w=E.scalar((-1+s.I*s.sqrt(3))/2);rt=E.scalar(s.sqrt(3))
    x=E.scalar((s.sqrt(3)-1+s.I*s.sqrt(2*s.sqrt(3)))/2);xb=E.bar(x)
    assert x*xb==one and 2*(x+xb)+x**-2+xb**-2==zero
    FF=DomainMatrix([[w**(i*j)/rt for j in range(3)] for i in range(3)],(3,3),K).to_sparse()
    Fc=E.star(FF).transpose()
    def diag(v):return DomainMatrix.diag(v,K).to_sparse()
    SS=DomainMatrix([[one if i==(j+1)%3 else zero for j in range(3)] for i in range(3)],(3,3),K).to_sparse()
    eig=diag([w**(-j) for j in range(3)])
    def bases(d):
        V=diag([one,d[1],one/d[0]])*FF
        W=diag([one,one/d[2],d[1]])*Fc
        Q=diag(d)*SS;T=SS*Q
        out=[FF,V,W]
        for M,U in zip((SS,Q,T),out):
            assert E.is_zero(E.star(U)*U-E.eye(3))
            assert E.is_zero(M*U-U*eig)
        return out
    def perms(t):
        # Repeated coordinate: exactly three ordered possibilities, no
        # ordering of algebraic field elements or numerical root comparison.
        return [tuple(t**-2 if j==k else t for j in range(3)) for k in range(3)]
    cases=0;cycles=0;checked=[]
    for power,swap,i,j in it.product(range(3),range(2),range(3),range(3)):
        xx,yy=((x,xb) if not swap else (xb,x));xx*=w**power;yy*=w**power
        d,e=perms(xx)[i],perms(yy)[j]
        assert sum(d,zero)+sum(e,zero)==zero
        A,B=bases(d),bases(e);Z=[]
        for r,t in ((0,1),(0,2),(1,2)):
            C=(E.star(A[r])*A[t]).to_list();D=(E.star(B[r])*B[t]).to_list()
            z=[]
            for row in range(3):
                zr=[]
                for col in range(3):
                    c,b=C[row][col],D[row][col]
                    assert c and b
                    assert c*E.bar(c)+b*E.bar(b)==K.convert(s.Rational(2,3))
                    zr.append(-c*E.bar(b)/(E.bar(c)*b))
                z.append(zr)
            assert all(z[r][t]*z[0][0]==z[r][0]*z[0][t]
                       for r,t in it.product(range(3),repeat=2))
            Z.append(z)
        for r,t,u in it.product(range(3),repeat=3):
            assert Z[0][r][t]*Z[2][t][u]==-Z[1][r][u]
            cycles+=1
        checked.append([power,swap,i,j]);cases+=1
    assert cases==54 and cycles==1458
    central=[]
    for order in it.permutations(range(3)):
        d=tuple(w**j for j in order);Q=diag(d)*SS
        C=SS*Q*E.star(SS)*E.star(Q)
        ch=next(k for k in (1,2) if E.is_zero(C-E.eye(3).scalarmul(w**k)))
        U=bases(d)
        for i,j in ((0,1),(0,2),(1,2)):
            assert all(z*E.bar(z)==K.convert(s.Rational(1,3))
                       for row in (E.star(U[i])*U[j]).to_list() for z in row)
        central.append({'ordering':list(order),'central_character_exponent':ch})
    return {'field':'Q(i,sqrt(3),sqrt(2*sqrt(3)))','boundary_cases':cases,
            'case_indices':checked,'nonzero_entry_and_coarse_overlap_checks':True,
            'edge_phase_rank_one_checks':True,'phase_cycles_equal_minus_one':cycles,
            'six_central_orderings':central,
            'scope':'exhaustive positive-sign, nonzero-block-trace boundary; not all ternary matchings'}


def mixed():
    E=Exact(s.QQ.algebraic_field(s.I,s.sqrt(3)));K=E.F
    one,zero=K.one,K.zero;ii=E.scalar(s.I)
    w=E.scalar((-1+s.I*s.sqrt(3))/2);zeta=-w*w
    F=DomainMatrix([[w**(r*t) for t in range(3)] for r in range(3)],(3,3),K).to_sparse()
    def diag(v):return DomainMatrix.diag(v,K).to_sparse()
    def bases(d):return [F,diag([one,d[1],one/d[0]])*F,
                         diag([one,one/d[2],d[1]])*E.star(F).transpose()]
    A=bases([one,w,w*w]);B=bases([one,w*w,w]);ZZ={};tables=[]
    wanted=[[[5,1,1],[1,5,1],[1,1,5]],[[3,1,1],[1,1,3],[1,3,1]],
            [[5,1,1],[1,1,5],[1,5,1]]]
    edges=[(0,1),(0,2),(1,2)]
    for index,(a,b) in enumerate(edges):
        C=(E.star(A[a])*A[b]).scalarmul(one/3).to_list()
        D=(E.star(B[a])*B[b]).scalarmul(one/3).to_list()
        Z=[[D[r][t]/C[r][t] for t in range(3)] for r in range(3)]
        assert all(Z[r][t]==zeta**wanted[index][r][t] for r,t in it.product(range(3),repeat=2))
        assert all(z**3==-one for row in Z for z in row)
        M=DomainMatrix(Z,(3,3),K).to_sparse()
        assert E.is_zero(E.star(M)*M-E.eye(3).scalarmul(K.convert(3)))
        square=DomainMatrix([[z*z for z in row] for row in Z],(3,3),K)
        assert square.det()!=zero
        ZZ[a,b]=Z;tables.append(wanted[index])
    R=K.poly_ring(*[f'{name}{r}' for r in range(3) for name in ('x','y','z')])
    cc=lambda v:R.convert(v,K)
    axis=[R.gens[3*r:3*r+3] for r in range(3)]
    xi=[v[0]+cc(ii)*v[1] for v in axis];xb=[v[0]-cc(ii)*v[1] for v in axis]
    X=[axis[r][2]*xi[(r+1)%3]*xb[(r+2)%3] for r in range(3)]
    Xb=[axis[r][2]*xb[(r+1)%3]*xi[(r+2)%3] for r in range(3)]
    def det(m):
        return sum(((-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))*
                    m[0][p[0]]*m[1][p[1]]*m[2][p[2]] for p in it.permutations(range(3))),R.zero)
    determinant_checks=0;kernel_checks=0
    for a in range(3):
        L=[]
        for b in range(3):
            if a==b:continue
            Z=ZZ[a,b] if a<b else [[one/ZZ[b,a][t][r] for t in range(3)] for r in range(3)]
            l0=[Z[(r+2)%3][0]/Z[(r+1)%3][0] for r in range(3)]
            factors=[]
            for col in range(3):
                ell=[Z[(r+2)%3][col]/Z[(r+1)%3][col] for r in range(3)]
                ratios=[ell[r]/l0[r] for r in range(3)]
                assert ratios[0]==ratios[1]==ratios[2];factors.append(ratios[0])
                rows=[]
                for r in range(3):
                    u=cc(E.bar(Z[r][col]))*xi[r];ub=cc(Z[r][col])*xb[r]
                    rows.append([(u+ub)/2,(u-ub)/(2*cc(ii)),axis[r][2]])
                T=sum((cc(ell[r])*X[r] for r in range(3)),R.zero)
                Tb=sum((cc(E.bar(ell[r]))*Xb[r] for r in range(3)),R.zero)
                assert not (det(rows)+(T-Tb)/(2*cc(ii)))
                determinant_checks+=1
            assert set(factors)=={one,w,w*w}
            L.append(l0)
        M=DomainMatrix(L,(2,3),K);N=M.nullspace()
        assert M.rank()==2 and N.shape==(1,3)
        n=N.to_list()[0];assert n[0]==n[1]==n[2] and n[0]
        kernel_checks+=1
    # Exhaustive zero-status alternatives; P=pole, E=equator, G=generic.
    statuses={'P':(True,False),'E':(False,True),'G':(True,True)}
    allowed=[]
    for pat in it.product(statuses,repeat=3):
        values=[statuses[pat[r]][0] and statuses[pat[(r+1)%3]][1] and statuses[pat[(r+2)%3]][1] for r in range(3)]
        if len(set(values))==1:allowed.append(''.join(pat))
    assert all(p in ('EEE','GGG') or p.count('P')>=2 for p in allowed)
    assert 'GGG' in allowed and 'EEE' in allowed
    # Equal negative real parts for at least two distinct cubic roots force
    # the common rotation to be cubic and the real part to be -1/2.
    phase_cases=[]
    for size in (2,3):
        for subset in it.combinations(range(3),size):
            for sign,k in it.product((1,-1),range(3)):
                u=sign*w**k;rr=[(u*w**a+E.bar(u*w**a))/2 for a in subset]
                if len(set(rr))==1 and s.Rational(K.to_sympy(rr[0]))<0:
                    assert u**3==one and rr[0]==-one/2
                    phase_cases.append([list(subset),sign,k])
    assert len(phase_cases)==3
    return {'field':'Q(i,sqrt(3))','twist_sixth_root_exponents':tables,
            'twists_unitary_up_to_sqrt3_and_squares_nonsingular':True,
            'universal_rotated_axis_determinants':determinant_checks,
            'three_group_kernels_are_constant_line':kernel_checks,
            'zero_status_alternatives':allowed,'negative_real_part_phase_cases':phase_cases,
            'shared_phase_cubes':[-1,-1,-1],
            'scope':'complete mixed-central positive-sign exclusion; all zero-axis cases retained'}


def calculate():return {'symbolic':symbolic(),'finite':finite(),'mixed':mixed()}


if __name__=='__main__':
    import json
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(calculate(),sort_keys=True))
