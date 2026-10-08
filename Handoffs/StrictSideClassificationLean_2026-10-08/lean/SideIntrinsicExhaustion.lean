import SideIntrinsicOrientedMatrix
import SideIntrinsicReflection
import SideIntrinsicSheetChoice
import SideFourierActual

/-! Necessity/exhaustion of the literal side recipe for every normalized actual
unit side on R>0. The sheet, delta root, orientation and cube root are supplied.
The only column permutation required by the construction is identity or reflection. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem strict_phase_rows_exhaustion (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    ∃ (epsilon : ℝ) (delta w : ℂ) (p : Equiv.Perm (Fin 3)),
      epsilon^2=1 ∧
      delta^2=prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon ∧
      0 ≤ (prescribedDF (rowS a) (rowT a) (rowR a) epsilon delta).re ∧
      w^3=prescribedXi (rowS a) (rowT a) (rowR a) epsilon delta ∧
      ∀ i j, prescribedSide (rowS a) (rowT a) (rowR a) epsilon delta w i j =
        phaseSide a i (p j) := by
  obtain ⟨homega,hquad⟩ := ElementaryFourier.reconstructionOmega_unit_quadratic
  obtain ⟨b,hb,hchoice,hs,ht,hr,horder⟩ :=
    choose_oriented_rows a ha ElementaryFourier.reconstructionOmega
  have hRb : 0 < gramInvariant (rowS b) (rowT b) (rowR b) := by
    simpa only [hs,ht,hr] using hR
  obtain ⟨epsilon,he,hz⟩ := strict_intrinsic_sheet_exists b hb hRb
  obtain ⟨hd,ho,hw3,hM⟩ := oriented_side_modes_reconstruct b hb hRb epsilon he hz
    ElementaryFourier.reconstructionOmega homega hquad horder
  let delta := sideModeDelta b ElementaryFourier.reconstructionOmega
  let w := sideModeA b ElementaryFourier.reconstructionOmega /
    conj (sideModeA b ElementaryFourier.reconstructionOmega)
  have hd' : delta^2=prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon := by
    simpa only [hs,ht,hr] using hd
  have ho' : 0 ≤ (prescribedDF (rowS a) (rowT a) (rowR a) epsilon delta).re := by
    simpa only [hs,ht,hr] using ho
  have hw3' : w^3=prescribedXi (rowS a) (rowT a) (rowR a) epsilon delta := by
    simpa only [hs,ht,hr] using hw3
  have hside : prescribedSide (rowS a) (rowT a) (rowR a) epsilon delta w = phaseSide b := by
    simpa only [prescribedSide,hs,ht,hr] using hM
  rcases hchoice with hba | hbr
  · refine ⟨epsilon,delta,w,Equiv.refl _,he,hd',ho',hw3',?_⟩
    intro i j
    have h := congrArg (fun M : Hadamard6.Mat3 => M i j) hside
    simpa only [hba,Equiv.refl_apply] using h
  · refine ⟨epsilon,delta,w,Equiv.swap (1 : Fin 3) 2,he,hd',ho',hw3',?_⟩
    intro i j
    calc
      _ = phaseSide b i j := congrArg (fun M : Hadamard6.Mat3 => M i j) hside
      _ = phaseSide (reflectRows a) i j := by rw [hbr]
      _ = _ := reflectRows_matrix a i j

#print axioms strict_phase_rows_exhaustion

theorem strict_normalized_matrix_side_exhaustion (X : Hadamard6.Mat3)
    (hX : Hadamard6.EntrywiseUnit X) (hfirst : ∀ j, X 0 j = 1)
    (hR : 0 < gramInvariant ((X * Matrix.conjTranspose X) 1 0)
      ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1)) :
    ∃ (epsilon : ℝ) (delta w : ℂ) (p : Equiv.Perm (Fin 3)),
      epsilon^2=1 ∧
      delta^2=prescribedDeltaRadicand ((X * Matrix.conjTranspose X) 1 0)
        ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1) epsilon ∧
      0 ≤ (prescribedDF ((X * Matrix.conjTranspose X) 1 0)
        ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1) epsilon delta).re ∧
      w^3=prescribedXi ((X * Matrix.conjTranspose X) 1 0)
        ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1) epsilon delta ∧
      ∀ i j, prescribedSide ((X * Matrix.conjTranspose X) 1 0)
        ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1) epsilon delta w i j =
          X i (p j) := by
  obtain ⟨ha,hphase,_,_,hs,ht,hr⟩ := arbitrary_side_intrinsic_interface X hX hfirst
  have hR' : 0 < gramInvariant (rowS (rowsOfSide X)) (rowT (rowsOfSide X)) (rowR (rowsOfSide X)) := by
    simpa only [hs,ht,hr] using hR
  obtain ⟨epsilon,delta,w,p,he,hd,ho,hw3,hm⟩ := strict_phase_rows_exhaustion (rowsOfSide X) ha hR'
  refine ⟨epsilon,delta,w,p,he,?_,?_,?_,?_⟩
  · simpa only [hs,ht,hr] using hd
  · simpa only [hs,ht,hr] using ho
  · simpa only [hs,ht,hr] using hw3
  · intro i j
    simpa only [hs,ht,hr,hphase] using hm i j

#print axioms strict_normalized_matrix_side_exhaustion
end
end StrictReconstruction20261007.SideIntrinsic
