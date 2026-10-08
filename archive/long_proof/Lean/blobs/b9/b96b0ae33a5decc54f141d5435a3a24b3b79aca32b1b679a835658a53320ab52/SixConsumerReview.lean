import SixLabelPhysical

set_option autoImplicit false
namespace GlobalCornerBridgeIndependentReview
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel

/-- Independent type audit: the extraction uses all six columns of both
remaining bases and only literal first-row normalization of the carrier. -/
theorem reviewed_six_extraction {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1)
    (ho : OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H)) :
    ∃ z w : Fin 6 → Vector, IsRawSixPair H z w :=
  raw_six_pair_of_occurs hrow ho

/-- No injectivity of the labeling is assumed by the physical consumer.
Its exact capacity and soundness duties are fields of PhysicalRayLabels. -/
theorem reviewed_label_endpoint {V : Type} [Fintype V] [DecidableEq V]
    {H : BasisMatrix} {member : V → Vector → Prop} {O U : Graph V}
    (hrow : ∀ j, H 0 j = 1) (labels : PhysicalRayLabels H member O U)
    (cert : PairCertificate V)
    (checked : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  checked_labels6_excludes_occurs hrow labels cert checked

theorem reviewed_pair_checker {V : Type} [Fintype V] [DecidableEq V]
    (O U : Graph V) (cert : PairCertificate V)
    (checked : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ HasPair6 O U Finset.univ Finset.univ 6 :=
  checkPair6_sound O U Finset.univ Finset.univ 6 cert checked

/-- Both collision exclusions are attached to precisely the same membership
predicate used by completeness and graph soundness. -/
theorem reviewed_same_member_capacity {V : Type} [Fintype V] [DecidableEq V]
    {H : BasisMatrix} {member : V → Vector → Prop} {O U : Graph V}
    (labels : PhysicalRayLabels H member O U) (v : V) (z w : Vector)
    (hz : IsRawUnitRay z) (hw : IsRawUnitRay w)
    (hm : member v z) (hn : member v w) :
    rawOverlap z w ≠ 0 ∧ Complex.normSq (rawOverlap z w) ≠ 6 :=
  labels.capacity v z w hz hw hm hn

#print axioms reviewed_six_extraction
#print axioms reviewed_label_endpoint
#print axioms reviewed_pair_checker
#print axioms reviewed_same_member_capacity
#print axioms Mub6.Numerical.GraphKernel.labelled_frame_assignment
#print axioms Mub6.Numerical.GraphKernel.labelled_six_pair_has_graph_pair
#print axioms Mub6.Numerical.GraphKernel.checked_uniform_pair6_excludes_occurs
end GlobalCornerBridgeIndependentReview
