"""Validated all-side root/completion lift. Any exception is unresolved.

Rouche disks cover all three roots; all four sign pairings are considered.
Floating operations choose charts, predictors, corners and references only.
"""
from fractions import Fraction as F
from copy import deepcopy
from itertools import permutations,combinations
import numpy as np
from flint import arb,acb,ctx
from models import TM,real,cis_affine,positive_sqrt,magnitude,point,square,N,ZERO,IJ,set_tau_constraint
from references import propose,tube_test
PERMS=list(permutations(range(3)))
TRIPLES=list(combinations(range(6),3))
_SPLIT_RADII=None


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
    if P0.range().contains(0):raise BoundFailure('side_denominator',P0)
    if P1.range().contains(0):raise BoundFailure('side_denominator',P1)
    u=(g*g+k0*k1*eta+(k0+k1)*chi/2+acb(0,sign)*(k1-k0)*tau/2)/(P0.conj()*P1)
    Pi=(chi/2+k0*eta+acb(0,sign)*tau/2)/P0.conj()
    return s,t,r,u,Pi


def roots(s,u,starts=None):
    coeff=[1,-complex_mid(s.c),complex_mid((u*s.conj()).c),-complex_mid(u.c)]
    zs=np.roots(coeff) if starts is None else [complex(*z) for z in starts];predict=[];radii=[];audit=[]
    if len(zs)!=3:raise ValueError("three root proposals required")
    for z in zs:
        x=TM(acb(float(z.real),float(z.imag)))
        for _ in range(3 if starts is None else 2):
            p=x*x*x-s*x*x+u*s.conj()*x-u;dp=3*x*x-2*s*x+u*s.conj()
            x=(x-p/dp).proposal()
        residual=magnitude((x*x*x-s*x*x+u*s.conj()*x-u).range())
        deriv=abs((3*x*x-2*s*x+u*s.conj()).range()).lower()
        quad=magnitude((3*x-s).range())
        if not deriv>0:raise BoundFailure('root_derivative',3*x*x-2*s*x+u*s.conj())
        radius=max(arb(2)**(-ctx.prec+10),(2*residual/deriv).upper())
        found=False
        for _ in range(12):
            if residual+quad*radius**2+radius**3<deriv*radius:
                found=True;break
            radius*=2
        if not found:raise BoundFailure('rouche',x*x*x-s*x*x+u*s.conj()*x-u)
        predict.append(x);radii.append(radius)
        audit.append(dict(residual=str(residual),derivative_lower=str(deriv),radius=str(radius)))
    sep=[]
    for i in range(3):
        for j in range(i):
            low=abs((predict[i]-predict[j]).range()).lower()
            if not low>radii[i]+radii[j]:raise ValueError('root_separation')
            sep.append(low-radii[i]-radii[j])
    return [x.error(r) for x,r in zip(predict,radii)],dict(roots=audit,separation_lower=str(min(sep)),starts=[[float(x.c.real.mid()),float(x.c.imag.mid())] for x in predict])


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
    for _ in range(2):
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
    if len(rows)!=3 or len(cols)!=3 or len(set(rows))!=3 or len(set(cols))!=3 or any(type(x)!=int or x not in range(6) for x in list(rows)+list(cols)):
        raise ValueError('invalid positional corner')
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



def sensitivities(m):
    """Floating search guidance only, derived from the actual bound model."""
    out=[float(magnitude(x)) for x in m.d]
    for z,(i,j) in zip(m.q,IJ):
        v=float(magnitude(z))
        if i<5:out[i]+=v
        if j<5 and j!=i:out[j]+=v
    # A failed bound can live almost entirely in the discarded remainder.
    # Without this term roundoff-sized polynomial coefficients repeatedly
    # select one coordinate and leave the source of uncertainty unchanged.
    # This is search guidance only, never an accepting inequality.
    if _SPLIT_RADII is not None:
        largest=max(_SPLIT_RADII)
        if largest>0:
            err=float(magnitude(m.e))
            if sum(out)<1e-8*err:
                for k,h in enumerate(_SPLIT_RADII):out[k]+=err*(h/largest)**3/4
    return [x if np.isfinite(x) else 1e100 for x in out]

class BoundFailure(ValueError):
    def __init__(self,reason,model):
        super().__init__(reason);self.scores=sensitivities(model)

def one_side(E,tau,perm,sign,starts=None,direct=None,transpose=False):
    s,t,r,u,Pi=chart_coefficients(E,perm,tau,sign) if direct is None else direct.side(perm,transpose,tau,sign)
    xx,info=roots(s,u,starts);yy=[]
    for x in xx:
        den=3*x*x-2*s*x+u*s.conj()
        if den.range().contains(0):raise BoundFailure('matching_derivative',den)
        yy.append((t*x*x-Pi*x+u*r)/den)
    Bp=[[TM(1)]*3,xx,yy];B=[Bp[perm.index(i)] for i in range(3)]
    B=[[B[i][j]*B[0][j].conj() for j in range(3)] for i in range(3)];B[0]=[TM(1)]*3
    return B,info

def upper_fraction(x):
    m,e=x.upper().man_exp();return F(int(m))*F(2)**int(e)

def tau_bounds(R):
    rr=R.range().real
    return F(0),upper_fraction(max(arb(0),rr.upper()).sqrt())

def slab_model(lo,hi):
    d=[ZERO]*N;d[4]=acb(real((hi-lo)/2));return TM(real((lo+hi)/2),d)

def new_plan(E):
    from discovery_numeric import side as numeric_side
    Ec=np.array([[complex_mid(x.c) for x in row] for row in E])
    ph=numeric_side(Ec)[1];pv=numeric_side(Ec.T)[1]
    return dict(horizontal=list(ph),vertical=list(pv),pairings={},starts={})

def _evaluate(centers,radii,plan=None,needed=("00","01","10","11"),tau_slab=None,reference_search=True,direct_models=False,minimax=False):
    """Prove only requested pairings. Every returned closed key is revalidated.

    A tau_slab restricts the physical subset by tau=sqrt(R) in [lo,hi].
    It never asserts a side formula away from that physical subset.
    """
    centers=list(map(F,centers));radii=list(map(F,radii))
    if len(centers)!=4 or len(radii)!=4 or any(r<0 for r in radii):raise ValueError('bad box')
    if any(k not in ('00','01','10','11') for k in needed):raise ValueError('pairing key')
    from production_cover import contains_box as production_contains
    pc=production_contains(centers,radii)
    if pc['ok']:return dict(ok=True,closed=list(needed),pairings=[],reason='guarded_production_cover',cover=pc)
    from rootfree_cubes import contains_box as rootfree_contains
    pc=rootfree_contains(centers,radii)
    if pc['ok']:return dict(ok=True,closed=list(needed),pairings=[],reason='root_free_production_cube',cover=pc)
    E=seed_models(centers,radii);direct=None
    if direct_models:
        from direct_models import Context
        direct=Context(centers,radii)
    R=invariants(E)[-1] if direct is None else direct.R();RR=R.range().real
    result=dict(ok=False,R=str(RR),pairings=[],closed=[],scores=sensitivities(R))
    if RR.upper()<=0:return dict(result,ok=True,closed=list(needed),reason='outside_strict_D0')
    # B B^dagger = 6I-E E^dagger must be positive semidefinite.
    ss,tt,rr,gg,_,_,_=invariants(E)
    if gg.range().real.upper()<0 or any((TM(9)-z.abs2()).range().real.upper()<0 for z in (ss,tt,rr)):
        return dict(result,ok=True,closed=list(needed),reason='nonphysical_gram')
    tao=[acb(0,arb.pi()*k*2/3).exp() for k in range(3)]
    if not any(all(not (E[i][j].range()-z).contains(0) for z in tao) for i,j in [(1,1),(1,2),(2,1),(2,2)]):
        return dict(result,reason='tao_not_separated')
    tau,kind=positive_sqrt(R)
    if tau_slab is not None:
        lo,hi=map(F,tau_slab)
        if not 0<=lo<=hi:raise ValueError('invalid tau slab')
        result['tau_slab']=[str(lo),str(hi)]
        if real(lo)**2>RR.upper() or real(hi)**2<RR.lower():
            return dict(result,ok=True,closed=list(needed),reason='empty_tau_slab')
        tau=slab_model(lo,hi);kind='tau_slab'
    result['tau_model']=kind
    if kind in ('independent_tau','tau_slab'):
        set_tau_constraint(R,tau.c,tau.d[4])
    if kind=='independent_tau':result['tau_bounds']=list(map(str,tau_bounds(R)))
    fresh_plan=plan is None
    try:plan=new_plan(E) if plan is None else deepcopy(plan)
    except Exception:return dict(result,reason='chart_proposal')
    if any(sorted(plan.get(k,[]))!=list(range(3)) for k in ('horizontal','vertical')):raise ValueError('chart permutation')
    result['plan']=plan;plan.setdefault('starts',{});sides={};failures={}
    for orientation in ('h','v'):
        EE=E if orientation=='h' else list(map(list,zip(*E)))
        perm=plan['horizontal' if orientation=='h' else 'vertical']
        for signbit in sorted({int(k[0 if orientation=='h' else 1]) for k in needed}):
            sid=orientation+str(signbit)
            try:
                B,info=one_side(EE,tau,perm,[-1,1][signbit],plan['starts'].get(sid),direct,orientation=='v')
                sides[sid]=B;plan['starts'][sid]=info['starts']
                result.setdefault('sides',{})[sid]=info
            except (ValueError,ZeroDivisionError,np.linalg.LinAlgError) as ex:
                failures[sid]=str(ex)
                if hasattr(ex,'scores'):result['scores']=ex.scores
                elif hasattr(ex,'model'):result['scores']=sensitivities(ex.model)
    # A chart change is allowed only with no inherited pairing claims.
    # Both signs are rebuilt, and the final chart is retained for replay.
    if reference_search and fresh_plan and set(needed)=={'00','01','10','11'}:
        for orientation in ('h','v'):
            if not any(orientation+str(i) in failures for i in range(2)):continue
            EE=E if orientation=='h' else list(map(list,zip(*E)))
            chartkey='horizontal' if orientation=='h' else 'vertical'
            for perm in PERMS:
                if list(perm)==plan[chartkey]:continue
                try:
                    candidate=[one_side(EE,tau,perm,sign,direct=direct,transpose=orientation=='v') for sign in (-1,1)]
                except (ValueError,ZeroDivisionError,np.linalg.LinAlgError):continue
                plan[chartkey]=list(perm);plan['pairings']={}
                for i,(B,info) in enumerate(candidate):
                    sid=orientation+str(i);sides[sid]=B;failures.pop(sid,None)
                    plan['starts'][sid]=info['starts'];result.setdefault('sides',{})[sid]=info
                result.setdefault('recharted',[]).append(orientation);break
    for key in needed:
        i,j=map(int,key);info=dict(key=key,signs=[[-1,1][i],[-1,1][j]],ok=False)
        if 'h'+str(i) in failures or 'v'+str(j) in failures:
            info['reason']=failures.get('h'+str(i),failures.get('v'+str(j)));result['pairings'].append(info);continue
        try:H,ca=complete(E,sides['h'+str(i)],list(map(list,zip(*sides['v'+str(j)]))))
        except (ValueError,ZeroDivisionError,np.linalg.LinAlgError) as ex:
            info['reason']=str(ex);result['pairings'].append(info);continue
        info['completion']=ca;nonphysical=None
        for r in range(3,6):
            for c in range(3,6):
                if not H[r][c].abs2().range().real.contains(1):nonphysical=[r,c];break
            if nonphysical:break
        if nonphysical:
            info.update(ok=True,reason='nonunimodular',entry=nonphysical);result['pairings'].append(info);continue
        Hm=np.array([[complex_mid(x.c) for x in row] for row in H]);pp=plan['pairings'].get(key,{})
        corners=pp.get('corners')
        if corners is None:corners=[[list(r),list(c)] for _,r,c in numeric_corners(Hm)[:3]]
        best_model=None;best_lower=-float('inf')
        for rr,cc in corners:
            candidate=complementary_corner(H,rr,cc);gapmodel=candidate-R;gap=gapmodel.range().real
            if float(gap.lower())>best_lower:best_lower=float(gap.lower());best_model=gapmodel
            if gap.lower()>0:
                info.update(ok=True,reason='larger_corner',rows=rr,cols=cc,gap=str(gap));break
        if info['ok']:
            plan['pairings'][key]=dict(corners=corners);result['pairings'].append(info);continue
        refs=pp.get('references')
        if refs and reference_search:
            from references import refit
            refs=[refit(Hm,r) for r in refs]
        if not refs and reference_search:refs=propose(Hm,top=1)
        refs=refs or [];info['tubes']=[]
        for ref_index,ref in enumerate(refs):
            report=tube_test(H,ref)
            if reference_search and minimax and not report['ok'] and 1<=report['excess_proposal']<=4:
                from references import minimax_gauge
                candidate=minimax_gauge(Hm,ref,radius=F(report['radius']))
                if candidate is not ref:
                    result['gauge_refinements']=result.get('gauge_refinements',0)+1
                    alternate=tube_test(H,candidate)
                    if alternate['ok'] or alternate['excess_proposal']<report['excess_proposal']:
                        ref=candidate;refs[ref_index]=candidate;report=alternate
                    else:ref['minimax_gauge']=True
            info['tubes'].append(report)
            if report['ok']:info.update(ok=True,reason='matrix_tube');break
        if not info['ok']:
            info['reason']='outside_proved_tubes' if refs else 'no_reference'
            if best_model is not None:result['scores']=sensitivities(best_model)
            if info['tubes']:
                tight=min(info['tubes'],key=lambda t:t.get('excess_proposal',1e100))
                if tight.get('scores'):result['scores']=tight['scores']
        plan['pairings'][key]=dict(corners=corners,references=refs);result['pairings'].append(info)
    result['closed']=[p['key'] for p in result['pairings'] if p['ok']]
    result['ok']=len(result['closed'])==len(needed)
    result['reason']='requested_pairings_closed' if result['ok'] else 'unresolved_pairing'
    return result

def evaluate(*args,**kwargs):
    global _SPLIT_RADII
    _SPLIT_RADII=[float(x) for x in (args[1] if len(args)>1 else kwargs['radii'])]
    set_tau_constraint()
    try:
        result=_evaluate(*args,**kwargs)
        if kwargs.get('direct_models'):result['direct_models']=True
        return result
    finally:
        set_tau_constraint();_SPLIT_RADII=None


def leaf(centers,radii,plan=None,reference_search=True,minimax=False):
    return evaluate(centers,radii,plan=plan,reference_search=reference_search,minimax=minimax)
