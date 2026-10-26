#!/usr/bin/env python3
"""Exact basis-level strengthening of the 48-ray ball obstruction.

The pointwise low-overlap graph is supplemented by Frobenius comparison
of entire center Gram matrices with a flat unitary Gram matrix.
"""
from fractions import Fraction as F
from functools import lru_cache
import io,contextlib,json,math
with contextlib.redirect_stdout(io.StringIO()):
    import verify_extended_graph as E
A=E.A;rays=E.rays;data=E.data
Z=A.Z;CZERO=A.CZERO;CONE=A.CONE

def cs(x,c):return A.rs(x[0],c),A.rs(x[1],c)
def cfield(x,c):return A.cm(x,(c,Z))
def madd(P,Q):return [[A.ca(x,y) for x,y in zip(r,s)] for r,s in zip(P,Q)]
def mneg(P):return [[A.cn(x) for x in r] for r in P]
def mmul(P,Q):
    out=[]
    for row in P:
        orow=[]
        for col in zip(*Q):
            s=CZERO
            for x,y in zip(row,col):s=A.ca(s,A.cm(x,y))
            orow.append(s)
        out.append(orow)
    return out
I=[[CONE if i==j else CZERO for j in range(6)] for i in range(6)]
def mfield(P,c):return [[cfield(x,c) for x in r] for r in P]
@lru_cache(None)
def inner(i,j):return cs(A.inner(rays[i],rays[j]),F(1,6))
alpha=A.rs(A.B2,F(4,3))  # 2/sqrt(3)
kappa=A.ra(A.rs(A.ONE,3),A.rn(alpha))
sigma_mixed=F(7,6);sigma2=sigma_mixed**2
assert A.iev(alpha)[1]<sigma2
assert A.iev(kappa)[1]/2<sigma2
quad_at_sigma=A.ra(A.rs(A.ONE,sigma2**2+F(2,3)),A.rs(kappa,-sigma2))
assert A.iev(quad_at_sigma)[0]>0

@lru_cache(None)
def center_sigma(clique):
    G=[[inner(i,j) for j in clique] for i in clique]
    assert all(G[i][j]==A.cj(G[j][i]) for i in range(6) for j in range(6))
    if G==I:return F(1)
    # All nonorthogonal possible center label frames have this cubic
    # spectral polynomial. The scalar comparisons above put every root
    # below (7/6)^2, hence ||center frame||_op<=7/6.
    Ga=madd(G,mneg(mfield(I,alpha)))
    Gq=madd(madd(mmul(G,G),mneg(mfield(G,kappa))),[[cs(x,F(2,3)) for x in r] for r in I])
    zero=mmul(Ga,Gq)
    assert all(x==CZERO for row in zero for x in row),clique
    return sigma_mixed

def sqrt_lower(q,bits=80):
    assert q>=0
    n=math.isqrt((q.numerator<<(2*bits))//q.denominator)
    v=F(n,1<<bits)
    assert v*v<=q
    return v
sqrt6lo=sqrt_lower(F(6))
configs=[
 {'name':'G_31_50_B_1_2','G':F(31,50),'B':F(1,2),'gap':F(1,5000)},
 {'name':'G_16_25_B_12_25','G':F(16,25),'B':F(12,25),'gap':F(1,5000)},
 {'name':'G_3_5_B_21_40','G':F(3,5),'B':F(21,40),'gap':F(1,20000)},
 {'name':'G_5_8_B_1_2','G':F(5,8),'B':F(1,2),'gap':F(1,20000)},
]
# If all entries of a unitary cross-Gram have probability >=1/6-epsilon,
# each row's squared probability deviation is <=30epsilon². Thus its
# modulus-matrix Frobenius deviation is <=6sqrt(30)epsilon<33epsilon.
assert 1080<33**2
receipts=[]
for conf in configs:
 radii=[conf['G']]*12+[conf['B']]*36;gap=conf['gap'];target=F(1,6)-gap
 O=[];U=[]
 for i in range(48):
  oi=0;ui=(1<<48)-1
  for j in range(48):
   d=data[i][j];r=radii[i]+radii[j]
   assert r<A.pi_lo and r*r<6
   if i!=j:
    if not(d['lo']>6*r*r or d['lo']>r*d['radial']+d['abs_s']*r*r/2):oi|=1<<j
   else:assert d['lo']>6*r*r
   if d['zero']:
    up=(r*r/F(6))*(1-r*r/F(36)+r**4/F(4320))**2
    if d['antipodal_constant'] is not None:
     up=min(up,(r*r+d['antipodal_constant'])**2/F(36))
    if up<target:ui&=~(1<<j)
  O.append(oi);U.append(ui)
 cliques=[]
 def enum(a,p):
  if len(a)==6:cliques.append(tuple(a));return
  if len(a)+p.bit_count()<6:return
  while p:
   j=(p&-p).bit_length()-1;p&=p-1;enum(a+[j],p&O[j])
 enum([], (1<<48)-1)
 assert len(cliques)==52
 sig=[center_sigma(c) for c in cliques]
 err=[E.sqrt_upper(sum(radii[j]**2 for j in c)/6) for c in cliques]
 point_count=budget_count=0;budget_proofs=[]
 for ia,a in enumerate(cliques):
  for ib,b in enumerate(cliques):
   witness=next(((i,j) for i in a for j in b if not(U[i]>>j&1)),None)
   if witness is not None:
    point_count+=1;continue
   # D²=|| |A*B| -(1/sqrt6)ones ||_F².
   square_lower=F(6)+sum(data[i][j]['lo'] for i in a for j in b)/36-sum(data[i][j]['abs_s'] for i in a for j in b)/(3*sqrt6lo)
   assert square_lower>0
   frame_error=min(err[ia]+sig[ia]*err[ib],sig[ib]*err[ia]+err[ib])
   # Additional 33gap supplies a quantitative minimum-probability deficit.
   assert square_lower>(frame_error+33*gap)**2,(conf['name'],ia,ib)
   budget_count+=1
   budget_proofs.append({'first_clique':ia,'second_clique':ib,'modulus_distance_squared_lower':str(square_lower),
                         'frame_error_upper':str(frame_error),'extra_modulus_margin':'33*gap'})
 receipts.append({
  'name':conf['name'],'gaussian_radius':str(conf['G']),'bjork_radius':str(conf['B']),
  'quantized_gaussian_radius':str(conf['G']-F(1,1000)),
  'quantized_bjork_radius':str(conf['B']-F(1,1000)),
  'guaranteed_probability_gap':str(gap),'minimum_cross_probability_upper':str(target),
  'orthogonality_edges':sum(x.bit_count() for x in O)//2,
  'orthogonality_six_cliques':[list(c) for c in cliques],
  'center_frames_exactly_unitary':sum(x==1 for x in sig),
  'remaining_center_frame_operator_bound':'7/6',
  'ordered_clique_pairs':len(cliques)**2,
  'pointwise_low_overlap_witnesses':point_count,
  'whole_basis_budget_witnesses':budget_count,
  'basis_budget_proofs':budget_proofs,
 })
print(json.dumps({'status':'CERTIFIED','configurations':receipts},indent=2))
