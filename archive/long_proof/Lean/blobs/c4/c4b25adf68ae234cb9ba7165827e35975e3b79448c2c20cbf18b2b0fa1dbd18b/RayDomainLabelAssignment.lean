import PhysicalLabelGraph

/-! Label assignment for an explicit ray domain. Unlike a common-ray cover
for an exact carrier, this accepts any stated domain, including a relaxed
Fourier amplitude band. The covering hypothesis is always displayed. -/
noncomputable section
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel

namespace Seed0024ClusterTube20261007
variable {V : Type} [Fintype V] [DecidableEq V]

theorem domain_family_label_assignment
    {P : Vector → Prop} {L : V → Vector → Prop} {O U : Graph V}
    (hunit : ∀ z,P z → IsRawUnitRay z)
    (hcover : ∀ z,P z → ∃v,L v z) (hO : ∀v,O v v=false)
    (hgraph : SoundLabelGraph L O U) {k : ℕ} {z : Fin k → Vector}
    (hz : ∀i,P (z i)) (ho : ∀i j,i≠j → Mub6.Numerical.rawOverlap (z i) (z j)=0) :
    ∃a : Fin k → V,(∀i,L (a i) (z i)) ∧ Function.Injective a ∧
      ∀i j,i≠j → O (a i) (a j)=true := by
  classical
  choose a ha using fun i => hcover (z i) (hz i)
  have hedge : ∀i j,i≠j → O (a i) (a j)=true := by
    intro i j hij
    exact hgraph.orthogonal (a i) (a j) (z i) (z j)
      (hunit _ (hz i)) (hunit _ (hz j)) (ha i) (ha j) (ho i j hij)
  refine ⟨a,ha,?_,hedge⟩
  intro i j he
  by_contra hij
  have h := hedge i j hij
  rw [he,hO] at h
  contradiction

theorem domain_pair_has_graph_pair
    {P : Vector → Prop} {L : V → Vector → Prop} {O U : Graph V}
    (hunit : ∀ z,P z → IsRawUnitRay z)
    (hcover : ∀ z,P z → ∃v,L v z) (hO : ∀v,O v v=false) (hU : ∀v,U v v=false)
    (hgraph : SoundLabelGraph L O U) {k l : ℕ}
    {z : Fin k → Vector} {w : Fin l → Vector}
    (hz : ∀i,P (z i)) (hw : ∀j,P (w j))
    (hzo : ∀i j,i≠j → Mub6.Numerical.rawOverlap (z i) (z j)=0)
    (hwo : ∀i j,i≠j → Mub6.Numerical.rawOverlap (w i) (w j)=0)
    (hzw : ∀i j,Complex.normSq (Mub6.Numerical.rawOverlap (z i) (w j))=6) :
    HasPairSized O U Finset.univ Finset.univ k l := by
  classical
  obtain ⟨a,ha,hainj,haedge⟩ := domain_family_label_assignment hunit hcover hO hgraph hz hzo
  obtain ⟨b,hb,hbinj,hbedge⟩ := domain_family_label_assignment hunit hcover hO hgraph hw hwo
  refine ⟨Finset.univ.image a,Finset.univ.image b,
    assignment_clique a hainj haedge,assignment_clique b hbinj hbedge,?_,?_⟩
  · apply Finset.disjoint_left.mpr
    intro v hv hw'
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,he⟩ := Finset.mem_image.mp hw'
    have hedge := hgraph.unbiased (a i) (b j) (z i) (w j)
      (hunit _ (hz i)) (hunit _ (hw j)) (ha i) (hb j) (hzw i j)
    rw [he,hU] at hedge
    contradiction
  · intro v hv u hu
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,rfl⟩ := Finset.mem_image.mp hu
    exact hgraph.unbiased (a i) (b j) (z i) (w j)
      (hunit _ (hz i)) (hunit _ (hw j)) (ha i) (hb j) (hzw i j)

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.domain_family_label_assignment
#print axioms Seed0024ClusterTube20261007.domain_pair_has_graph_pair
