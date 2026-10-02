#!/usr/bin/env python3
"""Exact verification of RESULT_B; no heuristic search and no floating acceptance.
Run from any working directory: python /path/to/RESULT_B/verify.py
Writes VERIFICATION.json beside this script. See PROOF.md for the analytic
rank-one exclusion; the script checks its elementary algebra, not a finite
sampling substitute for that proof.
"""
from pathlib import Path
from fractions import Fraction as F
import datetime,hashlib,itertools,json,platform,sys,time
import sympy as sp
import exact_field as ef
from intervals import anchor_intervals

ROOT=Path(__file__).resolve().parent
CHECKS=[]
START=time.monotonic()

def check(name,condition):
    if not condition:raise AssertionError(name)
    CHECKS.append(name);print('PASS:',name,flush=True)

def simp(x):return sp.simplify(sp.expand_complex(sp.expand(x)))
def matsimp(A):return A.applyfunc(simp)
def zero(A):return matsimp(A)==sp.zeros(*A.shape)

def invariants(E):
    G=matsimp(6*sp.eye(3)-E*E.H)
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=(simp(x*sp.conjugate(x))for x in (s,t,r))
    p=X+Y+Z;J=simp(s*r*sp.conjugate(t)+sp.conjugate(s*r*sp.conjugate(t)))
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    return G,tuple(map(simp,(g,eta,chi,4*g*g*eta-chi*chi)))

def side_scalar(B,g):
    perm=sum(sp.prod(B[i,p[i]]for i in range(3))for p in itertools.permutations(range(3)))
    return simp(-perm*B.det()**2/(g*sp.prod(B)))

def to_exact_real(x):
    """Embed a verified Q(sqrt(3)) real expression in the quotient algebra."""
    z=sp.Symbol('t',real=True);poly=sp.Poly(sp.expand(x).subs(sp.sqrt(3),z),z)
    if poly.degree()>1:raise ValueError('unexpected Gram coefficient')
    a,b=poly.nth(0),poly.nth(1)
    if not(a.is_Rational and b.is_Rational):raise ValueError('non-rational coefficient')
    return ef.Exact(F(a))+ef.T*F(b)

def main():
    fixture=json.loads((ROOT/'data/fixture.json').read_text())
    certificate=json.loads((ROOT/'data/anchor.json').read_text())
    check('certificate polynomial and positive sheet metadata',
          certificate['minimal_polynomial_descending']==[9,60,-488,-976,5584]
          and fixture['actual_sheet']=='positive'
          and list(map(F,certificate['root_isolating_interval']))==[F(39298,10000),F(39299,10000)])
    rt=sp.sqrt(3);z6=(1+sp.I*rt)/2;z12=(rt+sp.I)/2
    H=sp.Matrix([[simp(z6**n)for n in row]for row in fixture['H_exponents']])
    K=sp.Matrix([[simp(z12**n)for n in row]for row in fixture['K_exponents']])
    check('raw H and K have exactly unit-modulus entries',
          all(simp(x*sp.conjugate(x)-1)==0 for x in list(H)+list(K)))
    check('H H^dagger = 6 I exactly',zero(H*H.H-6*sp.eye(6)))
    check('K K^dagger = 6 I exactly (includes every retained orthogonality pair)',zero(K*K.H-6*sp.eye(6)))
    cross=matsimp(H.H*K)
    check('all 36 U-to-K probabilities equal 1/6 exactly',
          all(simp(x*sp.conjugate(x))==6 for x in cross))
    roworder=fixture['canonical_row_order']
    KF=sp.Matrix([[simp(z12**(r*r)*z6**(r*j))for j in range(6)]for r in roworder])
    check('exact Fourier-chirp factorization of K',zero(K-KF))
    E=H[:3,:3];Ghh,iv=invariants(E);Gvv,ivv=invariants(E.T)
    omega=simp(z6**2)
    check('strict a=-1 seed corner',simp(E[1,1]+1)==0 and E[1,2]==omega and simp(E[2,1]+omega)==0 and simp(E[2,2]-omega**2)==0)
    check('both corner Grams give (g,eta,chi,R)=(3,1,-3,27)',iv==ivv==(3,1,-3,27))
    g,eta,chi,R=iv
    horizontal=side_scalar(H[:3,3:],g);vertical=side_scalar(H[3:,:3].T,g)
    check('positive horizontal sheet and matched negative vertical sheet',
          simp(horizontal-(chi+sp.I*sp.sqrt(R))/(2*g))==0 and simp(vertical-sp.conjugate(horizontal))==0)
    EH=sp.conjugate(E);_,iv_conj=invariants(EH)
    check('conjugate carrier supplies a negative-sheet example at conjugate seeds',
          iv_conj==iv and simp(side_scalar(sp.conjugate(H[:3,3:]),g)-(chi-sp.I*sp.sqrt(R))/(2*g))==0)
    check('bottom-right block is the exact strict Schur completion',
          zero(H[3:,3:]+H[3:,:3]*E.H*Ghh.inv()*H[:3,3:]))
    Pi=matsimp(sp.eye(6)-K[:,:4]*K[:,:4].H/6)
    check('rank-two projector and both constant diagonals',
          zero(Pi*Pi-Pi)and sp.trace(Pi)==2 and all(Pi[j,j]==sp.Rational(1,3)for j in range(6))
          and all(x==sp.Rational(1,3)for x in matsimp(H.H*Pi*H/6).diagonal()))
    AA=sp.eye(6).row_join(H/sp.sqrt(6));Q=matsimp(AA.H*Pi*AA)
    G=Q.applyfunc(lambda x:simp(18*x*sp.conjugate(x)-1))
    stored=sp.Matrix([[sp.sympify(x)for x in row]for row in fixture['G12']])
    check('stored G12 is regenerated exactly from the original projectors',zero(G-stored))
    check('G12^2=6 G12, trace=12, hence rank exactly 2',zero(G*G-6*G)and sp.trace(G)==12)
    e2=simp((sp.trace(G)**2-sp.trace(G*G))/2)
    check('e2(G12)=36 and principal minor (0,1)=3/4',e2==36 and G[:2,:2].det()==sp.Rational(3,4))

    # Elementary ingredients of the analytic global rank-one exclusion.
    v=sp.Matrix([1,omega,omega**2]);vb=sp.conjugate(v)
    check('zero-sum unit triples: the two ordered orientations are independent',
          simp(sum(v))==0 and simp(sum(vb))==0 and simp((v.H*vb)[0])==0
          and simp((v.H*v)[0])==3 and sp.Integer(9)>6)

    # Independent exact arithmetic in Q[s] with explicit real radical relations.
    check('quartic is irreducible over Q',sp.Poly(ef.POLY,ef.S).is_irreducible)
    s,r=ef.s,ef.r;P,D,A,T,I=ef.P,ef.D,ef.A,ef.T,ef.I
    check('radical algebra defining relations',
          P*P==ef.Exact(ef.L)and D*D==ef.Exact(ef.M)
          and A*A==(8-ef.Exact(s)-P*D)/2 and T*T==3 and I*I==-1)
    check('r^2=s^2-12 exactly modulo the quartic',r*r==s*s-12)
    an=ef.anchor();x=an['x']
    check('positive square-root factor identities',
          an['p']**2+an['q']**2==ef.Exact(s)and an['p']*an['q']==ef.Exact(r)
          and an['X']*an['Y']==ef.Exact((s-2)**2)and an['B']**2==an['Y'])
    check('u^2+v^2=1 and kappa is an exact phase',an['u']**2+an['v']**2==1 and an['kappa'].abs2()==1)
    check('all six canonical anchor entries have modulus one exactly',all(z.abs2()==1 for z in x))
    e6=(1+I*T)/2;e12=(T+I)/2
    he=[[e6**n for n in row]for row in fixture['H_exponents']]
    ke=[[e12**n for n in row]for row in fixture['K_exponents']]
    y=[e12**(j*j%12)*x[j]for j in roworder]  # w=y/sqrt(6)
    check('w is exactly unit and flat in I',all(z.abs2()==1 for z in y))
    overlaps=[sum(ke[i][j].conj()*y[i]for i in range(6))for j in range(6)]
    ps=[q.abs2()/36 for q in overlaps]
    expected=[ef.Exact(F(1,6))]*4+[ef.Exact(s/12),ef.Exact((4-s)/12)]
    check('all four anchor overlaps and both missing probabilities, in original coordinates',ps==expected)
    huy=[sum(he[i][j].conj()*y[i]for i in range(6))for j in range(6)]
    ups=[q.abs2()/36 for q in huy]
    check('all six U probabilities sum to one exactly',sum(ups)==1)
    expected_ups=json.loads((ROOT/'data/exact_U_probabilities.json').read_text())['U_probabilities_quotient_algebra']
    check('all six exact U probability certificate arrays regenerate', [p.as_json()for p in ups]==expected_ups)
    check('U0 difference is nonzero in the quotient algebra (interval separation follows)',ups[0]!=ef.Exact(F(1,6)))
    piy=[sum(ke[i][j]*overlaps[j]/6 for j in (4,5))for i in range(6)]
    check('anchor complement weight is exactly 1/3',sum(y[i].conj()*piy[i]for i in range(6))/6==ef.Exact(F(1,3)))
    gc=[3*z.abs2()-1 for z in piy]
    gc += [sum(he[i][j].conj()*piy[i]for i in range(6)).abs2()/2-1 for j in range(6)]
    minor=lambda i,j:1-to_exact_real(G[i,j])**2-gc[i]**2-gc[j]**2+2*to_exact_real(G[i,j])*gc[i]*gc[j]
    witness=minor(0,1)
    check('strictly positive G13 minor formula det(0,1,12)=3(s-2)^2/16',witness==ef.Exact(3*(s-2)**2/16))
    e3=sum(minor(i,j)for i in range(12)for j in range(i+1,12))
    check('all anchor-containing minors give e3(G13)=9(s-2)^2',e3==ef.Exact(9*(s-2)**2))

    # Exact rational embedding and inequalities, separately from quotient identities.
    ai=anchor_intervals(fixture)
    check('unique real root isolated by sign change and strict positive derivative',ai['derivative_on_initial_interval'].lo>0)
    check('all chosen radicals and denominators are certified nonsingular',
          ai['P'].lo>0 and ai['D'].lo>0 and ai['X'].lo>0 and ai['Y'].lo>0
          and (3*ai['s']-14).hi<0 and (ai['s']-2).lo>0)
    check('rational interval proves 4/25 < beta < 1/6',ai['beta'].lo>F(4,25)and ai['beta'].hi<F(1,6))
    check('rational interval proves 79/1000 < |U_0^dagger w|^2 < 2/25 < 1/6',
          ai['U_probabilities'][0].lo>F(79,1000)and ai['U_probabilities'][0].hi<F(2,25)and F(2,25)<F(1,6))

    # Universal balance-ratio identity, not an assumed rank drop.
    a,c,d,x0,y0,z0=sp.symbols('a c d x y z',real=True)
    S0=sp.Matrix([[a,c,0],[c,d,0],[0,0,0]]);n=sp.Matrix([x0,y0,z0])
    check('universal determinant identity det(S0+n n^T)=det(S0|plane) z^2',
          sp.expand((S0+n*n.T).det()-(a*d-c*c)*z0*z0)==0)

    # Completed-triple mixed-state obstruction: symbolic in its full parameter.
    Delta=matsimp((K[:,4]*K[:,4].H-K[:,5]*K[:,5].H)/6)
    check('completion difference has eigenvalues +1,-1,0,0,0,0',
          zero(Delta*Delta-Pi)and sp.trace(Delta)==0 and zero(Delta*Pi-Delta))
    check('completion difference is invisible in all required linear measurements',
          all(Delta[j,j]==0 for j in range(6))
          and all(x==0 for x in matsimp(H.H*Delta*H/6).diagonal())
          and zero(K[:,:4].H*Delta*K[:,:4]))
    b=sp.Symbol('b',real=True);rho=sp.eye(6)/6+b*Delta
    check('mixed family trace and purity identities',
          sp.trace(rho)==1 and sp.expand(sp.trace(rho*rho)-sp.Rational(1,6)-2*b*b)==0)
    check('mixed family is never pure on its entire positivity interval',sp.Rational(1,6)+2*sp.Rational(1,6)**2==sp.Rational(2,9)<1)

    report={
        'status':'PASS',
        'command':'python verify.py',
        'scope':'Exact certificate checks and elementary identities. Global rank-one exclusion is proved analytically in PROOF.md. NO full 4+1 completion or balance theorem is claimed.',
        'utc_finished':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'versions':{'python':platform.python_version(),'sympy':sp.__version__},
        'exact_acceptance':{'checks':CHECKS,'number_passed':len(CHECKS),'arithmetic':'rational polynomial quotient algebra; symbolic Q(sqrt(3),i); outward rational intervals'},
        'floating_point_acceptance':False,
        'floating_point_regression':'Exploratory computations are archived separately and are not required by this verifier.',
        'certified_decimal_enclosures':{k:v.decimal_enclosure()for k,v in ai.items()if k!='U_probabilities'},
        'certified_U_probability_enclosures':[v.decimal_enclosure()for v in ai['U_probabilities']],
        'exact_missing_probabilities':['1/6','1/6','1/6','1/6','s/12','(4-s)/12'],
        'example_classification':{'four_common_unbiased_orthonormal_rays':True,'anchor_pure':True,'anchor_flat_in_I':True,'anchor_four_required_overlaps':True,'anchor_flat_in_U':False,'genuine_4_plus_1':False,'rank_G12':2,'rank_G13':3},
        'elapsed_seconds_informational':round(time.monotonic()-START,4),
    }
    (ROOT/'VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print('ALL',len(CHECKS),'EXACT CHECKS PASSED. Full 4+1 bridge remains unresolved.',flush=True)

if __name__=='__main__':main()
