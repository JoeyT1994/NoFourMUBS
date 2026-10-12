import Hadamard6.BlockCompletion
import NoFourMUBs.Step2.Reconstruction.RowNormFlatness

set_option autoImplicit false
open Matrix Hadamard6
open scoped BigOperators

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- The forced fourth block has squared row norms three before flatness
is known. This uses the repository's generalized block-Gram identity. -/
theorem forcedD_row_norms {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E) :
    ∀ i, ∑ j, Complex.normSq (forcedD E B C i j) = 3 := by
  have hg := forcedD_bottomRowGram hB.2 hC.2 hB.1.2.2 hC.1.2.2
  intro i
  have hi : 3 + (∑ j, Complex.normSq (forcedD E B C i j)) = 6 := by
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def,
      Complex.mul_conj, sixI3, hC.1.1 i] using
      congrArg Complex.re (congrFun (congrFun hg i) i)
  linarith

/-- For the two candidate sides, only the row-product norms remain to
establish fourth-block flatness. -/
theorem forcedD_entrywiseUnit_of_row_products {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E)
    (hprod : ∀ i, Complex.normSq (∏ j, forcedD E B C i j) = 1) :
    EntrywiseUnit (forcedD E B C) :=
  entrywiseUnit_of_row_norms_and_products (forcedD E B C)
    (forcedD_row_norms hB hC) hprod

#print axioms forcedD_row_norms
#print axioms forcedD_entrywiseUnit_of_row_products

end NoFourMUBs.Step2.Reconstruction
