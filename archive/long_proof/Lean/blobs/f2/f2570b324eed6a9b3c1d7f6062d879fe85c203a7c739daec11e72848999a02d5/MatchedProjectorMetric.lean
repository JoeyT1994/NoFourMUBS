import SixColumnMetric
import MatchedFrobenius

set_option autoImplicit false
set_option maxHeartbeats 1400000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006 Seed0024ProjectorMetric20261007
noncomputable section

def normalizedColumn (H : Mat6) (j : Fin 6) : Fin 6 → ℂ :=
  fun i => H i j/(Real.sqrt 6 : ℂ)

theorem normalizedColumn_mass (H : Mat6) (hunit : ∀ i j,Complex.normSq (H i j)=1)
    (j : Fin 6) : ∑ i : Fin 6,Complex.normSq (normalizedColumn H j i)=1 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ)=6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.mul_self_sqrt (by norm_num : (0:ℝ)≤6)
  simp only [normalizedColumn,Complex.normSq_div,hunit,hs]
  norm_num

theorem column_error_le_frobenius (H K : Mat6) (j : Fin 6) :
    (∑ i : Fin 6,Complex.normSq (normalizedColumn H j i-normalizedColumn K j i)) ≤
      normalizedSquaredFrobenius H K := by
  unfold normalizedColumn normalizedSquaredFrobenius
  simp only [← sub_div]
  apply Finset.sum_le_sum
  intro i _
  exact Finset.single_le_sum (fun k _ => Complex.normSq_nonneg _)
    (Finset.mem_univ j)

theorem physical_matched_projector_close {H K : Mat6} (hH : Physical H)
    (hk : ∀ i j,Complex.normSq (K i j)=1)
    (hnear : normalizedSquaredFrobenius H K<(1/75:ℝ)^2) (j : Fin 6) :
    ‖columnProjector (normalizedColumn H j)-columnProjector (normalizedColumn K j)‖ <
      (1:ℝ)/75 := by
  have hp := columnProjector_lipschitz_sq (normalizedColumn H j) (normalizedColumn K j)
    (normalizedColumn_mass H hH.1 j) (normalizedColumn_mass K hk j)
  have hc := column_error_le_frobenius H K j
  nlinarith [norm_nonneg (columnProjector (normalizedColumn H j)-
    columnProjector (normalizedColumn K j))]

/-- The actual projector metric used by the Fourier tube, with an explicitly
provided reference column. Unit masses and the literal overlap are checked
by the construction modules, not postulated as an orbit-distance estimate. -/
theorem physical_matched_reference_close {H K : Mat6} (hH : Physical H)
    (hk : ∀ i j,Complex.normSq (K i j)=1)
    (hnear : normalizedSquaredFrobenius H K<(1/75:ℝ)^2)
    (j : Fin 6) (v : Fin 6 → ℂ) (hv : ∑ i : Fin 6,Complex.normSq (v i)=1)
    (hoverlap : 1-(1/60:ℝ)^2<Complex.normSq
      (∑ i : Fin 6,conj (normalizedColumn K j i)*v i)) :
    ‖columnProjector (normalizedColumn H j)-columnProjector v‖ < (3:ℝ)/100 := by
  have hhk := physical_matched_projector_close hH hk hnear j
  have hid := columnProjector_sub_norm_sq (normalizedColumn K j) v
    (normalizedColumn_mass K hk j) hv
  have hkv : ‖columnProjector (normalizedColumn K j)-columnProjector v‖ < (1:ℝ)/60 := by
    nlinarith [norm_nonneg (columnProjector (normalizedColumn K j)-columnProjector v)]
  have ht := columnProjector_triangle (normalizedColumn H j) (normalizedColumn K j) v
  linarith

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.normalizedColumn_mass
#print axioms Seed0024Mathematical20261007.column_error_le_frobenius
#print axioms Seed0024Mathematical20261007.physical_matched_projector_close
#print axioms Seed0024Mathematical20261007.physical_matched_reference_close
