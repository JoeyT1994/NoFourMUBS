import NoFourMUBs.Reuse.Archive.SideFourierPhaseAlgebra
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.LinearCombination

/-! Literal P(w) and F3 matrix multiplication and Gram identities. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

def reconstructionFourierMatrix (omega : ℂ) : Hadamard6.Mat3 :=
  fun i j => omega ^ (i.val * j.val)

def phaseDiagonal (w : ℂ) : Hadamard6.Mat3 := Matrix.diagonal ![1, conj w, w]

def phaseFourierMatrix (M : Hadamard6.Mat3) (omega w : ℂ) : Hadamard6.Mat3 :=
  M * phaseDiagonal w * reconstructionFourierMatrix omega

theorem quadratic_fourth_power (omega : ℂ) (hquad : omega ^ 2 + omega + 1 = 0) :
    omega ^ 4 = omega := by
  have h3 : omega ^ 3 = 1 := SideDFT.cubic_of_quadratic hquad
  calc
    omega ^ 4 = omega * omega ^ 3 := by ring
    _ = omega := by rw [h3, mul_one]

theorem phaseFourier_row_entries (M : Hadamard6.Mat3) (omega w : ℂ)
    (hquad : omega ^ 2 + omega + 1 = 0) (i : Fin 3) :
    phaseFourierMatrix M omega w i 0 =
      SideDFT.dft₀ (M i 0) (M i 1 * conj w) (M i 2 * w) ∧
    phaseFourierMatrix M omega w i 1 =
      SideDFT.dft₁ omega (M i 0) (M i 1 * conj w) (M i 2 * w) ∧
    phaseFourierMatrix M omega w i 2 =
      SideDFT.dft₂ omega (M i 0) (M i 1 * conj w) (M i 2 * w) := by
  have h4 := quadratic_fourth_power omega hquad
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [phaseFourierMatrix, phaseDiagonal, reconstructionFourierMatrix,
      SideDFT.dft₀, SideDFT.dft₁, SideDFT.dft₂,
      Matrix.mul_apply, Matrix.diagonal_apply, Fin.sum_univ_three, h4] <;> ring

#print axioms phaseFourier_row_entries

theorem phaseDiagonal_gram (w : ℂ) (hw : Complex.normSq w = 1) :
    phaseDiagonal w * Matrix.conjTranspose (phaseDiagonal w) = (1 : Hadamard6.Mat3) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [phaseDiagonal, Matrix.mul_apply, Matrix.conjTranspose_apply,
      Matrix.diagonal_apply, Fin.sum_univ_three, Complex.star_def, Complex.mul_conj,
      ← Complex.normSq_eq_conj_mul_self, hw]

#print axioms phaseDiagonal_gram

theorem fourier3_gram (omega : ℂ) (homega : Complex.normSq omega = 1)
    (hquad : omega ^ 2 + omega + 1 = 0) :
    reconstructionFourierMatrix omega * Matrix.conjTranspose (reconstructionFourierMatrix omega) =
      (3 : ℂ) • (1 : Hadamard6.Mat3) := by
  have h3 : omega ^ 3 = 1 := SideDFT.cubic_of_quadratic hquad
  have h4 := quadratic_fourth_power omega hquad
  have hc : conj omega = omega ^ 2 := by
    simpa only [Complex.star_def] using SideDFT.star_eq_square_of_quadratic_unit homega hquad
  have hc2 : conj (omega ^ 2) = omega := by
    simpa only [Complex.star_def] using SideDFT.star_square_eq_of_quadratic_unit homega hquad
  have hpow (n : ℕ) : omega ^ (n + 3) = omega ^ n := by rw [pow_add, h3, mul_one]
  have h5 : omega ^ 5 = omega ^ 2 := hpow 2
  have h6 : omega ^ 6 = 1 := (hpow 3).trans h3
  have h7 : omega ^ 7 = omega := (hpow 4).trans h4
  have h8 : omega ^ 8 = omega ^ 2 := (hpow 5).trans h5
  have h9 : omega ^ 9 = 1 := (hpow 6).trans h6
  have h10 : omega ^ 10 = omega := (hpow 7).trans h7
  have h2 : omega ^ 2 = -omega - 1 := by linear_combination hquad
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [reconstructionFourierMatrix, Matrix.mul_apply, Matrix.conjTranspose_apply,
      Fin.sum_univ_three, Matrix.smul_apply, h4, Complex.star_def, hc, hc2] <;>
    ring_nf <;> (try simp only [h3,h4,h5,h6,h7,h8,h9,h10,h2]) <;> ring

#print axioms fourier3_gram

theorem phaseFourier_gram (M : Hadamard6.Mat3) (omega w : ℂ)
    (homega : Complex.normSq omega = 1) (hquad : omega ^ 2 + omega + 1 = 0)
    (hw : Complex.normSq w = 1) :
    phaseFourierMatrix M omega w * Matrix.conjTranspose (phaseFourierMatrix M omega w) =
      (3 : ℂ) • (M * Matrix.conjTranspose M) := by
  calc
    _ = M * (phaseDiagonal w *
        (reconstructionFourierMatrix omega * Matrix.conjTranspose (reconstructionFourierMatrix omega)) *
          Matrix.conjTranspose (phaseDiagonal w)) * Matrix.conjTranspose M := by
      simp only [phaseFourierMatrix, Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = (3 : ℂ) • (M * (phaseDiagonal w * Matrix.conjTranspose (phaseDiagonal w)) *
        Matrix.conjTranspose M) := by
      rw [fourier3_gram omega homega hquad]
      simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_one]
    _ = _ := by rw [phaseDiagonal_gram w hw]; simp

#print axioms phaseFourier_gram

theorem phaseFourier_entrywiseUnit (M : Hadamard6.Mat3) (omega w sigma : ℂ) (rho : ℝ)
    (homega : Complex.normSq omega = 1) (hquad : omega ^ 2 + omega + 1 = 0)
    (hr : 0 < rho) (hw : Complex.normSq w = 1)
    (hw3 : w ^ 3 = sigma ^ 2 / (rho : ℂ))
    (hrows : ∀ i, Complex.normSq (M i 0) + Complex.normSq (M i 1) + Complex.normSq (M i 2) = 1)
    (hgates : ∀ i, sigma ^ 2 * (M i 0 * conj (M i 1) + M i 2 * conj (M i 0)) +
      (rho : ℂ) * M i 1 * conj (M i 2) = 0) :
    Hadamard6.EntrywiseUnit (phaseFourierMatrix M omega w) := by
  intro i j
  obtain ⟨h0, h1, h2⟩ := phase_gated_dft_row_unit omega (M i 0) (M i 1) (M i 2)
    sigma w rho homega hquad hr hw hw3 (hrows i) (hgates i)
  obtain ⟨e0, e1, e2⟩ := phaseFourier_row_entries M omega w hquad i
  fin_cases j
  · exact (congrArg Complex.normSq e0).trans h0
  · exact (congrArg Complex.normSq e1).trans h1
  · exact (congrArg Complex.normSq e2).trans h2

#print axioms phaseFourier_entrywiseUnit
end
end StrictReconstruction20261007

