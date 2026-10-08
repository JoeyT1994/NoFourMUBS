import SideFourierActualCore
import SideFourierElementaryRoots
import SideMatrixSeedGram

/-! The literal Fourier side constructor on the complete strict unit-seed domain. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def prescribedSide (s t r : ℂ) (epsilon : ℝ) (delta w : ℂ) : Hadamard6.Mat3 :=
  phaseFourierMatrix (prescribedMatrix s t r epsilon delta) ElementaryFourier.reconstructionOmega w

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
  obtain ⟨homega,hquad⟩ := ElementaryFourier.reconstructionOmega_unit_quadratic
  exact prescribed_side_conditions_for_fourier hR hg hn he hd ho
    ElementaryFourier.reconstructionOmega homega hquad hw3

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
  obtain ⟨w, hw3⟩ := ElementaryFourier.complex_cube_root_exists (prescribedXi (seedS E) (seedT E) (seedR E) epsilon delta)
  obtain ⟨hu, hfirst, hgram⟩ := prescribed_side_conditions hR hg hn he hd ho hw3
  refine ⟨delta, w, hd, ho, hw3, hu, hfirst, ?_⟩
  exact hgram.trans (reconstructionGram_eq_seedComplement E hE)

#print axioms strict_seed_prescribed_side_exists
end
end StrictReconstruction20261007

