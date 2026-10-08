import ChartPartitionJoined

set_option autoImplicit false
namespace Mub6.Numerical.CircleCharts.Partition.Adaptive
open Mub6 Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.GraphKernel

/-- Typed tree export has no byte-sized target-index restriction. Every literal
node is checked against the same physical arc tables and complete chart cover. -/
theorem covered_of_treeJoined {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    (tree : Tree n) (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkTreeJoined tab R targets signs state tree = true) :
    CoveredState tab E T R targets signs state := by
  intro H hH t ht hz
  exact checkTreeFast_sound tab E targets hi hc tree signs hH hz state
    (by rwa [checkTreeJoined_eq] at hcheck) ht

#print axioms covered_of_treeJoined
end Mub6.Numerical.CircleCharts.Partition.Adaptive

#print axioms Mub6.Numerical.CircleCharts.Partition.Adaptive.covered_of_treeJoined
