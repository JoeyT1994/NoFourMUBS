import SideActualFibreFinite
import SideIntrinsicTheta
import Hadamard6.FiniteDilation

/-! Exact bridge from strict literal reconstruction to the paper's horizontal
candidate set. Candidate finiteness and invertibility are consequences. -/
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

theorem strict_horizontal_candidate_invertible (E B : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    (hB : B ∈ Hadamard6.horizontalCandidates E) : IsUnit B.det := by
  obtain ⟨ha,_,hdet,_,hs,ht,hr⟩ := arbitrary_side_intrinsic_interface B hB.1 hB.2.1
  have hg := horizontal_candidate_literal_gram E B hE hB
  have hRB : 0 < gramInvariant ((B * Matrix.conjTranspose B) 1 0)
      ((B * Matrix.conjTranspose B) 2 0) ((B * Matrix.conjTranspose B) 2 1) := by
    rw [hg]
    exact hR
  have hRa : 0 < gramInvariant (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
      (rowR (rowsOfSide B)) := by
    simpa only [hs,ht,hr] using hRB
  have hd := (strict_intrinsic_det_guard (rowsOfSide B) ha hRa).1
  rw [hdet] at hd
  exact isUnit_iff_ne_zero.mpr hd

theorem strict_invertible_horizontal_candidates_nonempty (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E)) :
    (Hadamard6.invertibleHorizontalCandidates E).Nonempty := by
  obtain ⟨delta,w,_,_,_,hu,hfirst,hgram⟩ :=
    strict_seed_prescribed_side_exists E hE hR (epsilon := 1) (by norm_num)
  let B := prescribedSide (seedS E) (seedT E) (seedR E) 1 delta w
  have hB : B ∈ Hadamard6.horizontalCandidates E := by
    refine ⟨hu,hfirst,?_⟩
    rw [hgram]
    exact add_sub_cancel _ _
  exact ⟨B,hB,strict_horizontal_candidate_invertible E B hE hR hB⟩

#print axioms horizontal_candidate_literal_gram
#print axioms strict_horizontal_candidates_finite
#print axioms strict_horizontal_candidate_invertible
#print axioms strict_invertible_horizontal_candidates_nonempty
end
end StrictReconstruction20261007.SideIntrinsic
