import PhaseForest

/- Generic leaf composition only. No concrete table, physical domain, complex
matrix, label data or executable arithmetic is imported by this module. -/
set_option autoImplicit false
namespace Seed0024ClusterTubeCover20261007

theorem coveredCell_of_reject {labels : ℕ} (checks : LeafChecks labels)
    (Feasible : Turns → Prop) (LabelMem : Fin labels → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem) (s : Cell) (j : Fin 6)
    (hv : Valid s) (hc : checks.reject s j=true) :
    CoveredCell Feasible LabelMem s := by
  intro theta ht hf
  exact False.elim (hsound.rejection s j theta hv ht hc hf)

#print axioms coveredCell_of_reject

theorem coveredCell_of_accept {labels : ℕ} (checks : LeafChecks labels)
    (Feasible : Turns → Prop) (LabelMem : Fin labels → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem) (s : Cell) (k : Fin labels)
    (hv : Valid s) (hc : checks.accept s k=true) :
    CoveredCell Feasible LabelMem s := by
  intro theta ht hf
  exact ⟨k,hsound.inclusion s k theta hv ht hc⟩

#print axioms coveredCell_of_accept
end Seed0024ClusterTubeCover20261007
