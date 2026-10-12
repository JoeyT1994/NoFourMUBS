"""Check supplied Bernstein formulas against the existing generic quartic.

Copies no quartic data and generates no Bernstein coefficients.  Four identities
cover five listed patches, since the middle high interval reverses the first.
"""
import hashlib
import json
from pathlib import Path

from prepare_nonzero_scalar_signs import ROOT, AUDIT, OUT, BASE, NS
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_scalar_signs')
    data = (OUT/'Data.lean').read_text()
    import re
    defs = re.findall(r'^(?:def|abbrev) (\w+)', data, re.M)
    common = ['pLow','pLower1','pLower2','pUpper1','pUpper2','quadMinus','other','kappa']
    patches = {'low01': ('minimum','rootMinus'), 'low1inf': ('minimum','root0'),
               'high013': ('rootPlus','root0'), 'high1inf': ('rootMinus','rootPlus')}
    records, endpoints = [], []
    def record(name):
        p=OUT/(name+'.lean')
        records.append({'module':BASE+name, 'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,
                        'review':'CRITICAL_NONZERO_SCALAR_SIGN_REUSE_REVIEW.json'})
    record('Blend')
    endpoints += [NS+'.'+n for n in ['blend_neg','negative_on_interval','blend_reverse']]
    for region,(left,right) in patches.items():
        name='Binding_'+region
        proof=region+'_binding'
        text=f'''import {BASE}Blend
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomialData
import NoFourMUBs.Reuse.Archive.CriticalModulusIntervals

set_option autoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 10000000
namespace {NS}
open CriticalModulusDomain20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

theorem {proof} (k t : ℝ) :
    quartic k ((1-t)*{left} k+t*{right} k) =
      blend ({region}_0 k) ({region}_1 k) ({region}_2 k) ({region}_3 k) ({region}_4 k) t := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  have hh' : (k^2+1 : ℝ)≠0 := by simpa [add_comm] using hh
  simp only [quartic,blend,{','.join(defs)},minimum,root0,rootPlus,rootMinus,h]
  field_simp [hh,hh']
  <;> ring

end
#print axioms {proof}
end {NS}
'''
        p=OUT/(name+'.lean');assert not p.exists();p.write_text(text)
        record(name);endpoints.append(NS+'.'+proof)
    text='\n'.join('import '+BASE+'Binding_'+r for r in patches)+'\n'
    p=OUT/'Bindings.lean';assert not p.exists();p.write_text(text);record('Bindings')
    paths=['NoFourMUBs/Step2/CriticalZero/ScalarSigns/Data.lean',
           'NoFourMUBs/Reuse/Archive/CriticalNonzeroPolynomialData.lean',
           'NoFourMUBs/Reuse/Archive/CriticalModulusIntervals.lean',
           'NoFourMUBs/Reuse/Archive/CriticalModulusDiscriminant.lean']
    manifest={'scope':'critical_nonzero_scalar_signs','status':'PREPARED_NOT_COMPILED',
              'records':records,'axiom_endpoints':endpoints,'atlas_certification':False,
              'dependency_pins':[{'active_path':p,'active_sha256':hashlib.sha256((ROOT/'lean'/p).read_bytes()).hexdigest()} for p in paths],
              'scope_note':'Four identities bind the supplied Bernstein data to the existing quartic. Reversed middle high interval uses the same identity.'}
    (AUDIT/'CRITICAL_NONZERO_BERNSTEIN_BINDINGS_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'atlas_certification':False}))


if __name__=='__main__':main()
