import Mathlib.Topology.Order.Compact
import Mathlib.Topology.Maps.Proper.Basic
import Mathlib.Topology.Instances.Real.Lemmas

/-!
# Abstract topology for the Step 2 coverage reduction

This file proves topological implications only.  It does not assume or prove
an order-six reconstruction theorem.  In particular, the closed relation below
must still be supplied with nonempty fibres and a unique quotient value.

The superlevel argument uses compactness and a continuous real function.  It
does not require locally connected parameter spaces or connected components.
-/

open Set Topology Filter

namespace Step2.TopologyCore

section ClosedRelation

variable {P D Q : Type*}
variable [TopologicalSpace P] [TopologicalSpace D] [TopologicalSpace Q]
variable [CompactSpace D]

/-- A closed relation with a compact matrix factor and a unique quotient value
defines a continuous map.  `hvalue` identifies every related point with the
specified value, so no continuity of a choice of representatives is assumed. -/
theorem continuous_of_closed_relation_compact
    (M : P → D → Prop)
    (hM : IsClosed {z : P × D | M z.1 z.2})
    (q : D → Q) (hq : Continuous q)
    (f : P → Q)
    (hex : ∀ p, ∃ d, M p d)
    (hvalue : ∀ p d, M p d → q d = f p) :
    Continuous f := by
  rw [continuous_iff_isClosed]
  intro F hF
  have heq : f ⁻¹' F =
      Prod.fst '' ({z : P × D | M z.1 z.2} ∩ (q ∘ Prod.snd) ⁻¹' F) := by
    ext p
    constructor
    · intro hp
      obtain ⟨d, hd⟩ := hex p
      refine ⟨(p, d), ⟨hd, ?_⟩, rfl⟩
      change q d ∈ F
      rw [hvalue p d hd]
      exact hp
    · rintro ⟨z, ⟨hz, hqz⟩, he⟩
      change q z.2 ∈ F at hqz
      change f p ∈ F
      rw [hvalue z.1 z.2 hz] at hqz
      simpa only [he] using hqz
  rw [heq]
  exact isClosedMap_fst_of_compactSpace _
    (hM.inter (hF.preimage (hq.comp continuous_snd)))

/-- The quotient value obtained by an arbitrary representative choice in a
nonempty relation fibre. -/
noncomputable def relationValue
    (M : P → D → Prop) (hex : ∀ p, ∃ d, M p d) (q : D → Q) : P → Q :=
  fun p => q (Classical.choose (hex p))

/-- Fibre uniqueness is only required after applying the quotient map. -/
theorem continuous_relationValue
    (M : P → D → Prop)
    (hM : IsClosed {z : P × D | M z.1 z.2})
    (q : D → Q) (hq : Continuous q)
    (hex : ∀ p, ∃ d, M p d)
    (hunique : ∀ p d₁ d₂, M p d₁ → M p d₂ → q d₁ = q d₂) :
    Continuous (relationValue M hex q) := by
  apply continuous_of_closed_relation_compact M hM q hq _ hex
  intro p d hd
  exact hunique p d (Classical.choose (hex p)) hd (Classical.choose_spec (hex p))

end ClosedRelation

section Superlevel

variable {P : Type*} [TopologicalSpace P] [CompactSpace P]

/-- A nonempty clopen part of a positive superlevel set contains a positive
ambient local maximum: maximize on the compact closure of its open image.
This is the argument of `PROOF.md` Lemma 1.1. -/
theorem exists_localMax_mem_of_isClopen
    (R : P → ℝ) (hR : Continuous R)
    (V : Set {p : P // 0 < R p}) (hV : IsClopen V) (hne : V.Nonempty) :
    ∃ (p : P) (hp : 0 < R p), IsLocalMax R p ∧ (⟨p, hp⟩ : {p : P // 0 < R p}) ∈ V := by
  obtain ⟨s, hs⟩ := hne
  let A : Set P := Subtype.val '' V
  have hSopen : IsOpen {p : P | 0 < R p} := isOpen_lt continuous_const hR
  have hAopen : IsOpen A := hSopen.isOpenMap_subtype_val V hV.isOpen
  have hsA : (s : P) ∈ A := ⟨s, hs, rfl⟩
  obtain ⟨b, hb, hbmax⟩ :=
    (isClosed_closure : IsClosed (closure A)).isCompact.exists_isMaxOn
      ⟨(s : P), subset_closure hsA⟩ hR.continuousOn
  have hbpos : 0 < R b := lt_of_lt_of_le s.property (hbmax (subset_closure hsA))
  have hbV : (⟨b, hbpos⟩ : {p : P // 0 < R p}) ∈ V :=
    (Topology.IsInducing.subtypeVal.isClosed_iff'.mp hV.isClosed) ⟨b, hbpos⟩ hb
  have hbA : b ∈ A := ⟨⟨b, hbpos⟩, hbV, rfl⟩
  exact ⟨b, hbpos, hbmax.isLocalMax (mem_of_superset (hAopen.mem_nhds hbA) subset_closure), hbV⟩

/-- A clopen part of a positive superlevel set which contains every positive
ambient local maximum must be the whole superlevel set: otherwise its
complement, also clopen, would contain one. -/
theorem superlevel_clopen_eq_univ
    (R : P → ℝ) (hR : Continuous R)
    (U : Set {p : P // 0 < R p}) (hU : IsClopen U)
    (hmax : ∀ (p : P) (hp : 0 < R p),
      IsLocalMax R p → (⟨p, hp⟩ : {p : P // 0 < R p}) ∈ U) :
    U = Set.univ := by
  apply Set.eq_univ_of_forall
  intro s
  by_contra hs
  obtain ⟨b, hbpos, hbLocal, hbB⟩ := exists_localMax_mem_of_isClopen R hR Uᶜ hU.compl ⟨s, hs⟩
  exact hbB (hmax b hbpos hbLocal)

/-- Continuous quotient images are covered by a clopen region once every
positive local maximum is covered. -/
theorem superlevel_image_mem_of_localMax_anchors
    {Q : Type*} [TopologicalSpace Q]
    (R : P → ℝ) (hR : Continuous R)
    (f : {p : P // 0 < R p} → Q) (hf : Continuous f)
    (W : Set Q) (hW : IsClopen W)
    (hanchor : ∀ (p : P) (hp : 0 < R p),
      IsLocalMax R p → f ⟨p, hp⟩ ∈ W) :
    ∀ s, f s ∈ W := by
  have hfull : f ⁻¹' W = Set.univ :=
    superlevel_clopen_eq_univ R hR (f ⁻¹' W) (hW.preimage hf) hanchor
  intro s
  change s ∈ f ⁻¹' W
  rw [hfull]
  trivial

/-- A finite or otherwise explicit maximum census can be kept separate from
the topological propagation theorem.  Finiteness itself is not needed here. -/
theorem superlevel_image_mem_of_anchor_set
    {Q : Type*} [TopologicalSpace Q]
    (R : P → ℝ) (hR : Continuous R)
    (f : {p : P // 0 < R p} → Q) (hf : Continuous f)
    (W : Set Q) (hW : IsClopen W)
    (anchors : Set {p : P // 0 < R p})
    (hcensus : ∀ (p : P) (hp : 0 < R p),
      IsLocalMax R p → (⟨p, hp⟩ : {p : P // 0 < R p}) ∈ anchors)
    (hanchors : ∀ s ∈ anchors, f s ∈ W) :
    ∀ s, f s ∈ W := by
  apply superlevel_image_mem_of_localMax_anchors R hR f hf W hW
  intro p hp hm
  exact hanchors ⟨p, hp⟩ (hcensus p hp hm)

end Superlevel

section ClosurePropagation

variable {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]

/-- Coverage of a parameter subset propagates to its closure under a
continuous map when the target covered region is closed. -/
theorem image_closure_subset_of_isClosed
    (f : P → Q) (hf : Continuous f)
    (T : Set P) (W : Set Q) (hW : IsClosed W)
    (hcover : ∀ p ∈ T, f p ∈ W) :
    ∀ p ∈ closure T, f p ∈ W := by
  have hsub : T ⊆ f ⁻¹' W := hcover
  exact closure_minimal hsub (hW.preimage hf)

/-- Dense parameter coverage suffices for a closed target region. -/
theorem image_subset_of_dense_of_isClosed
    (f : P → Q) (hf : Continuous f)
    (T : Set P) (hT : Dense T)
    (W : Set Q) (hW : IsClosed W)
    (hcover : ∀ p ∈ T, f p ∈ W) :
    ∀ p, f p ∈ W := by
  intro p
  apply image_closure_subset_of_isClosed f hf T W hW hcover p
  rw [hT.closure_eq]
  trivial

end ClosurePropagation

end Step2.TopologyCore
