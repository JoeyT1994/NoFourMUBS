import NoFourMUBs.Reuse.Archive.SideMatrixGram
import NoFourMUBs.Reuse.Archive.SideMatrixMoments

/-! Exact determinant of the already checked literal prescribed matrix. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem prescribed_matrix_det {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    Matrix.det (prescribedMatrix s t r epsilon delta) = delta := by
  have hs : prescribedSigma s t r epsilon delta *
      conj (prescribedSigma s t r epsilon delta) =
      (prescribedRho s t r epsilon delta : ℂ) := by
    rw [Complex.mul_conj, (prescribed_sigma_xi_guards hR hg hn he hd ho).1]
  calc
    _ = (prescribedSigma s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) *
      (prescribedCMinus s t r epsilon delta -
        prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) := by
      simp only [prescribedMatrix, sideMatrixCore, Matrix.det_fin_three]
      simp
      <;> ring
    _ = delta := by rw [hs]; exact prescribed_coefficient_determinant hR hg hn he hd ho

#print axioms prescribed_matrix_det
end
end StrictReconstruction20261007

