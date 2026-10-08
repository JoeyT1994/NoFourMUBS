import SideFiniteRecipeImages
import SideIntrinsicExhaustion

/-! Actual strict fixed-Gram fibres are finite by the checked exhaustive
recipe and the elementary finite power fibres. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
noncomputable section

theorem strict_normalized_side_fibre_finite (G : Hadamard6.Mat3)
    (hR : 0 < gramInvariant (G 1 0) (G 2 0) (G 2 1)) :
    Set.Finite {X : Hadamard6.Mat3 |
      Hadamard6.EntrywiseUnit X ∧ (∀ j, X 0 j=1) ∧
        X * Matrix.conjTranspose X=G} := by
  apply (finiteRecipeImages_finite (G 1 0) (G 2 0) (G 2 1)).subset
  rintro X ⟨hX,hfirst,hgram⟩
  have hRX : 0 < gramInvariant ((X * Matrix.conjTranspose X) 1 0)
      ((X * Matrix.conjTranspose X) 2 0) ((X * Matrix.conjTranspose X) 2 1) := by
    rw [hgram]
    exact hR
  obtain ⟨epsilon,delta,w,p,he,hd,_,hw,hside⟩ :=
    strict_normalized_matrix_side_exhaustion X hX hfirst hRX
  simp only [finiteRecipeImages,Set.mem_iUnion,Set.mem_setOf_eq,Set.mem_range]
  refine ⟨epsilon,he,delta,?_,w,?_,p.symm,?_⟩
  · simpa only [hgram] using hd
  · simpa only [hgram] using hw
  · ext i j
    simpa only [hgram,Equiv.apply_symm_apply] using hside i (p.symm j)

#print axioms strict_normalized_side_fibre_finite
end
end StrictReconstruction20261007.SideIntrinsic
