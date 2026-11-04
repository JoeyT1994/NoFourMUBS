#!/usr/bin/env python3
"""Regenerate the small core certificates (verification does not call this)."""
from core_model import *

def sparse(expr):
    terms=s.Poly(s.expand(expr),*V,domain=s.ZZ).terms()
    return [[int(coeff),list(mono)] for mono,coeff in terms if coeff]
payload={'format':'integer_polynomial_cofactors_v1','variables':NAMES,
 'inputs':{k:sparse(f) for k,f in inputs.items()},'steps':[]}
for row in steps:
    r={'name':row['name'],'target':sparse(s.sympify(row['target'],locals=env)),
       'cofactors':{k:sparse(s.sympify(f,locals=env)) for k,f in row['cofactors'].items()}}
    if 'cancel' in row:
        r['cancel']=sparse(s.sympify(row['cancel'],locals=env))
        r['consequence']=sparse(s.sympify(row['consequence'],locals=env))
    payload['steps'].append(r)
(ROOT/'core_certificates.json').write_text(json.dumps(payload,separators=(',',':'))+'\n')
(ROOT/'core_statements.json').write_text(json.dumps({'inputs':{k:str(f) for k,f in inputs.items()},'steps':steps},indent=2)+'\n')
print(json.dumps({'status':'PASS','steps':len(steps),'max_target_terms':max(len(x['target']) for x in payload['steps']),'max_cofactor_terms':max(len(f) for x in payload['steps'] for f in x['cofactors'].values())}))
