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

end Superlevel

end Step2.TopologyCore
