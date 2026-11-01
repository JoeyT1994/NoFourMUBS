if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""Exact tangent-frame, transpose, and pair-difference bridges for the cover."""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
import json,importlib.util
spec=importlib.util.spec_from_file_location('quadratic',Path(__file__).with_name('derive_quadratic.py'));e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
GI=[[F(2,3),F(1,3),0,0],[F(1,3),F(2,3),0,0],[0,0,F(2,3),F(1,3)],[0,0,F(1,3),F(2,3)]]
TP=e.mm(e.mm(e.tr(e.V),GI),e.V)
P=[[F(int(i==j))-F(1,6) for j in range(6)] for i in range(6)]
HP=[[P[i//6][j//6]*P[i%6][j%6] for j in range(36)] for i in range(36)]
NP=[[x-y for x,y in zip(a,b)] for a,b in zip(HP,TP)]
idx=[6*j+i for i in range(6) for j in range(6)]
assert [[TP[i][j] for j in idx] for i in idx]==TP
assert [[NP[i][j] for j in idx] for i in idx]==NP
# Cover's orthonormal frame is U0/sqrt2,U1/sqrt6,U2/sqrt2,U3/sqrt6.
U=[e.V[0],[x+2*y for x,y in zip(e.V[0],e.V[1])],e.V[2],[x+2*y for x,y in zip(e.V[2],e.V[3])]]
UG=e.mm(U,e.tr(U));assert UG==[[F((2,6,2,6)[i] if i==j else 0) for j in range(4)] for i in range(4)]
values=set()
for col in range(6):
 for j,k in combinations(range(6),2):
  a=6*j+col;b=6*k+col
  assert HP[a][a]+HP[b][b]-2*HP[a][b]==F(5,3)
  values.add(TP[a][a]+TP[b][b]-2*TP[a][b])
assert values=={F(1,6),F(2,9),F(7,18)}
# Same column restriction spectrum as the earlier exact cross certificate.
for col in range(6):
 inds=[6*j+col for j in range(6)]
 CC=[[TP[i][j] for j in inds] for i in inds]
 def sh(A,a,b):return [[a*x-(b if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(A)]
 assert all(x==0 for row in e.mm(e.mm(CC,sh(CC,6,1)),sh(CC,3,1)) for x in row)
out={'status':'PASS','row_major_physical_order':True,'tangent_projector_commutes_with_transpose':True,'normal_projector_commutes_with_transpose':True,'cover_scaled_frame_Gram':[[str(x) for x in row] for row in UG],'cover_orthonormal_frame':'V0/sqrt2,(V0+2V1)/sqrt6,V2/sqrt2,(V2+2V3)/sqrt6','row_and_column_tangent_operator_squared_upper':'1/3','row_or_column_pair_horizontal_functional_norm_squared':'5/3','tangent_pair_squared_norm_values':sorted(map(str,values)),'max_tangent_pair_squared_norm':'7/18','paired_normal_squared_norm_at_tangent_max':'23/18','pair_bound':'sqrt(7/18)*sqrt(rho²−n²)+sqrt(23/18)*n','pair_bound_condition':'n²/rho²<=23/30'}
Path(__file__).with_name('frame_bridge_receipt.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
