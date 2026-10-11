#!/usr/bin/env python3
"""Render verified integer cofactor identities as small Lean ring lemmas.

This is a source generator, not a Lean build. No project or Mathlib installation
is assumed here. The statements are pure polynomial identities; field
cancellation and geometric specialization are documented in ALGEBRA.md.
"""
from pathlib import Path
import sympy as s
import core_model as core
import y_model as y

def lean(f):
 f=s.sympify(f)
 if isinstance(f,s.Symbol):return str(f)
 if isinstance(f,s.Integer):return str(f) if f>=0 else '('+str(f)+')'
 if isinstance(f,s.Add):return '('+' + '.join(lean(a) for a in f.args)+')'
 if isinstance(f,s.Mul):return '('+' * '.join(lean(a) for a in f.args)+')'
 if isinstance(f,s.Pow) and f.exp.is_Integer and f.exp>=0:return '('+lean(f.base)+' ^ '+str(f.exp)+')'
 raise TypeError(f)

out=['import Mathlib','',
'/-!','Supporting polynomial lemmas for SideExistence. These are generated from',
'exactly verified integer cofactor identities. No `sorry`, axiom, existing-side',
'hypothesis, or generic-specialization argument occurs here.',
'This source has not been compiled in the supplied environment. It is a',
'polynomial support module, not a claim that the full target is formalized.',
'-/','',
'namespace SideExistence.SmallPolynomialCertificates','',
'variable {R : Type*} [CommRing R]','']
for model,rows in [(core,core.steps),(y,y.YSTEPS)]:
 for row in rows:
  refs=row['cofactors']
  target=s.sympify(row['target'],locals=model.env)
  exprs=[target]+[model.ALL[k] for k in refs]
  names=[name for name in core.NAMES if any(core.env[name] in f.free_symbols for f in exprs)]
  out.append('lemma '+row['name']+' ('+' '.join(names)+' : R)')
  for name in refs:out.append('    (h_'+name+' : '+lean(model.ALL[name])+' = 0)')
  out.append('    : '+lean(target)+' = 0 := by')
  terms=[lean(s.sympify(coeff,locals=model.env))+' * h_'+name for name,coeff in refs.items()]
  out.append('  linear_combination '+' +\n    '.join(terms))
  out.append('')
out+=['end SideExistence.SmallPolynomialCertificates','']
Path(__file__).with_name('SmallPolynomialLemmas.lean').write_text('\n'.join(out))
print('Generated 31 polynomial lemmas; Lean compilation not attempted.')
