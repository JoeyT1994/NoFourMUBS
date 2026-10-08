import SideIntrinsicFourierModes
import SideIntrinsicMatrixBindings
import SideFourierMatrixAlgebra

/-! Exact inverse-DFT factorization and Gram transport for an arbitrary phase side.
The norm and cross-moment identities reuse the checked Fourier matrix Gram. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def sideFourierCore (a : Rows ℂ) (w : ℂ) : Hadamard6.Mat3 :=
  !![1, 0, 0; rowS a/3, sideModeA a w, sideModeB a w;
    rowT a/3, sideModeC a w, sideModeD a w]

theorem side_fourier_factorization (a : Rows ℂ) (w : ℂ) (hw : w^2+w+1=0) :
    phaseSide a = sideFourierCore a w * reconstructionFourierMatrix w := by
  obtain ⟨hx0,hx1,hx2⟩ := mode_inverse_numerators a w hw
  let b : Rows ℂ := ⟨a.y0,a.y1,a.y2,a.x0,a.x1,a.x2⟩
  have hy : rowT a + modeCN a w + modeDN a w = 3*a.y0 ∧
      rowT a + w*modeCN a w + w^2*modeDN a w = 3*a.y1 ∧
      rowT a + w^2*modeCN a w + w*modeDN a w = 3*a.y2 :=
    mode_inverse_numerators b w hw
  obtain ⟨hy0,hy1,hy2⟩ := hy
  have h4 := quadratic_fourth_power w hw
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [phaseSide,sideFourierCore,reconstructionFourierMatrix,Matrix.mul_apply,
      Fin.sum_univ_three,sideModeA,sideModeB,sideModeC,sideModeD,h4] <;>
    field_simp <;>
    first | linear_combination -hx0 | linear_combination -hx1 | linear_combination -hx2 |
      linear_combination -hy0 | linear_combination -hy1 | linear_combination -hy2

#print axioms side_fourier_factorization

theorem phaseSide_unit (a : Rows ℂ) (ha : UnitRows a) : Hadamard6.EntrywiseUnit (phaseSide a) := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  intro i j
  fin_cases i <;> fin_cases j <;> simp [phaseSide,hx0,hx1,hx2,hy0,hy1,hy2]

#print axioms phaseSide_unit

theorem side_fourier_gram (a : Rows ℂ) (w : ℂ)
    (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    phaseSide a * Matrix.conjTranspose (phaseSide a) =
      (3 : ℂ) • (sideFourierCore a w * Matrix.conjTranspose (sideFourierCore a w)) := by
  rw [side_fourier_factorization a w hw,Matrix.conjTranspose_mul]
  calc
    _ = sideFourierCore a w *
        (reconstructionFourierMatrix w * Matrix.conjTranspose (reconstructionFourierMatrix w)) *
        Matrix.conjTranspose (sideFourierCore a w) := by simp only [Matrix.mul_assoc]
    _ = _ := by
      rw [fourier3_gram w hwu hw]
      simp only [Matrix.mul_smul,Matrix.smul_mul,Matrix.mul_one]

#print axioms side_fourier_gram

theorem side_fourier_row_norms (a : Rows ℂ) (ha : UnitRows a) (w : ℂ)
    (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    Complex.normSq (rowS a/3) + Complex.normSq (sideModeA a w) + Complex.normSq (sideModeB a w) = 1 ∧
    Complex.normSq (rowT a/3) + Complex.normSq (sideModeC a w) + Complex.normSq (sideModeD a w) = 1 := by
  have h := side_fourier_gram a w hwu hw
  have h1 := congrArg (fun M : Hadamard6.Mat3 => M 1 1) h
  have h2 := congrArg (fun M : Hadamard6.Mat3 => M 2 2) h
  rw [Hadamard6.rowGram_diagonal_three (phaseSide_unit a ha) 1] at h1
  rw [Hadamard6.rowGram_diagonal_three (phaseSide_unit a ha) 2] at h2
  simp [Matrix.smul_apply,Matrix.mul_apply,Matrix.conjTranspose_apply,Fin.sum_univ_three,
    sideFourierCore,Complex.star_def,Complex.mul_conj] at h1 h2
  have hr1 := congrArg Complex.re h1
  have hr2 := congrArg Complex.re h2
  simp [Complex.mul_re] at hr1 hr2
  constructor <;> linarith

#print axioms side_fourier_row_norms

theorem side_fourier_cross_moment (a : Rows ℂ) (w : ℂ)
    (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    rowR a/3 - (rowT a/3)*conj (rowS a/3) =
      sideModeC a w * conj (sideModeA a w) + sideModeD a w * conj (sideModeB a w) := by
  have h := congrArg (fun M : Hadamard6.Mat3 => M 2 1) (side_fourier_gram a w hwu hw)
  rw [(phaseSide_correlations a).2.2] at h
  simp [Matrix.smul_apply,Matrix.mul_apply,Matrix.conjTranspose_apply,Fin.sum_univ_three,
    sideFourierCore,Complex.star_def] at h
  linear_combination (1/3 : ℂ)*h

#print axioms side_fourier_cross_moment
end
end StrictReconstruction20261007.SideIntrinsic
