"""Read-only test of an elementary sign argument for stored Bernstein data.

Uses the supplied factorizations, without regenerating the quartic, its
Bernstein coefficients, or any atlas. No result here is a Lean certificate.
"""
from pathlib import Path
from fractions import Fraction
from math import comb
import hashlib
import json
import re

import sympy as sp

ROOT=Path(__file__).resolve().parent.parent
SOURCE=ROOT.parent/'full_repair_2026_10_09/MinimalConstruction/Proofs/Research/critical_nonzero_J_bernstein.json'


def mul(a,b):
    out=[Fraction(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    return out


def power(a,n):
    out=[Fraction(1)]
    for _ in range(n):out=mul(out,a)
    return out


def transformed(poly,lo,hi):
    degree=poly.degree();out=[Fraction(0)]*(degree+1)
    for (i,),c in poly.terms():
        c=Fraction(int(sp.numer(c)),int(sp.denom(c)))
        term=power([lo,hi if hi is not None else Fraction(1)],i)
        if hi is not None:term=mul(term,power([Fraction(1),Fraction(1)],degree-i))
        for j,v in enumerate(term):out[j]+=c*v
    return out


def main():
    k=sp.Symbol('c');data=json.loads(SOURCE.read_text())
    intervals={'low01':(Fraction(0),Fraction(1),Fraction(1,2)),
               'low1inf':(Fraction(1),None,Fraction(2)),
               'high013':(Fraction(0),Fraction(1,3),Fraction(1,6)),
               'high131':(Fraction(1,3),Fraction(1),Fraction(1,2)),
               'high1inf':(Fraction(1),None,Fraction(2))}
    unique={};values=[]
    for region,expressions in data.items():
        lo,hi,sample=intervals[region]
        for index,text in enumerate(expressions):
            assert re.fullmatch(r'[0-9c\s+\-*/().]+',text),text
            expr=sp.sympify(text,locals={'c':k})
            assert expr.subs(k,sp.Rational(sample.numerator,sample.denominator))<0
            numerator,denominator=sp.fraction(expr)
            required=[]
            for where,part in [('numerator',numerator),('denominator',denominator)]:
                for factor,multiplicity in part.as_powers_dict().items():
                    if factor.is_Number:continue
                    assert multiplicity.is_Integer and multiplicity>0
                    # Even numerator powers are automatically nonnegative.
                    if where=='numerator' and int(multiplicity)%2==0:continue
                    poly=sp.Poly(factor,k,domain=sp.QQ)
                    key=(str(poly.as_expr()),str(lo),str(hi))
                    if key not in unique:
                        sign=1 if poly.eval(sp.Rational(sample.numerator,sample.denominator))>0 else -1
                        coeff=[sign*c for c in transformed(poly,lo,hi)]
                        elevation=0
                        while min(coeff)<0 and elevation<64:
                            coeff=mul(coeff,[Fraction(1),Fraction(1)]);elevation+=1
                        unique[key]={'polynomial':str(poly.as_expr()),'lo':str(lo),'hi':str(hi),
                                     'sign':sign,'original_degree':poly.degree(),'elevation':elevation,
                                     'all_coefficients_nonnegative':min(coeff)>=0,
                                     'some_coefficient_positive':max(coeff)>0,
                                     'coefficient_count':len(coeff),'used_by':[]}
                    unique[key]['used_by'].append([region,index,where,int(multiplicity)])
                    required.append(key)
            values.append({'region':region,'index':index,'required_factors':len(required)})
    records=list(unique.values())
    result={'status':'READ_ONLY_SIGN_DIAGNOSTIC_NOT_LEAN_PROOF','source':str(SOURCE),
            'sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'stored_coefficients':len(values),
            'factor_interval_checks':len(records),'passed':sum(r['all_coefficients_nonnegative'] for r in records),
            'max_elevation':max(r['elevation'] for r in records),'records':records,
            'remaining':['Bind stored Bernstein data to the existing Lean quartic.',
                         'Prove transformations and coefficient signs in Lean.',
                         'Retain endpoint and common-zero cases; this diagnostic does not classify them.'],
            'atlas_certification':False}
    (ROOT/'audit/CRITICAL_NONZERO_QUARTIC_SIGN_DIAGNOSTIC.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='records'}))
    print('nontrivial elevations',[(r['polynomial'],r['lo'],r['hi'],r['elevation']) for r in records if r['elevation']])


if __name__=='__main__':main()
