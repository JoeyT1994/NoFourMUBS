"""Exact algebra and whole-cube guards for the transpose reduction."""
from cube import box,audit_geometry
from direct_models import Laurent,ORIGIN
from transverse import geometry
from mpmath import iv

def invariants(transpose=False):
 one=Laurent({ORIGIN:1});x=[Laurent({tuple(int(i==j) for i in range(4)):1}) for j in range(4)]
 E=[[one]*3,[one,x[0],x[1]],[one,x[2],x[3]]]
 if transpose:E=list(map(list,zip(*E)))
 s,t,r=[-sum((E[i][j]*E[k][j].conj() for j in range(3)),Laurent()) for i,k in ((1,0),(2,0),(2,1))]
 X,Y,Z=[z.abs2() for z in (s,t,r)];p=X+Y+Z;J=s*r*t.conj()+s.conj()*r.conj()*t
 g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
 return dict(g=g,eta=eta,chi=chi,R=4*g*g*eta-chi*chi)

def run():
 a=invariants();b=invariants(True)
 if a!=b or any(q!=q.conj() for q in a.values()):raise ValueError('scalar transpose/conjugation identities')
 geometry_report=audit_geometry();old=iv.prec
 try:
  iv.prec=192;g=geometry();R=g.r_enclosure(*box())
  if not R.b<243:raise ValueError('Tao/nonmatched exclusion not established')
  bounds=g.bounds_text(R)
 finally:iv.prec=old
 return dict(status='PASS',geometry=geometry_report,exact_Laurent_transpose_terms={k:len(v) for k,v in a.items()},R_enclosure=bounds,nonmatched_Tao_R_243_excluded=True,
  matched_transpose='H_plus(E)^T is equivalent to H_minus(E^T); proof uses matched side exhaustion and unique completion',
  R_zero='physical maximal corner: MC1 implies F6, excluded by adopted Fourier theorem')
if __name__=='__main__':
 import json
 print(json.dumps(run(),indent=2))
