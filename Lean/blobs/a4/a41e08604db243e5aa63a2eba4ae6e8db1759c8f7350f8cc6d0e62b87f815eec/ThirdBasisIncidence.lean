import RayIncidence
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-! Six common rays form a third basis exactly when they are pairwise orthogonal.
The normalization bridge is explicit and no fourth-basis conclusion is asserted. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open Matrix
open scoped BigOperators
noncomputable section

def RawThirdBasis (H B : BasisMatrix) : Prop :=
  PhaseHadamard B ∧ ∀ j, IsRawCommonRay H (fun r => B r j)

def BasisIncidence (H : BasisMatrix) (s : Fin 6 → SignChart)
    (t : Fin 6 → Parameters) : Prop :=
  (∀ j, ChartIncidence H (s j) (t j)) ∧
    ∀ i j, i ≠ j → rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j)) = 0

def chartBasis (s : Fin 6 → SignChart) (t : Fin 6 → Parameters) : BasisMatrix :=
  fun r j => chartRay (s j) (t j) r

theorem column_overlap_eq_gram (B : Matrix (Fin 6) (Fin 6) ℂ) (i j : Fin 6) :
    rawOverlap (fun r => B r i) (fun r => B r j) =
      (Bᴴ * (B : Matrix (Fin 6) (Fin 6) ℂ)) i j := rfl

/-- Orthogonality and phase entries suffice; the diagonal Gram equations
follow automatically from the six unit coordinate norms. -/
theorem raw_third_basis_iff_columns (H B : BasisMatrix) :
    RawThirdBasis H B ↔
      (∀ j, IsRawCommonRay H (fun r => B r j)) ∧
      ∀ i j, i ≠ j → rawOverlap (fun r => B r i) (fun r => B r j) = 0 := by
  constructor
  · rintro ⟨hB, hcommon⟩
    refine ⟨hcommon, ?_⟩
    intro i j hij
    rw [column_overlap_eq_gram, hB.2]
    simp [Matrix.smul_apply, Matrix.one_apply, hij]
  · rintro ⟨hcommon, horth⟩
    refine ⟨⟨fun r j => (hcommon j).1.2 r, ?_⟩, hcommon⟩
    ext i j
    rw [← column_overlap_eq_gram]
    by_cases hij : i = j
    · subst j
      rw [rawOverlap_self]
      norm_num [fun r => (hcommon i).1.2 r, Matrix.smul_apply, Matrix.one_apply]
    · rw [horth i j hij]
      simp [Matrix.smul_apply, Matrix.one_apply, hij]

theorem third_basis_chart_iff {H : BasisMatrix} (hH : PhaseHadamard H) (B : BasisMatrix) :
    RawThirdBasis H B ↔ ∃ s t, BasisIncidence H s t ∧ B = chartBasis s t := by
  rw [raw_third_basis_iff_columns]
  constructor
  · rintro ⟨hcommon, horth⟩
    choose s t ht he using fun j => (common_ray_chart_iff hH _).mp (hcommon j)
    refine ⟨s, t, ⟨ht, ?_⟩, ?_⟩
    · intro i j hij
      rw [← he i, ← he j]
      exact horth i j hij
    · funext r j
      exact congrFun (he j) r
  · rintro ⟨s, t, ht, rfl⟩
    exact ⟨fun j => chart_incidence_sound hH (ht.1 j), ht.2⟩

theorem family_third_basis_chart_iff {P : Type*} (H : P → BasisMatrix)
    (physical : ∀ p, PhaseHadamard (H p)) (p : P) (B : BasisMatrix) :
    RawThirdBasis (H p) B ↔ ∃ s t, BasisIncidence (H p) s t ∧ B = chartBasis s t :=
  third_basis_chart_iff (physical p) B

def normalizeRaw (B : BasisMatrix) : BasisMatrix :=
  fun r j => B r j / ((Real.sqrt 6 : ℝ) : ℂ)

theorem sqrt_six_normSq : Complex.normSq (((Real.sqrt 6 : ℝ) : ℂ)) = 6 := by
  simp only [Complex.normSq_ofReal]
  nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 6 by norm_num)]

theorem overlap_normalizeRaw (A B : BasisMatrix) (i j : Fin 6) :
    overlap (normalizeRaw A) (normalizeRaw B) i j = overlap A B i j / 6 := by
  have hden : star (((Real.sqrt 6 : ℝ) : ℂ)) * (((Real.sqrt 6 : ℝ) : ℂ)) = 6 := by
    change (starRingEnd ℂ) (((Real.sqrt 6 : ℝ) : ℂ)) * (((Real.sqrt 6 : ℝ) : ℂ)) = 6
    rw [← Complex.normSq_eq_conj_mul_self, sqrt_six_normSq]
    norm_num
  simp only [overlap, normalizeRaw]
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro r _
  calc
    _ = (star (A r i) * B r j) /
        (star (((Real.sqrt 6 : ℝ) : ℂ)) * (((Real.sqrt 6 : ℝ) : ℂ))) := by
      simp [star_div, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]
    _ = _ := by rw [hden]

theorem normalizeRaw_isOrthonormal {B : BasisMatrix} (hB : PhaseHadamard B) :
    IsOrthonormalBasis (normalizeRaw B) := by
  intro i j
  rw [overlap_normalizeRaw]
  change rawOverlap (fun r => B r i) (fun r => B r j) / 6 = _
  rw [column_overlap_eq_gram, hB.2]
  by_cases h : i = j <;> simp [Matrix.smul_apply, Matrix.one_apply, h]

theorem normalizeRaw_isFlat {B : BasisMatrix} (hB : PhaseHadamard B) (j : Fin 6) :
    IsNormalizedFlatRay (fun r => normalizeRaw B r j) := by
  intro r
  dsimp [normalizeRaw]
  rw [Complex.normSq_div, hB.1 r j, sqrt_six_normSq]

/-- Soundness for the actual normalized physical definitions: the carrier
and the classified third basis normalize to unbiased orthonormal flat bases. -/
theorem third_basis_normalized_sound {H B : BasisMatrix} (hH : PhaseHadamard H)
    (hB : RawThirdBasis H B) :
    IsOrthonormalBasis (normalizeRaw H) ∧ IsOrthonormalBasis (normalizeRaw B) ∧
    (∀ j, IsNormalizedFlatRay (fun r => normalizeRaw H r j)) ∧
    (∀ j, IsNormalizedFlatRay (fun r => normalizeRaw B r j)) ∧
    IsUnbiased (normalizeRaw H) (normalizeRaw B) := by
  refine ⟨normalizeRaw_isOrthonormal hH, normalizeRaw_isOrthonormal hB.1,
    normalizeRaw_isFlat hH, normalizeRaw_isFlat hB.1, ?_⟩
  intro i j
  rw [overlap_normalizeRaw, Complex.normSq_div]
  change Complex.normSq (carrierAmplitude H (fun r => B r j) i) /
    Complex.normSq (6 : ℂ) = 1 / 6
  rw [(hB.2 j).2 i]
  norm_num

/-- Completeness from arbitrary normalized physical flat bases, using the
existing dephasing map. Independent column phases remain harmless. -/
theorem normalized_third_basis_complete {A B : BasisMatrix}
    (hB : IsOrthonormalBasis B)
    (hAf : ∀ j, IsNormalizedFlatRay (fun r => A r j))
    (hBf : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hAB : IsUnbiased A B) :
    RawThirdBasis (rawCarrierOfFlatBasis A) (rawCarrierOfFlatBasis B) := by
  refine ⟨rawCarrierOfFlatBasis_isPhaseHadamard hB hBf, ?_⟩
  intro j
  exact unbiased_basis_gives_rawCommonRay hAf hBf hAB j

#print axioms raw_third_basis_iff_columns
#print axioms third_basis_chart_iff
#print axioms family_third_basis_chart_iff
#print axioms overlap_normalizeRaw
#print axioms normalizeRaw_isOrthonormal
#print axioms third_basis_normalized_sound
#print axioms normalized_third_basis_complete
end
end Mub6.Classification.Rays
