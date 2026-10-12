"""Extract the existing permanent-norm proof and adapt only its dependencies."""
from pathlib import Path
import hashlib
import json
from reuse_preflight import require_reuse_review

require_reuse_review('side_identities')

AUDIT = Path(__file__).resolve().parent
LEAN = AUDIT.parent / 'lean'
records = json.loads((AUDIT / 'ARCHIVE_FETCHED_SOURCES.json').read_text())


def source(module, prefix):
    record = next(r for r in records if r['module'] == module and r['sha256'].startswith(prefix))
    text = (AUDIT / record['local']).read_text()
    assert hashlib.sha256(text.encode()).hexdigest() == record['sha256']
    return text, record


gram, gr = source('GramNumerators', '693ed029')
forward, fr = source('PhysicalSideForward', 'e2d7aee5')
gram_defs = gram[gram.index('def q '):gram.index('def chi ')]
side_defs = forward[forward.index('def side '):forward.index('theorem actual_gram ')]
eta = forward[forward.index('set_option maxHeartbeats 0 in\ntheorem eta_permanent '):
              forward.index('set_option maxHeartbeats 0 in\ntheorem numerator0_binding ')]
header = '''import NoFourMUBs.Step2.SideAlg
import Hadamard6.Basic

/-! The archived eta_permanent proof is retained verbatim. Its determinant
norm input delegates to the repository's Side.side_identities already in use.
Only the small Gram definitions needed by this proof are imported from the archive. -/

noncomputable section
open scoped ComplexConjugate
namespace FourierGramNumerators
'''
middle = '''end FourierGramNumerators

namespace FourierPhysicalSide
open Matrix
private abbrev IsPhase (z : ℂ) : Prop := Complex.normSq z = 1

private theorem phase_mul_conj {z : ℂ} (h : IsPhase z) : z * conj z = 1 :=
  (mul_comm z (conj z)).trans (Hadamard6.star_mul_self_of_normSq_one h)

'''
bridge = '''/-- Reuse the determinant norm theorem; only the coordinate conventions differ. -/
theorem g_determinant (x0 x1 x2 y0 y1 y2 : ℂ)
    (hx0 : IsPhase x0) (hx1 : IsPhase x1) (hx2 : IsPhase x2)
    (hy0 : IsPhase y0) (hy1 : IsPhase y1) (hy2 : IsPhase y2) :
    FourierGramNumerators.g (s x0 x1 x2) (t y0 y1 y2) (r x0 x1 x2 y0 y1 y2) =
      Complex.normSq (determinant x0 x1 x2 y0 y1 y2) := by
  have hx : ∀ j : Fin 3, Complex.normSq (![x0,x1,x2] j) = 1 := by
    intro j; fin_cases j <;> assumption
  have hy : ∀ j : Fin 3, Complex.normSq (![y0,y1,y2] j) = 1 := by
    intro j; fin_cases j <;> assumption
  have h := Complex.ofReal_injective (NoFourMUBs.Side.side_identities hx hy).2.2.2
  rw [determinant_formula]
  convert h.symm using 1
  · simp [FourierGramNumerators.g, NoFourMUBs.Side.gS, NoFourMUBs.Side.sS,
      NoFourMUBs.Side.rS, s, t, r, Complex.star_def, Complex.mul_re,
      Complex.mul_im, Complex.conj_re, Complex.conj_im]
    <;> ring
  · congr 1
    simp [NoFourMUBs.Side.hS]
    <;> ring

'''
text = header + gram_defs + middle + side_defs + bridge + eta + '\nend FourierPhysicalSide\n'
path = LEAN / 'NoFourMUBs/Reuse/Archive/SidePermanent.lean'
path.write_text(text)
(AUDIT / 'ARCHIVE_PERMANENT_REUSE.json').write_text(json.dumps({
    'sources': [gr, fr], 'active_path': str(path.relative_to(LEAN)),
    'active_sha256': hashlib.sha256(text.encode()).hexdigest(),
    'eta_proof_extracted_verbatim': True,
    'eta_block_sha256': hashlib.sha256(eta.encode()).hexdigest(),
    'determinant_norm_reuses': 'NoFourMUBs.Side.side_identities',
    'kernel_checked': False}, indent=2)+'\n')
print('Archived permanent-norm proof extracted; source and block hashes recorded.')
