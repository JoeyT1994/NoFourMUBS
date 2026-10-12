import NoFourMUBs.Step2.Reconstruction.ThirdMoment.WeightedDefect
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SideMatrices
import NoFourMUBs.Step2.Reconstruction.ForcedProductMoments
import Mathlib.LinearAlgebra.Matrix.Trace

set_option autoImplicit false
open Matrix Hadamard6
open scoped BigOperators ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

theorem thirdMoment_sandwich (A : Mat3) (p : Fin 3) :
    thirdMoment A p = A * diagonal (fun j => conj (A p j)) * Aᴴ := by
  ext i k
  rw [Matrix.mul_apply]
  simp only [thirdMoment, Matrix.mul_diagonal, Matrix.conjTranspose_apply,
    Complex.star_def, map_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem thirdMoment_transpose_sandwich (C : Mat3) (p : Fin 3) :
    (thirdMoment Cᵀ p)ᵀ = Cᴴ * diagonal (fun i => conj (C i p)) * C := by
  ext i k
  rw [Matrix.mul_apply]
  simp only [thirdMoment, Matrix.transpose_apply, Matrix.mul_diagonal,
    Matrix.conjTranspose_apply, Complex.star_def, map_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem weightedDefect_trace (B C D : Mat3) (p q : Fin 3) :
    weightedDefect B C D p q =
      Matrix.trace (diagonal (fun i => conj (C i p)) *
        (D * diagonal (fun j => conj (B q j)) * Dᴴ)) -
      (∑ i, conj (C i p)) * (∑ j, conj (B q j)) := by
  have ht : Matrix.trace (diagonal (fun i => conj (C i p)) *
        (D * diagonal (fun j => conj (B q j)) * Dᴴ)) =
      ∑ i, conj (C i p) * ∑ j, D i j * conj (B q j) * conj (D i j) := by
    simp only [Matrix.trace, Matrix.diag_apply, Matrix.diagonal_mul]
    apply Finset.sum_congr rfl
    intro i _
    congr 1
    rw [Matrix.mul_apply]
    simp only [Matrix.mul_diagonal, Matrix.conjTranspose_apply, Complex.star_def]
  rw [ht]
  simp only [weightedDefect, flatnessDefect, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Complex.star_def, Fin.sum_univ_three, ← Complex.mul_conj]
  ring

/-- The contraction uses the same ordered indices, without extra conjugation. -/
theorem weightedDefect_contraction (B C K : Mat3) (p q : Fin 3) :
    weightedDefect B C (C*K*B) p q =
      (∑ a, ∑ c, thirdMoment Cᵀ p a c * (K * thirdMoment B q * Kᴴ) a c) -
      (∑ i, conj (C i p)) * (∑ j, conj (B q j)) := by
  rw [weightedDefect_trace]
  congr 1
  let L : Mat3 := diagonal (fun i => conj (C i p))
  have ht : Matrix.trace (L * ((C*K*B) * diagonal (fun j => conj (B q j)) * (C*K*B)ᴴ)) =
      Matrix.trace ((Cᴴ * L * C) * (K * thirdMoment B q * Kᴴ)) := by
    calc
      _ = Matrix.trace ((L * C * (K * thirdMoment B q * Kᴴ)) * Cᴴ) := by
        rw [thirdMoment_sandwich]
        congr 1
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = Matrix.trace (Cᴴ * (L * C * (K * thirdMoment B q * Kᴴ))) :=
        Matrix.trace_mul_comm _ _
      _ = _ := by congr 1; simp only [Matrix.mul_assoc]
  rw [ht, ← thirdMoment_transpose_sandwich]
  simp only [Matrix.trace, Matrix.diag_apply, Matrix.mul_apply, Matrix.transpose_apply]
  exact Finset.sum_comm

/-- The existing forced-map factorization and normalized Gram data specialize
the universal contraction to the actual candidate sides. -/
theorem forcedD_weighted_contraction {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E) (p q : Fin 3) :
    weightedDefect B C (forcedD E B C) p q =
      (∑ a, ∑ c, thirdMoment Cᵀ p a c *
        (forcedCoefficientMatrix E * thirdMoment B q * (forcedCoefficientMatrix E)ᴴ) a c) -
      (Cᴴ*C) p 0 * (B*Bᴴ) 0 q := by
  rw [forcedD_factorization hB C, weightedDefect_contraction]
  congr 1
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def,
    hC.1.2.1, hB.1.2.1, mul_one, one_mul]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
