import ThirdRowGateActual
import SideMatrixGram

/-! All three rows of the actual literal M satisfy the norm and phase gates. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem prescribed_matrix_row_norms_and_gates {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    let M := prescribedMatrix s t r epsilon delta
    let sigma := prescribedSigma s t r epsilon delta
    let rho := prescribedRho s t r epsilon delta
    ∀ i, (Complex.normSq (M i 0) + Complex.normSq (M i 1) + Complex.normSq (M i 2) = 1) ∧
      (sigma ^ 2 * (M i 0 * conj (M i 1) + M i 2 * conj (M i 0)) +
        (rho : ℂ) * M i 1 * conj (M i 2) = 0) := by
  obtain ⟨h1, h2, _⟩ := prescribed_matrix_row_data hR hg hn he hd ho
  have hg1 := prescribed_second_row_phase_gate hR hg hn he hd ho
  have hg2 := prescribed_third_row_phase_gate hR hg hn he hd ho
  intro i
  fin_cases i
  · simp [prescribedMatrix, sideMatrixCore]
  · simpa [prescribedMatrix, sideMatrixCore] using And.intro h1 hg1
  · simpa [prescribedMatrix, sideMatrixCore] using And.intro h2 hg2

#print axioms prescribed_matrix_row_norms_and_gates
end
end StrictReconstruction20261007

