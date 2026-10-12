import NoFourMUBs.Reuse.Archive.SideActualFibreFinite
import Hadamard6.FiniteDilation

/-! Exact bridge from strict literal reconstruction to the paper's horizontal
candidate set. Candidate finiteness is a consequence. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
noncomputable section

theorem horizontal_candidate_literal_gram (E B : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) (hB : B ∈ Hadamard6.horizontalCandidates E) :
    B * Matrix.conjTranspose B=reconstructionGram (seedS E) (seedT E) (seedR E) := by
  rw [reconstructionGram_eq_seedComplement E hE]
  apply eq_sub_of_add_eq
  simpa only [add_comm] using hB.2.2

theorem strict_horizontal_candidates_finite (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E)) :
    (Hadamard6.horizontalCandidates E).Finite := by
  have hfin := strict_normalized_side_fibre_finite
    (reconstructionGram (seedS E) (seedT E) (seedR E))
    (by exact hR)
  apply hfin.subset
  intro B hB
  exact ⟨hB.1,hB.2.1,horizontal_candidate_literal_gram E B hE hB⟩

#print axioms horizontal_candidate_literal_gram
#print axioms strict_horizontal_candidates_finite
end
end StrictReconstruction20261007.SideIntrinsic
