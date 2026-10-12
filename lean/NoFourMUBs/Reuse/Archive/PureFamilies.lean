import NoFourMUBs.Reuse.Archive.FourierRouting

namespace Worker12

set_option maxHeartbeats 4000000

open Hadamard6

def cycle3 : Equiv.Perm (Fin 3) where
  toFun := ![1, 2, 0]
  invFun := ![2, 0, 1]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

def fourierFamily (ω p q : ℂ) : Hadamard6.Mat6 :=
  let F := Hadamard6.fourier3 ω
  let B := rowGauge (fourierParameters p q) F
  Matrix.fromBlocks F B F (-B)

def transposeFourierFamily (ω r s : ℂ) : Hadamard6.Mat6 :=
  let F := Hadamard6.fourier3 ω
  let C := columnGauge (fourierParameters r s) F
  Matrix.fromBlocks F F C (-C)

theorem pure_alpha_identity {ω p q : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    fourierNormalForm ω p q 1 1 (fourierForcedD ω p q 1 1) = fourierFamily ω p q := by
  have h3 : ω ^ 3 = 1 := cubic_of_quadratic hω
  have h4 : ω ^ 4 = ω := by calc ω ^ 4 = ω * ω ^ 3 := by ring
                                             _ = ω := by rw [h3, mul_one]
  have h2 : ω ^ 2 = -ω - 1 := by linear_combination hω
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierFamily, Hadamard6.fourier3, rowGauge,
      columnGauge, fourierParameters, fourierForcedD, dftEntry₀, dftEntry₁, dftEntry₂,
      dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, h4] <;>
    ring_nf <;> simp [h4, h3, h2] <;> ring

theorem pure_A_identity {ω r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    fourierNormalForm ω 1 1 r s (fourierForcedD ω 1 1 r s) =
      transposeFourierFamily ω r s := by
  have h3 : ω ^ 3 = 1 := cubic_of_quadratic hω
  have h4 : ω ^ 4 = ω := by calc ω ^ 4 = ω * ω ^ 3 := by ring
                                             _ = ω := by rw [h3, mul_one]
  have h2 : ω ^ 2 = -ω - 1 := by linear_combination hω
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, transposeFourierFamily, Hadamard6.fourier3, rowGauge,
      columnGauge, fourierParameters, fourierForcedD, dftEntry₀, dftEntry₁, dftEntry₂,
      dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, h4] <;>
    ring_nf <;> simp [h4, h3, h2] <;> ring

theorem pure_alpha_cycle {ω p q : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    reindexMatrix (liftBottomPermutation cycle3) (Equiv.refl _)
      (fourierNormalForm ω p q (ω ^ 2) ω (fourierForcedD ω p q (ω ^ 2) ω)) =
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

theorem pure_A_cycle {ω r s : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    reindexMatrix (Equiv.refl _) (liftRightPermutation cycle3)
      (fourierNormalForm ω (ω ^ 2) ω r s (fourierForcedD ω (ω ^ 2) ω r s)) =
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

end Worker12
