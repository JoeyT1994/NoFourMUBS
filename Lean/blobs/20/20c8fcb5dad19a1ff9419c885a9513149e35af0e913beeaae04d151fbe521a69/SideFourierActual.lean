import SideFourierMatrixAlgebra
import SideMatrixPhaseRows
import SideFourierRootChoices
import SideMatrixSeedGram

/-! The literal Fourier side constructor on the complete strict unit-seed domain. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def prescribedSide (s t r : ℂ) (epsilon : ℝ) (delta w : ℂ) : Hadamard6.Mat3 :=
  phaseFourierMatrix (prescribedMatrix s t r epsilon delta) reconstructionOmega w

/-- Every cube root allowed by the specification gives a normalized unit-entry side. -/
theorem prescribed_side_conditions {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re)
    {w : ℂ} (hw3 : w ^ 3 = prescribedXi s t r epsilon delta) :
    Hadamard6.EntrywiseUnit (prescribedSide s t r epsilon delta w) ∧
      (∀ j, prescribedSide s t r epsilon delta w 0 j = 1) ∧
      (prescribedSide s t r epsilon delta w *
        Matrix.conjTranspose (prescribedSide s t r epsilon delta w) = reconstructionGram s t r) := by
  have hr := (prescribed_rho_guard hR hg hn he hd ho).1
  have hw : Complex.normSq w = 1 := cube_root_of_unit_is_unit _ _
    (prescribed_sigma_xi_guards hR hg hn he hd ho).2.2 hw3
  obtain ⟨homega, hquad⟩ := reconstructionOmega_unit_quadratic
  have hrows := prescribed_matrix_row_norms_and_gates hR hg hn he hd ho
  refine ⟨?_, ?_, ?_⟩
  · exact phaseFourier_entrywiseUnit _ _ _ _ _ homega hquad hr hw hw3
      (fun i => (hrows i).1) (fun i => (hrows i).2)
  · intro j
    fin_cases j <;>
      simp [prescribedSide, phaseFourierMatrix, prescribedMatrix, sideMatrixCore,
        phaseDiagonal, reconstructionFourierMatrix, Matrix.mul_apply, Matrix.diagonal_apply,
        Fin.sum_univ_three]
  · exact (phaseFourier_gram _ _ _ homega hquad hw).trans
      (prescribed_matrix_gram hR hg hn he hd ho)

#print axioms prescribed_side_conditions

/-- Actual full-domain existence endpoint. The only seed condition is entrywise
unitness and R>0; square-root orientation and cube-root existence are supplied. -/
theorem strict_seed_prescribed_side_exists (E : Hadamard6.Mat3) (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta w : ℂ,
      delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon ∧
      0 ≤ (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).re ∧
      w ^ 3 = prescribedXi (seedS E) (seedT E) (seedR E) epsilon delta ∧
      Hadamard6.EntrywiseUnit (prescribedSide (seedS E) (seedT E) (seedR E) epsilon delta w) ∧
      (∀ j, prescribedSide (seedS E) (seedT E) (seedR E) epsilon delta w 0 j = 1) ∧
      (prescribedSide (seedS E) (seedT E) (seedR E) epsilon delta w *
        Matrix.conjTranspose (prescribedSide (seedS E) (seedT E) (seedR E) epsilon delta w) =
          Hadamard6.sixI3 - E * Matrix.conjTranspose E) := by
  obtain ⟨hg, _⟩ := strict_seed_initial_guards E hE hR
  obtain ⟨delta, hd, ho, hn, _⟩ := strict_seed_oriented_guards_exist E hE hR he
  obtain ⟨w, hw3⟩ := complex_cube_root_exists (prescribedXi (seedS E) (seedT E) (seedR E) epsilon delta)
  obtain ⟨hu, hfirst, hgram⟩ := prescribed_side_conditions hR hg hn he hd ho hw3
  refine ⟨delta, w, hd, ho, hw3, hu, hfirst, ?_⟩
  exact hgram.trans (reconstructionGram_eq_seedComplement E hE)

#print axioms strict_seed_prescribed_side_exists
end
end StrictReconstruction20261007

