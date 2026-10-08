import SideFourierFirstRow
import SideMatrixPhaseRows

/-! Actual reconstruction conditions before adjoining the literal exponential
constant and algebraic-closure cube-root existence. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem prescribed_side_conditions_for_fourier {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon^2=1)
    {delta : ℂ} (hd : delta^2=prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re)
    (omega : ℂ) (homega : Complex.normSq omega=1) (hquad : omega^2+omega+1=0)
    {w : ℂ} (hw3 : w^3=prescribedXi s t r epsilon delta) :
    Hadamard6.EntrywiseUnit (phaseFourierMatrix (prescribedMatrix s t r epsilon delta) omega w) ∧
      (∀ j, phaseFourierMatrix (prescribedMatrix s t r epsilon delta) omega w 0 j = 1) ∧
      (phaseFourierMatrix (prescribedMatrix s t r epsilon delta) omega w *
        Matrix.conjTranspose (phaseFourierMatrix (prescribedMatrix s t r epsilon delta) omega w) =
          reconstructionGram s t r) := by
  have hr := (prescribed_rho_guard hR hg hn he hd ho).1
  have hw : Complex.normSq w=1 := cube_root_of_unit_is_unit _ _
    (prescribed_sigma_xi_guards hR hg hn he hd ho).2.2 hw3
  have hrows := prescribed_matrix_row_norms_and_gates hR hg hn he hd ho
  have hw3' : w^3 = prescribedSigma s t r epsilon delta^2 /
      (prescribedRho s t r epsilon delta : ℂ) := hw3
  refine ⟨?_,?_,?_⟩
  · exact phaseFourier_entrywiseUnit (prescribedMatrix s t r epsilon delta) omega w
      (prescribedSigma s t r epsilon delta) (prescribedRho s t r epsilon delta)
      homega hquad hr hw hw3' (fun i => (hrows i).1) (fun i => (hrows i).2)
  · exact phaseFourier_first_row (prescribedMatrix s t r epsilon delta) omega w hquad rfl rfl rfl
  · exact (phaseFourier_gram (prescribedMatrix s t r epsilon delta) omega w homega hquad hw).trans
      (prescribed_matrix_gram hR hg hn he hd ho)

#print axioms prescribed_side_conditions_for_fourier
end
end StrictReconstruction20261007
