import SideIntrinsicUnitBindings
import Hadamard6.GramInvariant
import Mathlib.Tactic.FinCases

/-! Exact interface from an arbitrary first-row-normalized phase matrix to the
six-variable intrinsic certificates. No first-column gauge is imposed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def rowsOfSide (X : Hadamard6.Mat3) : Rows ℂ :=
  ⟨X 1 0, X 1 1, X 1 2, X 2 0, X 2 1, X 2 2⟩

def permanent3 (X : Hadamard6.Mat3) : ℂ :=
  X 0 0 * X 1 1 * X 2 2 + X 0 1 * X 1 2 * X 2 0 + X 0 2 * X 1 0 * X 2 1 +
  X 0 0 * X 1 2 * X 2 1 + X 0 1 * X 1 0 * X 2 2 + X 0 2 * X 1 1 * X 2 0

theorem rowsOfSide_unit (X : Hadamard6.Mat3) (hX : Hadamard6.EntrywiseUnit X) :
    UnitRows (rowsOfSide X) :=
  ⟨hX 1 0,hX 1 1,hX 1 2,hX 2 0,hX 2 1,hX 2 2⟩

theorem phaseSide_rowsOfSide (X : Hadamard6.Mat3) (hfirst : ∀ j, X 0 j = 1) :
    phaseSide (rowsOfSide X) = X := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [phaseSide,rowsOfSide,hfirst]

#print axioms rowsOfSide_unit
#print axioms phaseSide_rowsOfSide

theorem phaseSide_det_perm (a : Rows ℂ) :
    Matrix.det (phaseSide a) = rowDet a ∧ permanent3 (phaseSide a) = rowPerm a := by
  constructor <;> simp [phaseSide,Matrix.det_fin_three,permanent3,rowDet,rowPerm] <;> ring

#print axioms phaseSide_det_perm

theorem phaseSide_correlations (a : Rows ℂ) :
    (phaseSide a * Matrix.conjTranspose (phaseSide a)) 1 0 = rowS a ∧
    (phaseSide a * Matrix.conjTranspose (phaseSide a)) 2 0 = rowT a ∧
    (phaseSide a * Matrix.conjTranspose (phaseSide a)) 2 1 = rowR a := by
  refine ⟨?_,?_,?_⟩ <;>
    simp [phaseSide,Matrix.mul_apply,Matrix.conjTranspose_apply,Fin.sum_univ_three,
      Complex.star_def,rowS,rowT,rowR]

#print axioms phaseSide_correlations

theorem arbitrary_side_intrinsic_interface (X : Hadamard6.Mat3)
    (hX : Hadamard6.EntrywiseUnit X) (hfirst : ∀ j, X 0 j = 1) :
    UnitRows (rowsOfSide X) ∧ phaseSide (rowsOfSide X) = X ∧
    rowDet (rowsOfSide X) = Matrix.det X ∧ rowPerm (rowsOfSide X) = permanent3 X ∧
    rowS (rowsOfSide X) = (X * Matrix.conjTranspose X) 1 0 ∧
    rowT (rowsOfSide X) = (X * Matrix.conjTranspose X) 2 0 ∧
    rowR (rowsOfSide X) = (X * Matrix.conjTranspose X) 2 1 := by
  have he := phaseSide_rowsOfSide X hfirst
  obtain ⟨hd,hp⟩ := phaseSide_det_perm (rowsOfSide X)
  obtain ⟨hs,ht,hr⟩ := phaseSide_correlations (rowsOfSide X)
  rw [he] at hd hp hs ht hr
  exact ⟨rowsOfSide_unit X hX,he,hd.symm,hp.symm,hs.symm,ht.symm,hr.symm⟩

#print axioms arbitrary_side_intrinsic_interface
end
end StrictReconstruction20261007.SideIntrinsic
