import SideMatrixScalar

/-! Actual row norms and cross product for the displayed reconstruction matrix. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem prescribed_matrix_row_data {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    Complex.normSq (s / 3) + Complex.normSq (prescribedSigma s t r epsilon delta) +
      Complex.normSq (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) = 1 ∧
    Complex.normSq (t / 3) +
      Complex.normSq (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta) +
      Complex.normSq (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) = 1 ∧
    (t / 3) * conj (s / 3) +
      (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta) *
        conj (prescribedSigma s t r epsilon delta) +
      (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) *
        conj (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) = r / 3 := by
  have hbalance := prescribed_rho_q_balance hR hg hn he hd ho
  have hs := (prescribed_sigma_xi_guards hR hg hn he hd ho).1
  have hdNorm := (prescribed_delta_guard hR hg he hd).1
  have hschur : Complex.normSq (reconstructionK s t r) + Complex.normSq delta =
      preRhoN s * (1 - Complex.normSq (t / 3)) := by
    have h := reconstruction_schur_identity s t r
    rw [hdNorm]
    linarith
  have hw := two_coefficient_weighted_norm (t / 3) (reconstructionK s t r) delta
    (prescribedQ s t r epsilon delta) (preRhoN s) (prescribedRho s t r epsilon delta)
    hn hbalance hschur
  change prescribedRho s t r epsilon delta *
    (Complex.normSq (prescribedCPlus s t r epsilon delta) +
      Complex.normSq (prescribedCMinus s t r epsilon delta)) = 1 - Complex.normSq (t / 3) at hw
  have hi := two_coefficient_inner (reconstructionK s t r) delta
    (prescribedQ s t r epsilon delta) (preRhoN s) (prescribedRho s t r epsilon delta) hn hbalance
  change (prescribedRho s t r epsilon delta : ℂ) *
    (prescribedCPlus s t r epsilon delta + prescribedCMinus s t r epsilon delta *
      conj (prescribedQ s t r epsilon delta)) = reconstructionK s t r at hi
  refine ⟨?_, ?_, ?_⟩
  · simp only [Complex.normSq_mul, Complex.normSq_conj, hs]
    dsimp only [preRhoN] at hbalance
    nlinarith [hbalance]
  · simp only [Complex.normSq_mul, Complex.normSq_conj, hs]
    nlinarith [hw]
  · rw [add_assoc, coefficient_sigma_inner _ _ _ _ _ hs, hi]
    dsimp only [reconstructionK]
    ring

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.prescribed_matrix_row_data
