"""Reproduce the small polynomial multipliers using exact linear algebra.

Prints JSON only. The routine verifier checks the frozen identities directly.
"""
import json
import sympy as sp
from sympy.polys.matrices import DomainMatrix
from verify import completion_data

p,q,polys,Gq,Gp,_,_=completion_data()
field=sp.QQ.algebraic_field(sp.I,sp.sqrt(6))
poly=lambda x:sp.Poly(x,p,q,domain=field)
degree=6
monos=[p**a*q**b for a in range(degree+1) for b in range(degree+1-a)]
muls=[p**a*q**b for a in range(degree-2) for b in range(degree-2-a)]
pairs=[(j,m) for j in range(3) for m in muls]
columns=[poly(polys[j]*m) for j,m in pairs]
rows=[[f.coeff_monomial(m) for f in columns] for m in monos]
result=[]
for target in [p*q*Gq,p*q*Gp]:
    mat=sp.Matrix([row+[poly(target).coeff_monomial(m)] for row,m in zip(rows,monos)])
    rr,pivots=DomainMatrix.from_Matrix(mat).convert_to(field).rref()
    assert len(columns) not in pivots
    rr=rr.to_Matrix();coeff=[sp.Integer(0)]*len(columns)
    for i,pivot in enumerate(pivots):coeff[pivot]=rr[i,-1]
    cert=[sp.expand(sum(coef*m for coef,(jj,m) in zip(coeff,pairs) if j==jj)) for j in range(3)]
    assert poly(sum(c*f for c,f in zip(cert,polys))-target).is_zero
    result.append([str(poly(c).as_expr()) for c in cert])
print(json.dumps({'degree':degree,'multipliers':result},indent=2,sort_keys=True))
