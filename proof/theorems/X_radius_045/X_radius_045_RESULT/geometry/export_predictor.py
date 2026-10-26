if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from pathlib import Path
from fractions import Fraction as F
import json,importlib.util
spec=importlib.util.spec_from_file_location('quadratic',Path(__file__).with_name('derive_quadratic.py'))
e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
Z=[[12*x for x in e.Q[a][b]] for a,b in ((0,2),(0,3),(1,2),(1,3))]
assert all(x.denominator==1 for row in Z for x in row)
M=[[4,2,2,1],[2,4,1,2],[2,1,4,2],[1,2,2,4]]
GG=e.mm(Z,e.tr(Z));assert e.mm(GG,[[F(x,36) for x in row] for row in M])==[[F(int(i==j)) for j in range(4)] for i in range(4)]
s=json.loads(Path(__file__).with_name('normal_bounds_symmetric_receipt.json').read_text())
rows=[]
for row in s['rows']:
 rho=F(row['rho']);n=F(row['normal']);r=F(row['column'])
 eps=F(463,1000)*rho*n+F(297,500)*n*n+F(385,1000)*r*rho*rho
 rows.append({'rho':str(rho),'normal':str(n),'column':str(r),'epsilon':str(eps),'epsilon_decimal':float(eps)})
out={'status':'PASS','phase_units':'radians','physical_order':'row-major (row*6+column)','tangent_convention':'eta=sum_a z[a]*V[a]; ||eta||²=z^T Gram z','natural_frame_V':[[str(x) for x in v] for v in e.V],'Gram':[[str(x) for x in row] for row in e.G],'Q_convention':'Q(eta,eta)=sqrt(3)*sum_ab z[a]*z[b]*Q_div_sqrt3[a][b]; nu=Q(eta,eta)+e','Q_div_sqrt3':[[[str(x) for x in col] for col in row] for row in e.Q],'quadratic_range_integer_basis_Z':[[int(x) for x in row] for row in Z],'Z_Gram_inverse':[[str(F(x,36)) for x in row] for row in M],'normal_error_rows':rows,'cubic_predictor_envelope_rows':json.loads(Path(__file__).with_name('cubic_envelope_receipt.json').read_text())['rows'],'error_formula':'epsilon=(463/1000)rho*n+(297/500)n²+(385/1000)rcol*rho²'}
Path(__file__).with_name('quadratic_predictor.json').write_text(json.dumps(out,indent=2))
for row in rows:print(row['rho'],row['epsilon_decimal'])
