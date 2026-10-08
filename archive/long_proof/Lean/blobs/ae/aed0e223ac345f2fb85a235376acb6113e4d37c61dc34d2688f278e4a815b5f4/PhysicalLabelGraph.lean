import SizedGraphPair
import PhysicalGraph

/-! Actual normalized six-column bases feed the graph certificate through an
abstract ray-label cover. The cover and both necessary compatibility statements
are explicit hypotheses, not consequences of a catalogue or numerical sample.
Compatibility includes coincident labels, which is needed for label capacity.
-/
set_option autoImplicit false
namespace Mub6.Numerical.GraphKernel

variable {V : Type} [Fintype V] [DecidableEq V]

def CompleteLabelCover (H : BasisMatrix) (L : V → Vector → Prop) : Prop :=
  ∀ z,IsRawCommonRay H z → ∃v,L v z

structure SoundLabelGraph (L : V → Vector → Prop) (O U : Graph V) : Prop where
  orthogonal : ∀ i j z w,IsRawUnitRay z → IsRawUnitRay w → L i z → L j w →
    rawOverlap z w=0 → O i j=true
  unbiased : ∀ i j z w,IsRawUnitRay z → IsRawUnitRay w → L i z → L j w →
    Complex.normSq (rawOverlap z w)=6 → U i j=true

def IsRawPairSized (H : BasisMatrix) {k l : ℕ}
    (z : Fin k → Vector) (w : Fin l → Vector) : Prop :=
  IsRawFrame H z ∧ IsRawFrame H w ∧
    ∀i j,Complex.normSq (rawOverlap (z i) (w j))=6

abbrev IsRawSixPair (H : BasisMatrix) (z w : Fin 6 → Vector) : Prop :=
  IsRawPairSized H z w

theorem label_frame_assignment {H : BasisMatrix} {L : V → Vector → Prop}
    {O U : Graph V} (hcover : CompleteLabelCover H L)
    (hO : ∀v,O v v=false) (hgraph : SoundLabelGraph L O U)
    {k : ℕ} {z : Fin k → Vector} (hz : IsRawFrame H z) :
    ∃a : Fin k → V,(∀i,L (a i) (z i)) ∧ Function.Injective a ∧
      ∀i j,i≠j → O (a i) (a j)=true := by
  classical
  choose a ha using fun i => hcover (z i) (hz.1 i)
  have hedge : ∀i j,i≠j → O (a i) (a j)=true := by
    intro i j hij
    exact hgraph.orthogonal (a i) (a j) (z i) (z j)
      (hz.1 i).1 (hz.1 j).1 (ha i) (ha j) (hz.2 i j hij)
  refine ⟨a,ha,?_,hedge⟩
  intro i j he
  by_contra hij
  have h := hedge i j hij
  rw [he,hO] at h
  contradiction

theorem label_raw_pair_has_graph_pair {H : BasisMatrix} {L : V → Vector → Prop}
    {O U : Graph V} (hcover : CompleteLabelCover H L)
    (hO : ∀v,O v v=false) (hU : ∀v,U v v=false) (hgraph : SoundLabelGraph L O U)
    {k l : ℕ} {z : Fin k → Vector} {w : Fin l → Vector}
    (hpair : IsRawPairSized H z w) : HasPairSized O U Finset.univ Finset.univ k l := by
  classical
  obtain ⟨a,ha,hainj,haedge⟩ := label_frame_assignment hcover hO hgraph hpair.1
  obtain ⟨b,hb,hbinj,hbedge⟩ := label_frame_assignment hcover hO hgraph hpair.2.1
  refine ⟨Finset.univ.image a,Finset.univ.image b,
    assignment_clique a hainj haedge,assignment_clique b hbinj hbedge,?_,?_⟩
  · apply Finset.disjoint_left.mpr
    intro v hv hw
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,he⟩ := Finset.mem_image.mp hw
    have hedge := hgraph.unbiased (a i) (b j) (z i) (w j)
      (hpair.1.1 i).1 (hpair.2.1.1 j).1 (ha i) (hb j) (hpair.2.2 i j)
    rw [he,hU] at hedge
    contradiction
  · intro v hv u hu
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,rfl⟩ := Finset.mem_image.mp hu
    exact hgraph.unbiased (a i) (b j) (z i) (w j)
      (hpair.1.1 i).1 (hpair.2.1.1 j).1 (ha i) (hb j) (hpair.2.2 i j)

theorem checked_label_pair_excludes_raw_pair {H : BasisMatrix} {L : V → Vector → Prop}
    {O U : Graph V} (hcover : CompleteLabelCover H L)
    (hO : ∀v,O v v=false) (hU : ∀v,U v v=false) (hgraph : SoundLabelGraph L O U)
    (k l : ℕ) (cert : PairCertificate V)
    (hc : checkPairSized O U Finset.univ Finset.univ k l cert=true) :
    ¬∃z : Fin k → Vector,∃w : Fin l → Vector,IsRawPairSized H z w := by
  rintro ⟨z,w,hpair⟩
  exact checkPairSized_sound O U Finset.univ Finset.univ k l cert hc
    (label_raw_pair_has_graph_pair hcover hO hU hgraph hpair)

noncomputable def sixBasisRays (C : BasisMatrix) : Fin 6 → Vector :=
  fun j => dephaseFlatRay (fun r => C r j)

theorem normalized_flat_basis_gives_six_frame {B C : BasisMatrix}
    (hC : IsOrthonormalBasis C)
    (hBflat : ∀j,IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀j,IsNormalizedFlatRay (fun r => C r j)) (hBC : IsUnbiased B C) :
    IsRawFrame (rawCarrierOfFlatBasis B) (sixBasisRays C) := by
  constructor
  · intro j
    exact unbiased_basis_gives_rawCommonRay hBflat hCflat hBC j
  · intro i j hij
    apply dephase_preserves_orthogonality
    change overlap C C i j=0
    rw [hC i j,if_neg hij]

theorem normalized_flat_bases_give_raw_six_pair {B C D : BasisMatrix}
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀j,IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀j,IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀j,IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D) :
    IsRawSixPair (rawCarrierOfFlatBasis B) (sixBasisRays C) (sixBasisRays D) := by
  refine ⟨normalized_flat_basis_gives_six_frame hC hBflat hCflat hBC,
    normalized_flat_basis_gives_six_frame hD hBflat hDflat hBD,?_⟩
  intro i j
  exact dephase_unbiased_normSq (hCflat i) (hDflat j) (hCD i j)

/-- A checked six-plus-six certificate excludes two actual normalized flat
orthonormal bases, conditional only on the displayed ray geometry premises. -/
theorem checked_label_pair_excludes_normalized_flat_bases
    {B C D : BasisMatrix} {L : V → Vector → Prop} {O U : Graph V}
    (hcover : CompleteLabelCover (rawCarrierOfFlatBasis B) L)
    (hO : ∀v,O v v=false) (hU : ∀v,U v v=false) (hgraph : SoundLabelGraph L O U)
    (cert : PairCertificate V)
    (hc : checkPairSized O U Finset.univ Finset.univ 6 6 cert=true)
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀j,IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀j,IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀j,IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D) : False := by
  exact checked_label_pair_excludes_raw_pair hcover hO hU hgraph 6 6 cert hc
    ⟨sixBasisRays C,sixBasisRays D,
      normalized_flat_bases_give_raw_six_pair hC hD hBflat hCflat hDflat hBC hBD hCD⟩

def checkSixLabelPair (O U : Graph V) (cert : PairCertificate V) : Bool :=
  decide (∀v,O v v=false) && decide (∀v,U v v=false) &&
    checkPairSized O U Finset.univ Finset.univ 6 6 cert

theorem checkSixLabelPair_specs {O U : Graph V} {cert : PairCertificate V}
    (hc : checkSixLabelPair O U cert=true) :
    (∀v,O v v=false) ∧ (∀v,U v v=false) ∧
      checkPairSized O U Finset.univ Finset.univ 6 6 cert=true := by
  simpa only [checkSixLabelPair,Bool.and_eq_true,decide_eq_true_eq,and_assoc] using hc

theorem checked_48_label_graph_excludes_raw_six_pair {H : BasisMatrix}
    {L : Fin 48 → Vector → Prop} {O U : Graph (Fin 48)}
    (hcover : CompleteLabelCover H L) (hgraph : SoundLabelGraph L O U)
    (cert : PairCertificate (Fin 48)) (hc : checkSixLabelPair O U cert=true) :
    ¬∃z w : Fin 6 → Vector,IsRawSixPair H z w := by
  obtain ⟨hO,hU,hpair⟩ := checkSixLabelPair_specs hc
  exact checked_label_pair_excludes_raw_pair hcover hO hU hgraph 6 6 cert hpair

#print axioms label_frame_assignment
#print axioms label_raw_pair_has_graph_pair
#print axioms checked_label_pair_excludes_raw_pair
#print axioms normalized_flat_basis_gives_six_frame
#print axioms normalized_flat_bases_give_raw_six_pair
#print axioms checked_label_pair_excludes_normalized_flat_bases
#print axioms checkSixLabelPair_specs
#print axioms checked_48_label_graph_excludes_raw_six_pair
end Mub6.Numerical.GraphKernel
