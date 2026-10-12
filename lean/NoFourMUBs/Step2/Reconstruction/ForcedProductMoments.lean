import NoFourMUBs.Step2.Reconstruction.ForcedRowNorms
import NoFourMUBs.Step2.Reconstruction.RowMomentProduct
import NoFourMUBs.Reuse.Archive.SideIntrinsicMatrixBindings

set_option autoImplicit false
set_option maxHeartbeats 1000000
open Matrix Hadamard6
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open scoped BigOperators ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- The seed coefficient matrix used in the original row-product calculation. -/
def forcedCoefficientMatrix (E : Mat3) : Mat3 :=
  -Eᴴ * (sixI3 - E*Eᴴ)⁻¹

/-- Reuse the candidate Gram equation to express the same forced block in
the horizontal moment basis. No flatness assumption is used. -/
theorem forcedD_factorization {E B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E) (C : Mat3) :
    forcedD E B C = C * forcedCoefficientMatrix E * B := by
  have hg : sixI3 - E*Eᴴ = B*Bᴴ := by
    rw [← hB.1.2.2]
    abel
  simp only [forcedD,forcedCoefficientMatrix,hg,Matrix.mul_inv_rev,
    Matrix.conjTranspose_nonsing_inv,Matrix.mul_assoc,
    Matrix.nonsing_inv_mul B hB.2,Matrix.mul_one,Matrix.neg_mul,Matrix.mul_neg]

theorem forcedD_entry_linear {E B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E) (C : Mat3) (i j : Fin 3) :
    forcedD E B C i j =
      (C*forcedCoefficientMatrix E) i 0 +
      (C*forcedCoefficientMatrix E) i 1 * B 1 j +
      (C*forcedCoefficientMatrix E) i 2 * B 2 j := by
  rw [forcedD_factorization hB C]
  simp only [Matrix.mul_apply,Fin.sum_univ_three,hB.1.2.1,mul_one]

theorem forcedCoefficient_row (E C : Mat3) (hfirst : ∀ i, C i 0 = 1)
    (i k : Fin 3) :
    (C*forcedCoefficientMatrix E) i k = forcedCoefficientMatrix E 0 k +
      C i 1 * forcedCoefficientMatrix E 1 k + C i 2 * forcedCoefficientMatrix E 2 k := by
  simp only [Matrix.mul_apply,Fin.sum_univ_three,hfirst,one_mul]

/-- The original ten-moment formula now evaluates the actual forced row. -/
theorem forcedD_row_product {E B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E) (C : Mat3) (i : Fin 3) :
    let a := rowsOfSide B
    let L := C*forcedCoefficientMatrix E
    ∏ j, forcedD E B C i j =
      (L i 0)^3 + rowS a*(L i 0)^2*(L i 1) + rowT a*(L i 0)^2*(L i 2) +
      (rowU a*conj (rowS a))*(L i 0)*(L i 1)^2 + rowPerm a*(L i 0)*(L i 1)*(L i 2) +
      (rowV a*conj (rowT a))*(L i 0)*(L i 2)^2 + rowU a*(L i 1)^3 +
      (rowU a*rowR a)*(L i 1)^2*(L i 2) +
      (rowV a*conj (rowR a))*(L i 1)*(L i 2)^2 + rowV a*(L i 2)^3 := by
  dsimp only
  rw [Fin.prod_univ_three]
  simp only [forcedD_entry_linear hB C]
  exact row_linear_product (rowsOfSide B) (rowsOfSide_unit B hB.1.1)
    ((C*forcedCoefficientMatrix E) i 0) ((C*forcedCoefficientMatrix E) i 1)
    ((C*forcedCoefficientMatrix E) i 2)

end NoFourMUBs.Step2.Reconstruction
