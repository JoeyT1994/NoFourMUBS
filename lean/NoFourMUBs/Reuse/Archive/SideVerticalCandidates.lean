import NoFourMUBs.Reuse.Archive.SideHorizontalCandidates

/-! Vertical candidate finiteness is the exact transpose of horizontal
candidate finiteness. The needed transpose invariant is supplied by the
checked physical consumer, rather than added as a hidden global premise. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
noncomputable section

theorem vertical_candidate_transpose (E C : Hadamard6.Mat3)
    (hC : C ∈ Hadamard6.verticalCandidates E) :
    Matrix.transpose C ∈ Hadamard6.horizontalCandidates (Matrix.transpose E) := by
  refine ⟨(fun i j => hC.1 j i),hC.2.1,?_⟩
  have h := congrArg Matrix.transpose hC.2.2
  have hsix : Matrix.transpose Hadamard6.sixI3=Hadamard6.sixI3 := by
    simp [Hadamard6.sixI3]
  simpa only [Matrix.transpose_add,Matrix.transpose_mul,Matrix.conjTranspose_transpose,
    Matrix.transpose_conjTranspose,hsix] using h

theorem strict_vertical_candidates_finite (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hRt : 0 < gramInvariant (seedS (Matrix.transpose E))
      (seedT (Matrix.transpose E)) (seedR (Matrix.transpose E))) :
    (Hadamard6.verticalCandidates E).Finite := by
  have hEt : Hadamard6.EntrywiseUnit (Matrix.transpose E) := fun i j => hE j i
  have hfin := strict_horizontal_candidates_finite (Matrix.transpose E) hEt hRt
  apply (hfin.image Matrix.transpose).subset
  intro C hC
  exact ⟨Matrix.transpose C,vertical_candidate_transpose E C hC,Matrix.transpose_transpose C⟩

#print axioms vertical_candidate_transpose
#print axioms strict_vertical_candidates_finite
end
end StrictReconstruction20261007.SideIntrinsic
