"""Validated all-side root/completion lift. Any exception is unresolved.

Rouche disks cover all three roots; all four sign pairings are considered.
Floating operations choose charts, predictors, corners and references only.
"""
from fractions import Fraction as F
from itertools import permutations,combinations
import numpy as np
from flint import arb,acb,ctx
from models import TM,real,cis_affine,positive_sqrt,magnitude,point,square,N,ZERO
from references import propose,tube_test
PERMS=list(permutations(range(3)))
TRIPLES=list(combinations(range(6),3))


def invariants(E):
    s=-sum((E[1][j]*E[0][j].conj() for j in range(3)),TM())
    t=-sum((E[2][j]*E[0][j].conj() for j in range(3)),TM())
    r=-sum((E[2][j]*E[1][j].conj() for j in range(3)),TM())
    X,Y,Z=s.abs2(),t.abs2(),r.abs2();p=X+Y+Z;J=2*(s*r*t.conj()).real()
    g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    return s,t,r,g,eta,chi,R.real()


def seed_models(centers,radii):
    E=[[TM(1) for j in range(3)] for i in range(3)]
    for k,(c,r) in enumerate(zip(centers,radii)):
        coeff=[F(0)]*N;coeff[k]=r;E[1+k//2][1+k%2]=cis_affine(c,coeff)
    return E


def complex_mid(z):return complex(float(z.real.mid()),float(z.imag.mid()))

def chart_coefficients(E,perm,tau,sign):
    EE=[[E[perm[i]][j]*E[perm[0]][j].conj() for j in range(3)] for i in range(3)]
    # On the physical input, the first row is exactly one.
    EE[0]=[TM(1)]*3
    s,t,r,g,eta,chi,_=invariants(EE);Z=r.abs2();Y=t.abs2();k0=9-Z;k1=9-Y
    P0=r*s*s+r.conj()*t*t+(3-Z)*s*t
    P1=t*s.conj()*s.conj()+r*r*t.conj()+(3-Y)*r*s.conj()
    if P0.range().contains(0) or P1.range().contains(0):raise ValueError('side_denominator')
    u=(g*g+k0*k1*eta+(k0+k1)*chi/2+acb(0,sign)*(k1-k0)*tau/2)/(P0.conj()*P1)
    Pi=(chi/2+k0*eta+acb(0,sign)*tau/2)/P0.conj()
    return s,t,r,u,Pi


def roots(s,u):
    coeff=[1,-complex_mid(s.c),complex_mid((u*s.conj()).c),-complex_mid(u.c)]
    zs=np.roots(coeff);predict=[];radii=[];audit=[]
    for z in zs:
        x=TM(acb(float(z.real),float(z.imag)))
        for _ in range(4):
            p=x*x*x-s*x*x+u*s.conj()*x-u;dp=3*x*x-2*s*x+u*s.conj()
            x=(x-p/dp).proposal()
        residual=magnitude((x*x*x-s*x*x+u*s.conj()*x-u).range())
        deriv=abs((3*x*x-2*s*x+u*s.conj()).range()).lower()
        quad=magnitude((3*x-s).range())
        if not deriv>0:raise ValueError('root_derivative')
        radius=max(arb(2)**(-ctx.prec+10),(2*residual/deriv).upper())
        found=False
        for _ in range(12):
            if residual+quad*radius**2+radius**3<deriv*radius:
                found=True;break
            radius*=2
        if not found:raise ValueError('rouche')
        predict.append(x);radii.append(radius)
        audit.append(dict(residual=str(residual),derivative_lower=str(deriv),radius=str(radius)))
    sep=[]
    for i in range(3):
        for j in range(i):
            low=abs((predict[i]-predict[j]).range()).lower()
            if not low>radii[i]+radii[j]:raise ValueError('root_separation')
            sep.append(low-radii[i]-radii[j])
    return [x.error(r) for x,r in zip(predict,radii)],dict(roots=audit,separation_lower=str(min(sep)))


def side(E,tau,perm):
    sides=[];reports=[]
    for sign in [-1,1]:
        s,t,r,u,Pi=chart_coefficients(E,perm,tau,sign)
        xx,info=roots(s,u);yy=[]
        for x in xx:
            den=3*x*x-2*s*x+u*s.conj()
            if den.range().contains(0):raise ValueError('matching_derivative')
            yy.append((t*x*x-Pi*x+u*r)/den)
        Bp=[[TM(1)]*3,xx,yy]
        B=[Bp[perm.index(i)] for i in range(3)]
        B=[[B[i][j]*B[0][j].conj() for j in range(3)] for i in range(3)]
        B[0]=[TM(1)]*3
        sides.append(B);reports.append(dict(sign=sign,**info))
    return sides,reports


def mm(A,B):
    return [[sum((A[i][k]*B[k][j] for k in range(len(B))),TM()) for j in range(len(B[0]))] for i in range(len(A))]

def dagger(A):return [[A[j][i].conj() for j in range(len(A))] for i in range(len(A[0]))]

def complete(E,B,C):
    A=dagger(C);rhs=mm(dagger(E),B);rhs=[[-x for x in row] for row in rhs]
    Am=np.array([[complex_mid(x.c) for x in row] for row in A]);Km=np.linalg.inv(Am)
    K=[[TM(acb(float(z.real),float(z.imag))) for z in row] for row in Km]
    KA=mm(K,A);beta=max(sum((magnitude((TM(int(i==j))-KA[i][j]).range()) for j in range(3)),arb(0)).upper() for i in range(3))
    if not beta<1:raise ValueError('completion_contraction')
    X=mm(K,rhs)
    for _ in range(3):
        X=[[x.proposal() for x in row] for row in X]
        AX=mm(A,X);res=[[rhs[i][j]-AX[i][j] for j in range(3)] for i in range(3)];cor=mm(K,res)
        X=[[X[i][j]+cor[i][j] for j in range(3)] for i in range(3)]
    X=[[x.proposal() for x in row] for row in X]
    AX=mm(A,X);res=[[rhs[i][j]-AX[i][j] for j in range(3)] for i in range(3)];cor=mm(K,res)
    errors=[max(magnitude(cor[i][j].range()) for i in range(3))/(1-beta) for j in range(3)]
    D=[[X[i][j].error(errors[j]) for j in range(3)] for i in range(3)]
    H=[E[i]+B[i] for i in range(3)]+[C[i]+D[i] for i in range(3)]
    return H,dict(beta=str(beta),entry_errors=[str(x) for x in errors])


def complementary_corner(H,rows,cols):
    cc=[k for k in range(6) if k not in cols]
    x=[H[rows[1]][j]*H[rows[0]][j].conj() for j in cc]
    y=[H[rows[2]][j]*H[rows[0]][j].conj() for j in cc]
    z=[v*u.conj() for u,v in zip(x,y)]
    value=TM()
    for i in range(3):
        for j in range(3):
            if i==j:continue
            a,b=[k for k in range(3) if k!=i]
            c,d=[k for k in range(3) if k!=j]
            p=[2*a,2*b,2*c+1,2*d+1,2*i,2*j+1]
            sign=(-1)**sum(p[k]>p[l] for k in range(6) for l in range(k+1,6))
            value+=sign*(x[b]*x[a].conj()).imag()*(y[d]*y[c].conj()).imag()*(z[i]*z[j].conj()).imag()
    return 64*value*value


def numeric_corners(H):
    # Scalar proposals only. Return the largest few out of all 400 corners.
    candidates=[]
    for rows in TRIPLES:
        for cols in TRIPLES:
            E=H[np.ix_(rows,cols)];s=-np.sum(E[1]*E[0].conj());t=-np.sum(E[2]*E[0].conj());r=-np.sum(E[2]*E[1].conj())
            X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real
            g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
            candidates.append((float(4*g*g*eta-chi*chi),rows,cols))
    return sorted(candidates,reverse=True)


def leaf(centers,radii,plan=None,reference_search=True):
    """Radian rational box. Returned accepting alternatives are uniform."""
    centers=list(map(F,centers));radii=list(map(F,radii))
    if len(centers)!=4 or len(radii)!=4 or any(r<0 for r in radii):raise ValueError('bad box')
    E=seed_models(centers,radii);R=invariants(E)[-1];RR=R.range().real
    result=dict(ok=False,R=str(RR),pairings=[])
    if RR.upper()<=0:return dict(result,ok=True,reason='outside_strict_D0')
    # Tao's dephased seed entries are third roots. Separate at least one
    # entry, on the entire box, before using side-fibre exhaustion.
    tao=[acb(0,arb.pi()*k*2/3).exp() for k in range(3)]
    if not any(all(not (E[i][j].range()-z).contains(0) for z in tao) for i,j in [(1,1),(1,2),(2,1),(2,2)]):
        return dict(result,reason='tao_not_separated')
    tau,kind=positive_sqrt(R);result['tau_model']=kind
    if plan is None:
        from discovery_numeric import side as numeric_side
        Ec=np.array([[complex_mid(x.c) for x in row] for row in E])
        try:ph=numeric_side(Ec)[1];pv=numeric_side(Ec.T)[1]
        except Exception:return dict(result,reason='chart_proposal')
        plan=dict(horizontal=list(ph),vertical=list(pv),pairings={})
    result['plan']=plan
    try:
        hs,ha=side(E,tau,plan['horizontal']);vs,va=side(list(map(list,zip(*E))),tau,plan['vertical'])
    except (ValueError,ZeroDivisionError,np.linalg.LinAlgError) as ex:
        return dict(result,reason=str(ex))
    result['sides']=[ha,va]
    for i in range(2):
        for j in range(2):
            info=dict(signs=[[-1,1][i],[-1,1][j]],ok=False);key=f'{i}{j}'
            try:H,ca=complete(E,hs[i],list(map(list,zip(*vs[j]))))
            except (ValueError,ZeroDivisionError,np.linalg.LinAlgError) as ex:
                info['reason']=str(ex);result['pairings'].append(info);continue
            info['completion']=ca
            nonphysical=None
            for r in range(3,6):
                for c in range(3,6):
                    if not H[r][c].abs2().range().real.contains(1):nonphysical=[r,c];break
                if nonphysical:break
            if nonphysical:
                info.update(ok=True,reason='nonunimodular',entry=nonphysical);result['pairings'].append(info);continue
            Hm=np.array([[complex_mid(x.c) for x in row] for row in H])
            pp=plan['pairings'].get(key,{})
            corners=pp.get('corners')
            if corners is None:corners=[[list(r),list(c)] for _,r,c in numeric_corners(Hm)[:3]]
            for rr,cc in corners:
                candidate=complementary_corner(H,rr,cc)
                gap=(candidate-R).range().real
                if gap.lower()>0:
                    info.update(ok=True,reason='larger_corner',rows=rr,cols=cc,corner_R=str(candidate.range().real),gap=str(gap));break
            if info['ok']:
                plan['pairings'][key]=dict(corners=corners);result['pairings'].append(info);continue
            refs=pp.get('references')
            if refs is None and reference_search:refs=propose(Hm,top=1)
            refs=refs or [];info['tubes']=[]
            for ref in refs:
                report=tube_test(H,ref);info['tubes'].append(report)
                if report['ok']:info.update(ok=True,reason='matrix_tube');break
            if not info['ok']:info['reason']='outside_proved_tubes' if refs else 'no_reference'
            plan['pairings'][key]=dict(corners=corners,references=refs)
            result['pairings'].append(info)
    result['ok']=all(p['ok'] for p in result['pairings']) and len(result['pairings'])==4
    result['reason']='all_pairings_closed' if result['ok'] else 'unresolved_pairing'
    return result
