import NoFourMUBs.Step2.CriticalZero.StripZeroEndpoint
import NoFourMUBs.Step2.CriticalZero.StripCountEndpoint

/-! Assemble the existing critical branches and counting obstruction. The
regular nonzero-J quartic implication remains explicit until the original
numerator identity and reduction have been checked. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003 CriticalRowSum20261003

/-- The sole remaining input to this critical-classification assembly.
This is a proposition to prove, not an axiom or a verified certificate. -/
def RegularCriticalQuartic : Prop :=
  ∀ (H : OAI.MUB6.CMatrix), AllCriticalCarrier H →
    sideJ (stripLeftBlock H) ≠ 0 →
    (∀ i, CriticalLightSheet20261003.blockDenominator (stripLeftBlock H) i ≠ 0) →
    (∀ i, CriticalLightSheet20261003.blockDenominator (stripRightBlock H) i ≠ 0) →
    ∃ k : ℝ, k ≠ 0 ∧
      sideP (stripLeftBlock H) = CriticalRationalParam20261003.p k ∧
      sideJ (stripLeftBlock H) = CriticalRationalParam20261003.j k ∧
      sideW (stripLeftBlock H) = CriticalRationalParam20261003.w k ∧
      CriticalNonzeroPolynomial20261003.quartic k
        (Complex.normSq (sideS (stripLeftBlock H)) *
          Complex.normSq (sideT (stripLeftBlock H)) *
          Complex.normSq (sideR (stripLeftBlock H))) = 0

theorem stripCorner_rev_zero (H : OAI.MUB6.CMatrix) :
    stripCorner H (Fin.rev 0) = stripRightBlock H := by
  ext i j
  fin_cases j <;> rfl

theorem leading_nonzero_special_of_regular_quartic (hregular : RegularCriticalQuartic)
    {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (hj : sideJ (stripLeftBlock H) ≠ 0) :
    ∃ k : ℝ, 0 < k ∧ NonzeroScalar.kappa k = 0 ∧
      sideP (stripLeftBlock H) = exceptionalP k := by
  classical
  by_cases hL : ∀ i, CriticalLightSheet20261003.blockDenominator (stripLeftBlock H) i ≠ 0
  · by_cases hR : ∀ i, CriticalLightSheet20261003.blockDenominator (stripRightBlock H) i ≠ 0
    · obtain ⟨k,hk,hp,hjk,hw,hQ⟩ := hregular H hH hj hL hR
      have he := strip_nonzero_quartic_special hH 0 k hk
        (by simpa only [stripCorner_zero] using hp)
        (by simpa only [stripCorner_zero] using hjk)
        (by simpa only [stripCorner_zero] using hw)
        (by simpa only [stripCorner_zero] using hQ)
      exact ⟨|k|,abs_pos.mpr hk,he.1,by simpa only [stripCorner_zero] using he.2⟩
    · push_neg at hR
      obtain ⟨i,hi⟩ := hR
      obtain ⟨hS,hT,hR⟩ := strip_complementary_moments hH.1 0
      have hp : sideP (stripCorner H (Fin.rev 0)) = sideP (stripLeftBlock H) := by
        simp only [sideP,hS,hT,hR,momentP_neg,stripCorner_zero]
      have hjr : sideJ (stripCorner H (Fin.rev 0)) = -sideJ (stripLeftBlock H) := by
        simp only [sideJ,hS,hT,hR,momentJ_neg,stripCorner_zero]
      obtain ⟨k,hk,hc,hpk⟩ := strip_nonzero_pole_special hH (Fin.rev 0)
        (by rw [hjr]; exact neg_ne_zero.mpr hj) i
        (by simpa only [stripCorner_rev_zero] using hi)
      exact ⟨k,hk,hc,hp.symm.trans hpk⟩
  · push_neg at hL
    obtain ⟨i,hi⟩ := hL
    simpa only [stripCorner_zero] using strip_nonzero_pole_special hH 0
      (by simpa only [stripCorner_zero] using hj) i
      (by simpa only [stripCorner_zero] using hi)

/-- Move the chosen corner to the leading block using the existing candidate
and invariant transport. No new denominator transformation is required. -/
theorem strip_nonzero_special_of_regular_quartic (hregular : RegularCriticalQuartic)
    {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H) (c : Fin 20)
    (hj : sideJ (stripCorner H c) ≠ 0) :
    ∃ k : ℝ, 0 < k ∧ NonzeroScalar.kappa k = 0 ∧
      sideP (stripCorner H c) = exceptionalP k := by
  obtain ⟨q,hq⟩ := Equiv.Perm.exists_extending_pair front (triples c)
    front_injective (strip_triples_injective c)
  have he : H.submatrix front (q ∘ front) = stripCorner H c := by
    ext i j
    change H (front i) (q (front j)) = H (front i) (triples c j)
    rw [hq]
  have hi := column_candidate_invariants hH.1 q front
  rw [he] at hi
  obtain ⟨k,hk,hc,hp⟩ := leading_nonzero_special_of_regular_quartic hregular
    (allCritical_candidate hH (Equiv.refl _) q)
    (by simpa only [stripLeftBlock,hi.2.1] using hj)
  exact ⟨k,hk,hc,hi.1.symm.trans hp⟩

theorem allCriticalCarrier_standard_of_regular_quartic (hregular : RegularCriticalQuartic)
    {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H) :
    Hadamard6.Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 := by
  classical
  by_contra hf
  apply strip_classified_values_impossible hH.1
  intro c
  by_cases hj : sideJ (stripCorner H c) = 0
  · rcases strip_zero_values_or_standard hH c hj with h0 | h5 | hFourier
    · exact Or.inl h0
    · exact Or.inr (Or.inl h5)
    · exact (hf hFourier).elim
  · exact Or.inr (Or.inr (strip_nonzero_special_of_regular_quartic hregular hH c hj))

/-- This checks the complete assembly, with the remaining regular-case
algebra exposed in the theorem type. It does not discharge that premise. -/
theorem criticalClassification_of_regular_quartic (hregular : RegularCriticalQuartic) :
    CriticalClassification := by
  intro H hH
  let f : Frame := (Equiv.refl _,Equiv.refl _)
  have he := equivalent_framed H f
  have hc := allCritical_toOAI (allCritical_of_equivalent hH he) (framed_dephased H f)
  have hf := allCriticalCarrier_standard_of_regular_quartic hregular hc
  exact Hadamard6.equivalent_trans he
    (by simpa only [FourierBridge.fromOAI_toOAI] using hf)

end NoFourMUBs.Step2.Critical
