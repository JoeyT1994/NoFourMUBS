import NoFourMUBs.Step2.CriticalZero.Equivalence
import NoFourMUBs.Reuse.Archive.CriticalStripPhysical
import OAI.Analysis.MutuallyUnbiased.Matrix.Equivalence
import OAI.Analysis.MutuallyUnbiased.Fourier.Characters

/-! The archived corner moves in the existing OAI normalization model. -/

noncomputable section
namespace NoFourMUBs.Step2.Critical

abbrev Perm := Equiv.Perm (Fin 6)

def candidate (H : OAI.MUB6.CMatrix) (p q : Perm) : OAI.MUB6.CMatrix :=
  OAI.MUB6.dephase (H.submatrix p q)

theorem candidate_normalized {H : OAI.MUB6.CMatrix} (hH : OAI.MUB6.IsHadamard H)
    (p q : Perm) : NormalizedCarrier (candidate H p q) :=
  ⟨OAI.MUB6.dephase_isHadamard (hH.permutations p q),
    OAI.MUB6.dephase_row_zero (hH.permutations p q),
    OAI.MUB6.dephase_column_zero (hH.permutations p q)⟩

theorem candidate_monomial_equivalent {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (p q : Perm) :
    OAI.MUB6.Equivalent H (candidate H p q) := by
  have he : OAI.MUB6.Equivalent H (H.submatrix p q) :=
    ⟨p, q, fun _ => 1, fun _ => 1, by simp, by simp, by simp⟩
  exact OAI.MUB6.equivalent_trans he (OAI.MUB6.dephase_equivalent (hH.permutations p q))

theorem normalized_fixed {H : OAI.MUB6.CMatrix}
    (hr : ∀ j, H 0 j = 1) (hc : ∀ i, H i 0 = 1) :
    candidate H (Equiv.refl _) (Equiv.refl _) = H := by
  ext i j
  simp [candidate, OAI.MUB6.dephase, OAI.MUB6.phaseTransform, hr, hc]

theorem row_candidate_entry {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (p : Perm) (i j : Fin 6) :
    candidate H p (Equiv.refl _) i j = H (p i) j * star (H (p 0) j) := by
  change (H (p i) 0)⁻¹ * H (p i) j * (H (p 0) 0 * (H (p 0) j)⁻¹) = _
  simp only [hH.2.2, inv_one, one_mul, Complex.star_def,
    OAI.MUB6.unit_inv_eq_conj (hH.1.1 (p 0) j)]

theorem allCritical_candidate {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (p q : Perm) : AllCriticalCarrier (candidate H p q) :=
  allCriticalCarrier_of_equivalent hH (candidate_normalized hH.1.1 p q)
    (candidate_monomial_equivalent hH.1.1 p q)

#print axioms candidate_normalized
#print axioms candidate_monomial_equivalent
#print axioms normalized_fixed
#print axioms row_candidate_entry
#print axioms allCritical_candidate
end NoFourMUBs.Step2.Critical
