import SideIntrinsicMatrixBindings

/-! Small transpose bindings for a dephased three-by-three unit seed.
These finite identities use no determinant/permanent nonzero hypothesis. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem permanent3_transpose (X : Hadamard6.Mat3) :
    permanent3 (Matrix.transpose X)=permanent3 X := by
  simp only [permanent3,Matrix.transpose_apply]
  ring

theorem dephased_transpose_intrinsic_bindings (X : Hadamard6.Mat3)
    (hrow : ∀ j, X 0 j=1) (hcol : ∀ i, X i 0=1) :
    rowDet (rowsOfSide (Matrix.transpose X))=rowDet (rowsOfSide X) ∧
    rowPerm (rowsOfSide (Matrix.transpose X))=rowPerm (rowsOfSide X) ∧
    rowU (rowsOfSide (Matrix.transpose X))*rowV (rowsOfSide (Matrix.transpose X))=
      rowU (rowsOfSide X)*rowV (rowsOfSide X) := by
  have htrow : ∀ j, (Matrix.transpose X) 0 j=1 := hcol
  obtain ⟨hd,hp⟩ := phaseSide_det_perm (rowsOfSide X)
  obtain ⟨hdt,hpt⟩ := phaseSide_det_perm (rowsOfSide (Matrix.transpose X))
  rw [phaseSide_rowsOfSide X hrow] at hd hp
  rw [phaseSide_rowsOfSide (Matrix.transpose X) htrow] at hdt hpt
  refine ⟨?_,?_,?_⟩
  · calc
      _ = Matrix.det (Matrix.transpose X) := hdt.symm
      _ = Matrix.det X := Matrix.det_transpose X
      _ = _ := hd
  · calc
      _ = permanent3 (Matrix.transpose X) := hpt.symm
      _ = permanent3 X := permanent3_transpose X
      _ = _ := hp
  · simp only [rowsOfSide,rowU,rowV,Matrix.transpose_apply,hrow,hcol]
    ring

#print axioms permanent3_transpose
#print axioms dephased_transpose_intrinsic_bindings
end
end StrictReconstruction20261007.SideIntrinsic
