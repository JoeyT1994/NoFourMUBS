import KarlssonLedgerEnclosures
import LocalCertificate
import CircleTaoNormalizedWitness
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Numerical.GraphKernel
noncomputable section

/-- Literal exported carriers fix the first row, matching the numerical
certificate's column dephasing convention. This guard is checked separately. -/
def StandardFirstRow (E : CarrierRegion) : Prop :=
  ∀ j, E 0 j = ⟨1,1,0,0⟩

theorem first_row_of_carrier {E : CarrierRegion} (hrow : StandardFirstRow E)
    {H : BasisMatrix} (hbox : CarrierBox E H) : ∀ j, H 0 j=1 := by
  intro j
  have h := hbox 0 j
  rw [hrow j] at h
  rcases h with ⟨h₁,h₂,h₃,h₄⟩
  apply Complex.ext <;> norm_num at h₁ h₂ h₃ h₄ ⊢ <;> linarith

theorem normalized_raw_carrier {H : Mat6}
    (hrow : ∀ j, ClassificationCover.toNumerical H 0 j=1) :
    rawCarrierOfFlatBasis (normalized H)=ClassificationCover.toNumerical H := by
  have he : normalized H = CircleFullPrototype.NormalizedWitness.normalized
      (ClassificationCover.toNumerical H) := by
    funext i j
    simp [normalized,phaseScale,CircleFullPrototype.NormalizedWitness.normalized,
      div_eq_mul_inv,mul_comm]
  rw [he]
  exact CircleFullPrototype.NormalizedWitness.raw_carrier_normalized hrow

theorem flat_of_identity {B : BasisMatrix} (h : IsUnbiased identityBasis B) :
    ∀ j, IsNormalizedFlatRay (fun r => B r j) := by
  intro j r
  have h' := h r j
  rw [overlap_identity_left] at h'
  exact h'

theorem remaining_indices : ∀ a b : Fin 4, a≠b →
    ∃ c d : Fin 4, a≠c ∧ a≠d ∧ b≠c ∧ b≠d ∧ c≠d := by decide +kernel

/-- A successful existing local checker, together with the exported first-row
binding, is a complete terminal for this exact carrier. No search is done here. -/
theorem local_certificate_excludes {n : ℕ} {E : CarrierRegion}
    (cert : LocalCertificate n) (hcheck : checkLocal E cert=true)
    (hrow : StandardFirstRow E) : CarrierExcluded E := by
  intro H _hH hbox hocc
  obtain ⟨B,hB,a,b,hab,ha,hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp hocc
  obtain ⟨c,d,hac,had,hbc,hbd,hcd⟩ := remaining_indices a b hab
  have hE : CarrierBox E (rawCarrierOfFlatBasis (B b)) := by
    rw [hb,normalized_raw_carrier (first_row_of_carrier hrow hbox)]
    exact hbox
  exact checkLocal_excludes_normalized_flat_bases hcheck
    (hB.1 b) (hB.1 c) (hB.1 d)
    (flat_of_identity (ha ▸ hB.2 a b hab))
    (flat_of_identity (ha ▸ hB.2 a c hac))
    (flat_of_identity (ha ▸ hB.2 a d had))
    (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd) hE

theorem checked_leaf_closes {n : ℕ} {j : Job} {E : CarrierRegion}
    (hencl : Encloses j E) (cert : LocalCertificate n)
    (hcheck : checkLocal E cert=true) (hrow : StandardFirstRow E) : ¬ Live j :=
  enclosure_certificate_closes hencl (local_certificate_excludes cert hcheck hrow)

#print axioms first_row_of_carrier
#print axioms normalized_raw_carrier
#print axioms local_certificate_excludes
#print axioms checked_leaf_closes
end
end Mub6.Classification.KarlssonLedger
