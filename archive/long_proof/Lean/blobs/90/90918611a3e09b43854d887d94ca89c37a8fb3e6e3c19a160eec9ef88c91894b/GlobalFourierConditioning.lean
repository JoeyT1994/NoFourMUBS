import CompactCarrierCover
import ConditionedFourierChart

/-! Uniformly guarded Fourier charts after the complete physical normalization. -/
namespace Hadamard6Extensions.FourierConditioning
open Matrix Hadamard6Extensions.FourierSide
open Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
noncomputable section

def ConditionedPhaseSide (M : Matrix (Fin 3) (Fin 3) ℂ) (w : ℂ) : Prop :=
  ∃ h T : ℂ,
    (81/10 : ℝ) ≤ Complex.normSq h ∧
    (1/1000 : ℝ) ≤ Complex.normSq T ∧ h ≠ 0 ∧ T ≠ 0 ∧
    ∀ tau : ℂ, tau^3=T →
      (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
      Complex.normSq tau⁻¹ ≤ 10 ∧
      ∃ p : Equiv.Perm (Fin 3),
        radicalSide (sum3 (M 1)) (sum3 (M 2))
          (9*firstMode (M 1) w*secondMode (M 1) w)
          (9*firstMode (M 2) w*secondMode (M 2) w) h tau w =
            fun i j => M i (p j)

theorem conditionedPhaseSide_of_good (M : Matrix (Fin 3) (Fin 3) ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hfirst : ∀ j, M 0 j=1)
    (hunit : ∀ i j, Complex.normSq (M i j)=1)
    (hg : (54/5 : ℝ) ≤ Complex.normSq M.det) : ConditionedPhaseSide M w := by
  have hm : actualSide (M 1) (M 2) = M := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [actualSide,hfirst]
  have h := physical_good_side_conditioned_chart (M 1) (M 2) w hw
    (hunit 1) (hunit 2) (by rwa [hm])
  simpa only [ConditionedPhaseSide,hm] using h

/-- A single covered normalization gives both side charts uniform guards.
The southwest side is transposed so that its first row consists of ones. -/
theorem phaseHadamard_global_conditioned_sides {H : Mat6} (hH : PhaseHadamard H)
    (w : ℂ) (hw : w^2+w+1=0) :
    ∃ k : Fin 20,
      NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      ConditionedPhaseSide (northeast (normalizedSideCarrier H k)) w ∧
      ConditionedPhaseSide (southwest (normalizedSideCarrier H k))ᵀ w := by
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH
  refine ⟨k,hk,?_,?_⟩
  · apply conditionedPhaseSide_of_good _ w hw
    · intro j
      exact hk.2.1 (back j)
    · intro i j
      exact hk.1.1 (front i) (back j)
    · exact hk.2.2.2.1
  · apply conditionedPhaseSide_of_good _ w hw
    · intro j
      exact hk.2.2.1 (back j)
    · intro i j
      exact hk.1.1 (back j) (front i)
    · simpa only [Matrix.det_transpose] using hk.2.2.2.2

#print axioms conditionedPhaseSide_of_good
#print axioms phaseHadamard_global_conditioned_sides
end
end Hadamard6Extensions.FourierConditioning
