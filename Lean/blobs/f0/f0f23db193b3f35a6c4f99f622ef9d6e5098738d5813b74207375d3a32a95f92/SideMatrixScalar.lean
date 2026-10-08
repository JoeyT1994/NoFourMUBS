import SideMatrixCoefficientAlgebra
import SideMatrixSchurPolynomial
import StrictSideFinalGuards

/-! Bind lightweight matrix algebra to the already checked literal reconstruction. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def reconstructionK (s t r : ℂ) : ℂ := r / 3 - (t / 3) * conj (s / 3)
def prescribedCPlus (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  (reconstructionK s t r - delta * conj (prescribedQ s t r epsilon delta)) / (preRhoN s : ℂ)
def prescribedCMinus (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  (reconstructionK s t r * prescribedQ s t r epsilon delta + delta) / (preRhoN s : ℂ)

theorem prescribed_rho_q_balance {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    prescribedRho s t r epsilon delta *
      (1 + Complex.normSq (prescribedQ s t r epsilon delta)) = preRhoN s := by
  obtain ⟨hr, hquad⟩ := prescribed_rho_guard hR hg hn he hd ho
  exact rho_quotient_balance _ _ _ hr hquad

theorem reconstruction_schur_identity (s t r : ℂ) :
    preRhoN s * (1 - Complex.normSq (t / 3)) - Complex.normSq (reconstructionK s t r) =
      gramG s t r / 27 := by
  simpa only [preRhoN, reconstructionK, gramG, gramP, gramJ] using
    side_matrix_schur_polynomial s t r

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.prescribed_rho_q_balance
#print axioms StrictReconstruction20261007.reconstruction_schur_identity
