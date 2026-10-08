import KarlssonAdaptiveLedger
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Hadamard6 Mub6
noncomputable section

/-- A serializable forest indexed by its complete list of roots. -/
inductive ForestOn : List Job → Type where
  | nil : ForestOn []
  | cons {j : Job} {js : List Job} (head : Tree j) (tail : ForestOn js) : ForestOn (j::js)

def ForestOn.frontier : {js : List Job} → ForestOn js → List Job
  | _, .nil => []
  | _, .cons head tail => head.frontier ++ tail.frontier

theorem ForestOn.live_in_frontier {js : List Job} (forest : ForestOn js)
    {j : Job} (hj : j ∈ js) (hLive : Live j) :
    ∃ k ∈ forest.frontier, Live k := by
  induction forest with
  | nil => simp at hj
  | @cons headJob tailJobs head tail ih =>
    rcases List.mem_cons.mp hj with rfl | hm
    · obtain ⟨k,hk,hL⟩ := head.live_in_frontier hLive
      exact ⟨k,List.mem_append.mpr (Or.inl hk),hL⟩
    · obtain ⟨k,hk,hL⟩ := ih hm
      exact ⟨k,List.mem_append.mpr (Or.inr hk),hL⟩

theorem serialized_forest_cover (forest : ForestOn roots)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ k ∈ forest.frontier, Live k := by
  obtain ⟨j,hj,hL⟩ := roots_cover hH h₂
  exact forest.live_in_frontier hj hL

theorem serialized_forest_closure (forest : ForestOn roots) (h : forest.frontier=[])
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) : False := by
  obtain ⟨k,hk,_⟩ := serialized_forest_cover forest hH h₂
  simpa [h] using hk

#print axioms ForestOn.live_in_frontier
#print axioms serialized_forest_cover
#print axioms serialized_forest_closure
end
end Mub6.Classification.KarlssonLedger

