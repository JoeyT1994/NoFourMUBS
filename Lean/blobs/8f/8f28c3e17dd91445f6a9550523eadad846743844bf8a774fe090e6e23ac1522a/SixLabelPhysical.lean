import SixPhysical

/-! Membership-sensitive six-vector consumption. In particular a capacity
proof about a phase label applies to that label's membership predicate, not
automatically to its larger Cartesian bounding rectangle. The actual H stays
fixed, so correlated matrix/parameter covers can use this interface. -/
set_option autoImplicit false
set_option maxHeartbeats 800000

namespace Mub6.Numerical.GraphKernel
open Mub6
noncomputable section
variable {V : Type} [Fintype V] [DecidableEq V]

structure PhysicalRayLabels (H : BasisMatrix) (member : V → Vector → Prop)
    (O U : Graph V) : Prop where
  complete : ∀ z, IsRawCommonRay H z → ∃ v, member v z
  capacity : ∀ v z w, IsRawUnitRay z → IsRawUnitRay w →
    member v z → member v w →
    rawOverlap z w ≠ 0 ∧ Complex.normSq (rawOverlap z w) ≠ 6
  orthogonal : ∀ i j z w, IsRawUnitRay z → IsRawUnitRay w →
    member i z → member j w → rawOverlap z w = 0 → O i j = true
  unbiased : ∀ i j z w, IsRawUnitRay z → IsRawUnitRay w →
    member i z → member j w →
    Complex.normSq (rawOverlap z w) = 6 → U i j = true

theorem physicalRayLabels_of_boxes {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U) :
    PhysicalRayLabels H (fun v z => MemRawRayBox (boxes v) z) O U := by
  refine ⟨hcover,?_,hgraph.orthogonal,hgraph.unbiased⟩
  intro v z w hz hw hm hn
  exact same_ray_box_separation hz hw (hsmall v) hm hn

theorem labelled_frame_assignment {H : BasisMatrix} {member : V → Vector → Prop}
    {O U : Graph V} (labels : PhysicalRayLabels H member O U)
    {k : ℕ} {z : Fin k → Vector} (hz : IsRawFrame H z) :
    ∃ a : Fin k → V, (∀ i, member (a i) (z i)) ∧
      Function.Injective a ∧ (∀ i j, i ≠ j → O (a i) (a j) = true) := by
  classical
  choose a ha using fun i => labels.complete (z i) (hz.1 i)
  refine ⟨a,ha,?_,?_⟩
  · intro i j he
    by_contra hne
    have hj : member (a i) (z j) := he.symm ▸ ha j
    exact (labels.capacity (a i) (z i) (z j) (hz.1 i).1 (hz.1 j).1
      (ha i) hj).1 (hz.2 i j hne)
  · intro i j hne
    exact labels.orthogonal (a i) (a j) (z i) (z j) (hz.1 i).1 (hz.1 j).1
      (ha i) (ha j) (hz.2 i j hne)

theorem labelled_six_pair_has_graph_pair {H : BasisMatrix}
    {member : V → Vector → Prop} {O U : Graph V}
    (labels : PhysicalRayLabels H member O U)
    {z w : Fin 6 → Vector} (hpair : IsRawSixPair H z w) :
    HasPair6 O U Finset.univ Finset.univ 6 := by
  classical
  obtain ⟨a,ha,hainj,haedge⟩ := labelled_frame_assignment labels hpair.1
  obtain ⟨b,hb,hbinj,hbedge⟩ := labelled_frame_assignment labels hpair.2.1
  refine ⟨Finset.univ.image a,Finset.univ.image b,
    assignment_clique a hainj haedge,assignment_clique b hbinj hbedge,?_,?_⟩
  · apply Finset.disjoint_left.mpr
    intro v hv hw
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,he⟩ := Finset.mem_image.mp hw
    have hj : member (a i) (w j) := he ▸ hb j
    exact (labels.capacity (a i) (z i) (w j) (hpair.1.1 i).1
      (hpair.2.1.1 j).1 (ha i) hj).2 (hpair.2.2 i j)
  · intro v hv u hu
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,rfl⟩ := Finset.mem_image.mp hu
    exact labels.unbiased (a i) (b j) (z i) (w j) (hpair.1.1 i).1
      (hpair.2.1.1 j).1 (ha i) (hb j) (hpair.2.2 i j)

theorem checked_labels6_excludes_raw_six_pair {H : BasisMatrix}
    {member : V → Vector → Prop} {O U : Graph V}
    (labels : PhysicalRayLabels H member O U) (cert : PairCertificate V)
    (checked : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ ∃ z w : Fin 6 → Vector, IsRawSixPair H z w := by
  rintro ⟨z,w,hpair⟩
  exact checkPair6_sound O U Finset.univ Finset.univ 6 cert checked
    (labelled_six_pair_has_graph_pair labels hpair)

/-- Phase-label membership and its capacity may be supplied without weakening
either predicate to a Cartesian box. All six columns reach the physical
quartet endpoint through the checked dephasing and normalization bridge. -/
theorem checked_labels6_excludes_occurs {H : BasisMatrix}
    {member : V → Vector → Prop} {O U : Graph V}
    (hrow : ∀ j, H 0 j = 1) (labels : PhysicalRayLabels H member O U)
    (cert : PairCertificate V)
    (checked : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  intro ho
  exact checked_labels6_excludes_raw_six_pair labels cert checked
    (raw_six_pair_of_occurs hrow ho)

#print axioms physicalRayLabels_of_boxes
#print axioms labelled_frame_assignment
#print axioms labelled_six_pair_has_graph_pair
#print axioms checked_labels6_excludes_raw_six_pair
#print axioms checked_labels6_excludes_occurs
#print checked_labels6_excludes_occurs
end
end Mub6.Numerical.GraphKernel
