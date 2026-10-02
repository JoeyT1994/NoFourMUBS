"""Revalidate the signed Fourier chart on exact auxiliary R slabs.

Only the reference-tube selection changes: the 1/28 regional tubes are
already proved in sealed v2. No FT majorant or chart domain is enlarged.
"""
from cube import F
from transverse import geometry
from mpmath import iv
from transfer import matrix_radius

def certify(c,r,slabs=8):
 if type(slabs)!=int or not 1<=slabs<=128:raise ValueError('positive bounded integer slab count required')
 g=geometry();oldprec=iv.prec;oldtube=g.TUBE;oldcells=g.CELLS
 try:
  iv.prec=192;R=g.r_enclosure(c,r)
  if R.b<=0:return None
  lo=max(F(0),g.as_rational(R.a));hi=g.as_rational(R.b)
  if hi>=243:return None
  ids=g.proposal_order(c,r)
  if not ids:return None
  # Cells are pinned v2 theorem inputs, not arbitrary radii.
  cells=[(0,0),(2,0)]
  for a,b in cells:
   if matrix_radius(dict(grid=180,a=a,b=b,tolerance_denominator=5))!=F(1,28):raise ValueError('radius')
  g.TUBE=F(1,28);g.CELLS=cells
  coords={i:g.coordinates(c,r,i) for i in ids};proof=[]
  for k in range(slabs):
   a=lo+(hi-lo)*k/slabs;b=lo+(hi-lo)*(k+1)/slabs
   RR=g.span(a,b);found={}
   for fi in ids:
    for sign in [-1,1]:
     if sign not in found:
      q=g.frame_branch_test(c,r,RR,fi,sign,coords[fi])
      if q is not None:found[sign]=q
    if len(found)==2:break
   if len(found)!=2:return None
   proof.append(dict(R_lower=str(a),R_upper=str(b),branches=[found[-1],found[1]]))
  return dict(ok=True,method='Fourier_R_slabs',statement='all_four_pairings_for_physical_R_positive',slabs=slabs,R_lower=str(lo),R_upper=str(hi),proof=proof)
 finally:iv.prec=oldprec;g.TUBE=oldtube;g.CELLS=oldcells
