#!/usr/bin/env python3
"""Exact polar-frame strengthening, standard library only."""
from fractions import Fraction as F
from functools import lru_cache
import io,contextlib,json,math
with contextlib.redirect_stdout(io.StringIO()):
    import verify_basis_budget as B
E=B.E;A=B.A;rays=B.rays;data=B.data;I=B.I;Z=A.Z;CZERO=A.CZERO
# Lower spectral and polar-distance constants for the 36 mixed center frames.
smin=F(7,10);d2=F(151,625);q=F(51,100);N=12
assert A.iev(B.alpha)[0]>smin**2
assert smin**2<A.iev(B.kappa)[0]/2
p_small=A.ra(A.rs(A.ONE,smin**4+F(2,3)),A.rs(B.kappa,-smin**2))
assert A.iev(p_small)[0]>0
assert F(49,36)<1+q and 1-smin**2==q
root23=E.sqrt_upper(F(2,3))
trace_root_upper=E.sqrt_upper(A.iev(B.kappa)[1]+2*root23)+E.sqrt_upper(A.iev(B.alpha)[1])
assert 12-4*trace_root_upper>d2
polar_approx_error=F(5,2)*q**(N+1)/(1-q)
assert F(6)<F(5,2)**2

def tr(P):
 s=CZERO
 for i in range(6):s=A.ca(s,P[i][i])
 return s

def mscale(P,c):return [[B.cs(x,c) for x in row] for row in P]
def adj(P):return [[A.cj(P[j][i]) for j in range(6)] for i in range(6)]
@lru_cache(None)
def polar_center(clique):
 G=[[B.inner(i,j) for j in clique] for i in clique]
 C=[[rays[j][i] for j in clique] for i in range(6)] # unnormalized center frame
 if G==I:return C,F(0),F(0),F(1)
 assert B.center_sigma(clique)==F(7,6)
 # The alpha projector has trace two; the other two eigenvalues then also
 # have multiplicity two by trace G=6 and lambda_++lambda_-=kappa.
 Gq=B.madd(B.madd(B.mmul(G,G),B.mneg(B.mfield(G,B.kappa))),mscale(I,F(2,3)))
 denom=A.ra(A.ra(A.rm(B.alpha,B.alpha),A.rn(A.rm(B.kappa,B.alpha))),A.rs(A.ONE,F(2,3)))
 assert tr(Gq)==(A.rs(denom,2),Z)
 dlo,dhi=A.iev(denom);assert dhi<0 or dlo>0
 assert tr(G)==(A.rs(A.ONE,6),Z)
 R=B.madd(I,B.mneg(G));power=I;poly=I
 for n in range(1,N+1):
  power=B.mmul(power,R)
  coeff=F(math.comb(2*n,n),4**n);assert 0<coeff<=1
  poly=B.madd(poly,mscale(power,coeff))
 # C poly /sqrt6 approximates the exact unitary polar factor.
 return B.mmul(C,poly),polar_approx_error,d2,smin

@lru_cache(None)
def overlap_data(a,b):
 if b<a:return overlap_data(b,a)
 Pa,ea,_,_=polar_center(a);Pb,eb,_,_=polar_center(b)
 M=mscale(B.mmul(adj(Pa),Pb),F(1,6))
 square_sum=F(0);abs_sum=F(0)
 for row in M:
  for x in row:
   value=A.abs2(x);lo,hi=A.iev(value)
   square_sum+=lo
   abs_sum+=E.sqrt_upper(max(F(0),hi))
 D2=6+square_sum-2*abs_sum/B.sqrt6lo
 # Formula: || |M|-1/sqrt6 ||F²=||M||F²+6-(2/sqrt6)sum|M|.
 return D2

configs=[
 {'name':'G_67_100_B_93_200','G':F(67,100),'B':F(93,200),'gap':F(1,20000)},
 {'name':'G_27_40_B_23_50','G':F(27,40),'B':F(23,50),'gap':F(1,20000)},
 {'name':'G_27_40_B_9_20','G':F(27,40),'B':F(9,20),'gap':F(1,20000)},
 {'name':'G_7_10_B_2_5','G':F(7,10),'B':F(2,5),'gap':F(1,2000)},
 {'name':'G_7_10_B_17_40','G':F(7,10),'B':F(17,40),'gap':F(1,20000)},
]
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
    upper=(r*r/F(6))*(1-r*r/F(36)+r**4/F(4320))**2
    if d['antipodal_constant'] is not None:upper=min(upper,(r*r+d['antipodal_constant'])**2/F(36))
    if upper<target:ui&=~(1<<j)
  O.append(oi);U.append(ui)
 allcl=[]
 def enum(a,p):
  if len(a)==6:allcl.append(tuple(a));return
  if len(a)+p.bit_count()<6:return
  while p:
   j=(p&-p).bit_length()-1;p&=p-1;enum(a+[j],p&O[j])
 enum([], (1<<48)-1)
 assert len(allcl)==52
 cliques=[];errors=[];approxs=[];normal_rejects=0
 for c in allcl:
  P,approx,distlow,svlow=polar_center(c)
  a2=sum(radii[j]**2 for j in c)/6
  if a2<distlow:normal_rejects+=1;continue
  # Exact polar comparison: ||K-polar(A)||F²<=(a²-d_A²)/sigma_min(A).
  cliques.append(c);errors.append(E.sqrt_upper((a2-distlow)/svlow));approxs.append(approx)
 point_count=budget_count=0;proofs=[]
 for ia,a in enumerate(cliques):
  for ib,b in enumerate(cliques):
   witness=next(((i,j) for i in a for j in b if not(U[i]>>j&1)),None)
   if witness is not None:point_count+=1;continue
   D2=overlap_data(a,b)
   if approxs[ia]==0 and approxs[ib]==0:
    # The exact center frames are unitary and each has one uniform radius.
    # Jensen plus the spherical angle triangle inequality improves the
    # cross-Gram Frobenius budget to 2sqrt6 sin((r_A+r_B)/(2sqrt6)).
    assert len({radii[k] for k in a})==1 and len({radii[k] for k in b})==1
    total=radii[a[0]]+radii[b[0]]
    assert total*total<24
    budget=total*(1-total*total/F(144)+total**4/F(69120))
    spherical=True
   else:
    budget=errors[ia]+errors[ib]+approxs[ia]+approxs[ib]+approxs[ia]*approxs[ib]
    spherical=False
   assert D2>(budget+33*gap)**2,(conf['name'],ia,ib)
   budget_count+=1
   proofs.append({'first_clique':ia,'second_clique':ib,'modulus_distance_squared_lower':str(D2),
                  'polar_budget_upper':str(budget),'spherical_unitary_budget':spherical})
 receipts.append({'name':conf['name'],'gaussian_radius':str(conf['G']),'bjork_radius':str(conf['B']),
  'quantized_gaussian_radius':str(conf['G']-F(1,1000)),
  'quantized_bjork_radius':str(conf['B']-F(1,1000)),
  'guaranteed_probability_gap':str(gap),'minimum_cross_probability_upper':str(target),
  'orthogonality_edges':sum(x.bit_count() for x in O)//2,
  'orthogonality_six_cliques_before_polar_test':[list(c) for c in allcl],
  'polar_infeasible_cliques':normal_rejects,'remaining_cliques':[list(c) for c in cliques],
  'mixed_center_polar_distance_squared_lower':str(d2),'mixed_center_smallest_singular_value_lower':str(smin),
  'polar_inverse_sqrt_truncation_degree':N,'polar_approximation_Frobenius_error_upper':str(polar_approx_error),
  'pointwise_witnesses':point_count,'polar_basis_budget_witnesses':budget_count,
  'basis_budget_proofs':proofs})
print(json.dumps({'status':'CERTIFIED','configurations':receipts},indent=2))
