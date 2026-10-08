import QuartetClassificationBridge
import LocalCertificate

/-! A local numerical certificate is applied to actual quartet bases. Every
certificate computation and carrier inclusion remains an explicit premise.
No certificate is asserted for the regular benchmark or the global atlas. -/
namespace ClassificationCover
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel Hadamard6

theorem unbiased_identity_gives_flat {B : BasisMatrix}
    (h : IsUnbiased identityBasis B) :
    ∀ j, IsNormalizedFlatRay (fun r => B r j) := by
  intro j r
  have hij := h r j
  change Complex.normSq (overlap identityBasis B r j) = (1 : ℝ) / 6 at hij
  rw [overlap_identity_left] at hij
  exact hij

theorem two_remaining_quartet_indices : ∀ a b : Fin 4, a ≠ b →
    ∃ c d : Fin 4, a ≠ c ∧ a ≠ d ∧ b ≠ c ∧ b ≠ d ∧ c ≠ d := by
  decide +kernel

theorem rawCarrier_of_normalized_first_row {H : BasisMatrix}
    (hrow : ∀ j, H 0 j = 1) :
    rawCarrierOfFlatBasis (phaseScale (Real.sqrt 6)⁻¹ H) = Matrix.of H := by
  have hs : (((Real.sqrt 6)⁻¹ : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (by positivity : (Real.sqrt 6)⁻¹ ≠ 0)
  ext i j
  change (((Real.sqrt 6)⁻¹ : ℝ) : ℂ) * H i j /
    ((((Real.sqrt 6)⁻¹ : ℝ) : ℂ) * H 0 j) = H i j
  rw [hrow, mul_one]
  field_simp

/-- Successful full interval/graph checking excludes an actual standard-pair
quartet for this first-row-dephased carrier. The other two bases are selected
from the four labels and passed to the existing physical graph theorem. -/
theorem checkLocal_excludes_standard_pair
    {n : ℕ} {E : CarrierRegion} {cert : LocalCertificate n}
    (hcheck : checkLocal E cert = true) {H : BasisMatrix}
    (hrow : ∀ j, H 0 j = 1) (hE : CarrierBox E H) :
    ¬ ExtendsStandardPair (phaseScale (Real.sqrt 6)⁻¹ H) := by
  rintro ⟨B, hB, a, b, hab, ha, hb⟩
  rcases two_remaining_quartet_indices a b hab with ⟨c, d, hac, had, hbc, hbd, hcd⟩
  have hbflat := unbiased_identity_gives_flat (ha ▸ hB.2 a b hab)
  have hcflat := unbiased_identity_gives_flat (ha ▸ hB.2 a c hac)
  have hdflat := unbiased_identity_gives_flat (ha ▸ hB.2 a d had)
  have hcarrier : CarrierBox E (rawCarrierOfFlatBasis (B b)) := by
    rw [hb, rawCarrier_of_normalized_first_row hrow]
    exact hE
  exact checkLocal_excludes_normalized_flat_bases hcheck
    (hB.1 b) (hB.1 c) (hB.1 d) hbflat hcflat hdflat
    (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd) hcarrier

theorem public_dephased_first_row {K : Mat6} (hK : IsDephased K) :
    ∀ j, toNumerical K 0 j = 1 := by
  intro j
  exact hK.1 (indexEquiv.symm j)

/-- Concrete local certificate success transports through the current public
equivalence and the B02 monomial quartet transport. This implication needs no
unproved nonextension result, root completeness assumption, or guard shortcut. -/
theorem checkLocal_excludes_classified_quartet_edge
    {n : ℕ} {E : CarrierRegion} {cert : LocalCertificate n}
    (hcheck : checkLocal E cert = true)
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) {K : Mat6}
    (heq : Equivalent
      (toPublic (phaseScale (Real.sqrt 6) (overlap (B a) (B b)))) K)
    (hdephased : IsDephased K) (hE : CarrierBox E (toNumerical K)) : False := by
  have hocc : OccursAsQuartetEdge (overlap (B a) (B b)) := ⟨B, hB, a, b, hab, rfl⟩
  exact checkLocal_excludes_standard_pair hcheck (public_dephased_first_row hdephased) hE
    ((occursAsQuartetEdge_iff_extendsStandardPair _).1
      (normalized_public_representative_occurs hocc heq))

#print axioms unbiased_identity_gives_flat
#print axioms two_remaining_quartet_indices
#print axioms rawCarrier_of_normalized_first_row
#print axioms checkLocal_excludes_standard_pair
#print axioms public_dephased_first_row
#print axioms checkLocal_excludes_classified_quartet_edge
end ClassificationCover
