#!/usr/bin/env python3
import json
from pathlib import Path
import y_model as m
ROOT=Path(__file__).resolve().parent

def sparse(expr):
 return [[int(c),list(mm)] for mm,c in m.s.Poly(m.s.expand(expr),*m.V,domain=m.s.ZZ).terms() if c]
P={'format':'integer_polynomial_cofactors_v1','variables':m.NAMES,
   'inputs':{k:sparse(f) for k,f in m.YINPUTS.items()},'steps':[]}
for r in m.YSTEPS:
 z={'name':r['name'],'target':sparse(m.s.sympify(r['target'],locals=m.env)),
    'cofactors':{k:sparse(m.s.sympify(f,locals=m.env)) for k,f in r['cofactors'].items()}}
 if 'cancel' in r:
  z.update(cancel=sparse(m.s.sympify(r['cancel'],locals=m.env)),consequence=sparse(m.s.sympify(r['consequence'],locals=m.env)))
 P['steps'].append(z)
(ROOT/'y_certificates.json').write_text(json.dumps(P,separators=(',',':'))+'\n')
(ROOT/'y_gram_conditions.json').write_text(json.dumps({'variables':m.NAMES,'y_gram_0':str(m.y0),'y_gram_1':str(m.y1),'y_gram_0_terms':sparse(m.y0),'y_gram_1_terms':sparse(m.y1)},indent=2)+'\n')
print(json.dumps({'status':'PASS','steps':len(P['steps']),'Gram_conditions_terms':[len(sparse(m.y0)),len(sparse(m.y1))],'max_cofactor_terms':max(len(f) for r in P['steps'] for f in r['cofactors'].values())}))
