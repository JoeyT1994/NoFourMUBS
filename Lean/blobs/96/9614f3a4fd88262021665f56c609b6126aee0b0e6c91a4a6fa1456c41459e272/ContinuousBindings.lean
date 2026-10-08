import Worker12.PureFamilies

namespace Worker12

set_option maxHeartbeats 4000000
open Hadamard6

theorem pure_alpha_cycle_inverse {ω p q : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    reindexMatrix (liftBottomPermutation cycle3.symm) (Equiv.refl _)
      (fourierNormalForm ω p q ω (ω ^ 2) (fourierForcedD ω p q ω (ω ^ 2))) =
      fourierFamily ω p q := by
  have h3 : ω ^ 3 = 1 := cubic_of_quadratic hω
  have h4 : ω ^ 4 = ω := by calc ω ^ 4 = ω * ω ^ 3 := by ring
                                             _ = ω := by rw [h3, mul_one]
  have h5 : ω ^ 5 = ω ^ 2 := by calc ω ^ 5 = ω ^ 2 * ω ^ 3 := by ring
                                                 _ = ω ^ 2 := by rw [h3, mul_one]
  have h6 : ω ^ 6 = 1 := by rw [show ω ^ 6 = (ω ^ 3) ^ 2 by ring, h3]; norm_num
  have h2 : ω ^ 2 = -ω - 1 := by linear_combination hω
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [reindexMatrix, liftBottomPermutation, cycle3, fourierNormalForm,
      fourierFamily, Hadamard6.fourier3, rowGauge, columnGauge, fourierParameters,
      fourierForcedD, dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂,
      zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, h4] <;>
    ring_nf <;> simp [h6, h5, h4, h3, h2] <;> ring

theorem pure_A_cycle_inverse {ω r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    reindexMatrix (Equiv.refl _) (liftRightPermutation cycle3.symm)
      (fourierNormalForm ω ω (ω ^ 2) r s (fourierForcedD ω ω (ω ^ 2) r s)) =
      transposeFourierFamily ω r s := by
  have h3 : ω ^ 3 = 1 := cubic_of_quadratic hω
  have h4 : ω ^ 4 = ω := by calc ω ^ 4 = ω * ω ^ 3 := by ring
                                             _ = ω := by rw [h3, mul_one]
  have h5 : ω ^ 5 = ω ^ 2 := by calc ω ^ 5 = ω ^ 2 * ω ^ 3 := by ring
                                                 _ = ω ^ 2 := by rw [h3, mul_one]
  have h6 : ω ^ 6 = 1 := by rw [show ω ^ 6 = (ω ^ 3) ^ 2 by ring, h3]; norm_num
  have h2 : ω ^ 2 = -ω - 1 := by linear_combination hω
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [reindexMatrix, liftRightPermutation, cycle3, fourierNormalForm,
      transposeFourierFamily, Hadamard6.fourier3, rowGauge, columnGauge, fourierParameters,
      fourierForcedD, dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂,
      zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, h4] <;>
    ring_nf <;> simp [h6, h5, h4, h3, h2] <;> ring

theorem pure_alpha_equivalent {ω p q r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hchar : CharacterPair ω r s) :
    Equivalent (fourierNormalForm ω p q r s (fourierForcedD ω p q r s))
      (fourierFamily ω p q) := by
  rcases hchar with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · rw [pure_alpha_identity hω]
    exact equivalent_refl _
  · rw [← pure_alpha_cycle hω]
    exact equivalent_reindexMatrix _ _ _
  · rw [← pure_alpha_cycle_inverse hω]
    exact equivalent_reindexMatrix _ _ _

theorem pure_A_equivalent {ω p q r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hchar : CharacterPair ω p q) :
    Equivalent (fourierNormalForm ω p q r s (fourierForcedD ω p q r s))
      (transposeFourierFamily ω r s) := by
  rcases hchar with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · rw [pure_A_identity hω]
    exact equivalent_refl _
  · rw [← pure_A_cycle hω]
    exact equivalent_reindexMatrix _ _ _
  · rw [← pure_A_cycle_inverse hω]
    exact equivalent_reindexMatrix _ _ _

theorem equivalent_unsplit {H K : Hadamard6.Mat6} (h : Equivalent H K) :
    Mub6.MonomialEquivalent (unsplitMatrix H) (unsplitMatrix K) := by
  rcases h with ⟨σ, τ, r, c, hr, hc, heq⟩
  refine ⟨(splitIndex.symm.trans σ).trans splitIndex,
    (splitIndex.symm.trans τ).trans splitIndex,
    (fun i ↦ r (splitIndex.symm i)), (fun j ↦ c (splitIndex.symm j)),
    (fun i ↦ hr _), (fun j ↦ hc _), ?_⟩
  funext i j
  simp [unsplitMatrix, Mub6.monomialEdge, heq]

theorem fourier3_power_eq_literal {ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    Hadamard6.fourier3 ω = Worker12.fourier3 ω := by
  have h3 : ω ^ 3 = 1 := cubic_of_quadratic hω
  have h4 : ω ^ 4 = ω := by calc ω ^ 4 = ω * ω ^ 3 := by ring
                                             _ = ω := by rw [h3, mul_one]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [Hadamard6.fourier3, Worker12.fourier3, h4]

theorem unsplit_fourierFamily {ω p q : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    unsplitMatrix (fourierFamily ω p q) = fourierPhase ω p q := by
  have hp : fourierParameters p q = phaseVector p q := by
    ext i
    fin_cases i <;> rfl
  simp only [fourierFamily, fourierPhase, fourier3_power_eq_literal hω, hp, rowGauge]
  rfl

theorem transposeFourierFamily_eq_transpose (ω r s : ℂ) :
    transposeFourierFamily ω r s = (fourierFamily ω r s).transpose := by
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    simp [transposeFourierFamily, fourierFamily, Hadamard6.fourier3,
      columnGauge, rowGauge, mul_comm]

theorem unsplit_transposeFourierFamily {ω r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    unsplitMatrix (transposeFourierFamily ω r s) = Mub6.transposeEdge (fourierPhase ω r s) := by
  rw [transposeFourierFamily_eq_transpose]
  change Mub6.transposeEdge (unsplitMatrix (fourierFamily ω r s)) = _
  rw [unsplit_fourierFamily hω]

theorem pure_alpha_monomial {ω p q r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hchar : CharacterPair ω r s) :
    Mub6.MonomialEquivalent
      (unsplitMatrix (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)))
      (fourierPhase ω p q) := by
  have h := equivalent_unsplit (pure_alpha_equivalent (p := p) (q := q) hω hchar)
  rwa [unsplit_fourierFamily hω] at h

theorem pure_A_monomial {ω p q r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hchar : CharacterPair ω p q) :
    Mub6.MonomialEquivalent
      (unsplitMatrix (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)))
      (Mub6.transposeEdge (fourierPhase ω r s)) := by
  have h := equivalent_unsplit (pure_A_equivalent (r := r) (s := s) hω hchar)
  rwa [unsplit_transposeFourierFamily hω] at h

#print axioms pure_alpha_monomial
#print axioms pure_A_monomial

end Worker12
