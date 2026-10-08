import PhysicalGramRecovery
import Radius01Orientation
import Mathlib.Tactic.GCongr

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.GramChart20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006
noncomputable section

theorem seedGram_conjugate (E : Mat3) (i j : Fin 3) :
    seedGram E j i=conj (seedGram E i j) := by
  have h : (seedGram E)ᴴ=seedGram E := by
    simp [seedGram,Matrix.conjTranspose_sub,Matrix.conjTranspose_mul]
  simpa only [Matrix.conjTranspose_apply,Complex.star_def] using
    (congrFun (congrFun h j) i).symm

theorem seedGram_diagonal (E : Mat3) (hE : ∀ i j, Complex.normSq (E i j)=1)
    (i : Fin 3) : seedGram E i i=3 := by
  norm_num [seedGram,Matrix.sub_apply,Matrix.ofNat_apply,Matrix.mul_apply,
    Matrix.conjTranspose_apply,Complex.mul_conj,hE]

def seedDeterminant (E : Mat3) : ℝ :=
  27-3*gramP (seedGram E 1 0) (seedGram E 2 0) (seedGram E 2 1)+
    gramJ (seedGram E 1 0) (seedGram E 2 0) (seedGram E 2 1)

/-- The positive-J determinant formula holds for every unit-entry leading
block, independently of physicality or the four auxiliary anchor phases. -/
theorem seedGram_det_formula (E : Mat3) (hE : ∀ i j, Complex.normSq (E i j)=1) :
    (seedGram E).det=(seedDeterminant E:ℂ) := by
  rw [Matrix.det_fin_three]
  simp only [seedGram_diagonal E hE]
  rw [seedGram_conjugate E 1 0,seedGram_conjugate E 2 0,seedGram_conjugate E 2 1]
  exact hermitian_three_det_formula _ _ _

theorem seedGram_seed_side (b : Bool) (u : Fin 4 → ℝ) :
    seedGram (seedCorner b u) 1 0=sideSum (seedCorner b u) 1 ∧
      seedGram (seedCorner b u) 2 0=sideSum (seedCorner b u) 2 := by
  constructor <;>
    simp only [seedGram,Matrix.sub_apply,Matrix.mul_apply,Matrix.conjTranspose_apply] <;>
    simp [sideSum,seedCorner,
      Matrix.ofNat_apply,Fin.sum_univ_succ]

theorem seedGram_seed_row_pair (b : Bool) (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) :
    ‖seedGram (seedCorner b u) 1 2‖ ≤ 4*ρ := by
  have hh := pair_inner_difference_norm
    (phase (seedAngle b 0+u 0)) (phase (seedAngle b 1+u 1))
    (phase (seedAngle b 2+u 2)) (phase (seedAngle b 3+u 3))
    (phase (seedAngle b 0)) (phase (seedAngle b 1))
    (phase (seedAngle b 2)) (phase (seedAngle b 3))
    (phase_unit _) (phase_unit _) (phase_unit _) (phase_unit _)
  rw [seed_pair_inner_cancel,sub_zero] at hh
  have hbound : ‖1+phase (seedAngle b 0+u 0)*conj (phase (seedAngle b 2+u 2))+
      phase (seedAngle b 1+u 1)*conj (phase (seedAngle b 3+u 3))‖ ≤ 4*ρ := by
    linarith [phase_shift_norm (seedAngle b 0) (u 0),
      phase_shift_norm (seedAngle b 1) (u 1),phase_shift_norm (seedAngle b 2) (u 2),
      phase_shift_norm (seedAngle b 3) (u 3),hu 0,hu 1,hu 2,hu 3]
  have he : seedGram (seedCorner b u) 1 2 =
      -(1+phase (seedAngle b 0+u 0)*conj (phase (seedAngle b 2+u 2))+
        phase (seedAngle b 1+u 1)*conj (phase (seedAngle b 3+u 3))) := by
    simp only [seedGram,Matrix.sub_apply,Matrix.mul_apply,Matrix.conjTranspose_apply]
    simp [seedCorner,Complex.star_def,Matrix.ofNat_apply,Fin.sum_univ_succ]
    ring
  rw [he,norm_neg]
  exact hbound

theorem seedGram_seed_bounds (b : Bool) (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) :
    ‖seedGram (seedCorner b u) 1 0‖ ≤ 2*ρ ∧
    ‖seedGram (seedCorner b u) 2 0‖ ≤ 2*ρ ∧
    ‖seedGram (seedCorner b u) 2 1‖ ≤ 4*ρ := by
  obtain ⟨hs,ht⟩ := seedGram_seed_side b u
  have hb := (seedCorner_side_sum_bounds b u ρ hu).1
  refine ⟨?_,?_,?_⟩
  · rw [hs]; exact hb 1 (by decide)
  · rw [ht]; exact hb 2 (by decide)
  · rw [seedGram_conjugate _ 1 2,Complex.norm_conj]
    exact seedGram_seed_row_pair b u ρ hu

theorem gramP_bound_24 (s t r : ℂ) (ρ : ℝ) (hρ : 0 ≤ ρ)
    (hs : ‖s‖ ≤ 2*ρ) (ht : ‖t‖ ≤ 2*ρ) (hr : ‖r‖ ≤ 4*ρ) :
    gramP s t r ≤ 24*ρ^2 := by
  have hs2 : ‖s‖^2 ≤ (2*ρ)^2 := by gcongr
  have ht2 : ‖t‖^2 ≤ (2*ρ)^2 := by gcongr
  have hr2 : ‖r‖^2 ≤ (4*ρ)^2 := by gcongr
  simp only [gramP,Complex.normSq_eq_norm_sq]
  nlinarith

theorem gramJ_bound_32 (s t r : ℂ) (ρ : ℝ) (hρ : 0 ≤ ρ)
    (hs : ‖s‖ ≤ 2*ρ) (ht : ‖t‖ ≤ 2*ρ) (hr : ‖r‖ ≤ 4*ρ) :
    |gramJ s t r| ≤ 32*ρ^3 := by
  calc
    |gramJ s t r|=2*|(s*r*conj t).re| := by simp [gramJ,abs_mul]
    _ ≤ 2*‖s*r*conj t‖ := by gcongr; exact Complex.abs_re_le_norm _
    _ = 2*‖s‖*‖r‖*‖t‖ := by simp [norm_mul]; ring
    _ ≤ 2*(2*ρ)*(4*ρ)*(2*ρ) := by gcongr
    _ = 32*ρ^3 := by ring

theorem seedDeterminant_lower (b : Bool) (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) :
    27-72*ρ^2-32*ρ^3 ≤ seedDeterminant (seedCorner b u) := by
  have hρ : 0 ≤ ρ := le_trans (abs_nonneg (u 0)) (hu 0)
  obtain ⟨hs,ht,hr⟩ := seedGram_seed_bounds b u ρ hu
  have hp := gramP_bound_24 _ _ _ ρ hρ hs ht hr
  have hj := (abs_le.mp (gramJ_bound_32 _ _ _ ρ hρ hs ht hr)).1
  unfold seedDeterminant
  linarith

theorem seedDeterminant_gt_26 (b : Bool) (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρmax : ρ ≤ radiusEnvelope01) :
    26 < seedDeterminant (seedCorner b u) := by
  have hρ : 0 ≤ ρ := le_trans (abs_nonneg (u 0)) (hu 0)
  have hmax : ρ ≤ (1001:ℝ)/10000 := hρmax
  have h2 : ρ^2 ≤ ((1001:ℝ)/10000)^2 := by gcongr
  have h3 : ρ^3 ≤ ((1001:ℝ)/10000)^3 := by gcongr
  have hl := seedDeterminant_lower b u ρ hu
  nlinarith

theorem seedGram_seed_det_ne_zero (b : Bool) (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρmax : ρ ≤ radiusEnvelope01) :
    (seedGram (seedCorner b u)).det ≠ 0 := by
  rw [seedGram_det_formula _ (seedCorner_unit b u)]
  exact_mod_cast ne_of_gt (lt_trans (by norm_num : (0:ℝ)<26)
    (seedDeterminant_gt_26 b u ρ hu hρmax))

end
end Centiradian20261006.GramChart20261006

#print axioms Centiradian20261006.GramChart20261006.seedGram_conjugate
#print axioms Centiradian20261006.GramChart20261006.seedGram_diagonal
#print axioms Centiradian20261006.GramChart20261006.seedGram_det_formula
#print axioms Centiradian20261006.GramChart20261006.seedGram_seed_side
#print axioms Centiradian20261006.GramChart20261006.seedGram_seed_row_pair
#print axioms Centiradian20261006.GramChart20261006.seedGram_seed_bounds
#print axioms Centiradian20261006.GramChart20261006.gramP_bound_24
#print axioms Centiradian20261006.GramChart20261006.gramJ_bound_32
#print axioms Centiradian20261006.GramChart20261006.seedDeterminant_lower
#print axioms Centiradian20261006.GramChart20261006.seedDeterminant_gt_26
#print axioms Centiradian20261006.GramChart20261006.seedGram_seed_det_ne_zero
