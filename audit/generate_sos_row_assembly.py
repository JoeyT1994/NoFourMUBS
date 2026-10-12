"""Assemble existing row proofs; never regenerate their certificates."""
from pathlib import Path
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')
require_reuse_review('signature_semantics')
require_reuse_review('physical_target_projection')
ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT/'lean/NoFourMUBs/Step2/SOS'
AUDIT = ROOT/'audit/sos'
PFX = 'NoFourMUBs.Step2.SOS'
rows = {}
for family in ['ReusedRows','BoundaryRows','FourierRows','PsiRows']:
    for path in sorted(DEST.glob(family+'*.lean')):
        for n in re.findall(r'^theorem rowSound(\d+)\b',path.read_text(),re.M):
            i = int(n)
            assert i not in rows, f'Duplicate active proof of row {i}'
            args = 'hH hF hFt' if family=='FourierRows' else 'hH hC' if family=='PsiRows' else 'hH'
            rows[i] = {'module':PFX+'.'+path.stem,'args':args,
                       'sha256':hashlib.sha256(path.read_bytes()).hexdigest()}
assert set(rows) == set(range(1338)), 'Every selected row must have exactly one proof.'
body = ''.join('import '+m+'\n' for m in sorted({r['module'] for r in rows.values()}))
body += '''
/-! Assemble the one selected certificate. Every row calls its existing proof. -/
namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

theorem rowsSound {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)
    (hC : ComplementarySignatures H) :
    ∀ i, Integer.Sparse.eval (Arithmetic.rows i) (momentVector H) = 0 := by
  intro i
  fin_cases i
'''
for i in range(1338): body += f'  · exact rowSound{i} {rows[i]["args"]}\n'
body += '\nend NoFourMUBs.Step2.SOS.Semantics\n'
path = DEST/'RowsSound.lean'
if not path.exists() or path.read_text()!=body:path.write_text(body)
manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED','rows':rows,
            'assembled_rows':1338,'source_sha256':hashlib.sha256(body.encode()).hexdigest(),
            'module':PFX+'.RowsSound','scope':'One call to each existing row proof, no duplicate certificate.'}
(AUDIT/'ROW_ASSEMBLY_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('1338 selected rows have exactly one active proof each; assembly emitted.')
