"""Transcribe the already-pinned rawDet source; Lean verifies the identity.
This generator's execution is not mathematical proof credit.
"""
from pathlib import Path
import re

P=Path(__file__).resolve().parent
C=P.parent.parent/'centiradian-integration-2026-10-06'
src=(C/'lean-completion-20261006/public/lean/SignedDeterminantFoundation.lean').read_text()
body=src.split('def rawDet (a b c d : ℂ) : ℂ :=',1)[1].split('theorem conj_eq_inv',1)[0]
terms=[]
for line in body.splitlines():
    line=line.strip()
    if not line or line=='0': continue
    sign=line[0]
    assert sign in '+-'
    factors=[]
    for piece in line[1:].strip().split('*'):
        match=re.fullmatch(r'(?:\(conj ([abcd])\)|([abcd]))(?:\^(\d+))?',piece)
        assert match,piece
        c,v,power=match.groups()
        factors += [(ord(c or v)-ord('a'), bool(c))]*int(power or 1)
    terms.append((sign=='-',factors))
assert len(terms)==48
assert [sum(i==k for _,fs in terms for i,c in fs) for k in range(4)]==[48]*4
tab=',\n  '.join('('+str(neg).lower()+', ['+', '.join(f'({i}, {str(c).lower()})' for i,c in fs)+'])' for neg,fs in terms)
lean='''import WordLipschitz

set_option autoImplicit false
set_option maxHeartbeats 1600000
set_option maxRecDepth 20000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
open Centiradian20261006.SignedDeterminant
noncomputable section

def rawWords : List (Bool × List (Fin 4 × Bool)) := [
  '''+tab+''']

theorem rawWords_binding (z : Fin 4 → ℂ) :
    wordPolynomial z rawWords = rawDet (z 0) (z 1) (z 2) (z 3) := by
  simp only [wordPolynomial, rawWords, signedWord, word, letter,
    List.map_cons, List.map_nil, List.sum_cons, List.sum_nil,
    List.prod_cons, List.prod_nil, Bool.false_eq_true, ite_false, ite_true,
    mul_one, rawDet]
  ring

theorem rawWords_cost (e : Fin 4 → ℝ) :
    polynomialCost e rawWords = 48*(e 0+e 1+e 2+e 3) := by
  simp only [polynomialCost, rawWords, wordCost, List.map_cons,
    List.map_nil, List.sum_cons, List.sum_nil]
  ring

theorem rawDet_lipschitz (z v : Fin 4 → ℂ)
    (hz : ∀ i, ‖z i‖=1) (hv : ∀ i, ‖v i‖=1) :
    ‖rawDet (z 0) (z 1) (z 2) (z 3)-rawDet (v 0) (v 1) (v 2) (v 3)‖ ≤
      48*(‖z 0-v 0‖+‖z 1-v 1‖+‖z 2-v 2‖+‖z 3-v 3‖) := by
  have h := wordPolynomial_difference z v hz hv rawWords
  rw [rawWords_binding, rawWords_binding, rawWords_cost] at h
  exact h

theorem q_im_lipschitz (z v : Fin 4 → ℂ)
    (hz : ∀ i, ‖z i‖=1) (hv : ∀ i, ‖v i‖=1) :
    |(dephasedQ (z 0) (z 1) (z 2) (z 3)).im-
      (dephasedQ (v 0) (v 1) (v 2) (v 3)).im| ≤
      24*(‖z 0-v 0‖+‖z 1-v 1‖+‖z 2-v 2‖+‖z 3-v 3‖) := by
  have hzq : ∀ i, Complex.normSq (z i)=1 := by
    intro i; rw [← norm_square_eq_normSq, hz i]; norm_num
  have hvq : ∀ i, Complex.normSq (v i)=1 := by
    intro i; rw [← norm_square_eq_normSq, hv i]; norm_num
  have h := rawDet_lipschitz z v hz hv
  have hi := Complex.abs_im_le_norm
    (rawDet (z 0) (z 1) (z 2) (z 3)-rawDet (v 0) (v 1) (v 2) (v 3))
  have he : (rawDet (z 0) (z 1) (z 2) (z 3)-
      rawDet (v 0) (v 1) (v 2) (v 3)).im =
      2*((dephasedQ (z 0) (z 1) (z 2) (z 3)).im-
      (dephasedQ (v 0) (v 1) (v 2) (v 3)).im) := by
    rw [rawDet_eq_q_difference _ _ _ _ (hzq 0) (hzq 1) (hzq 2) (hzq 3),
      rawDet_eq_q_difference _ _ _ _ (hvq 0) (hvq 1) (hvq 2) (hvq 3)]
    simp only [Complex.sub_im, Complex.conj_im]
    ring
  rw [he, abs_mul, abs_of_pos (by norm_num : (0:ℝ)<2)] at hi
  linarith

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.rawWords_binding
#print axioms Seed0024Mathematical20261007.rawWords_cost
#print axioms Seed0024Mathematical20261007.rawDet_lipschitz
#print axioms Seed0024Mathematical20261007.q_im_lipschitz
'''
(P/'QLipschitz.lean').write_text(lean)
print('Generated 48 words; each coordinate has exact weight 48.')
