import SeedPhaseTape

/-! Reviewer candidate: direct semantic induction over the exact typed tape.
No physical analysis, byte-tape transport, or PhaseForest import is used.
The split rule receives every element of the actual full 32-child list.
Both empty/extra cases are inherited from checkWitnessTape unchanged.
This source has not been compiled by its author. -/
set_option autoImplicit false

namespace Seed0024PhaseCore20261007

structure WitnessSemanticRules (P : CellCode → Prop) : Prop where
  midpoint : ∀ (s : CellCode) (k : Column),
    validCheck s = true → midpointReject s k = true → P s
  endpoint : ∀ (s : CellCode) (k : Column) (r : Nat),
    validCheck s = true → endpointReject s k r = true → P s
  inclusion : ∀ (s : CellCode) (label : Label),
    validCheck s = true → labelAccept s label = true → P s
  split : ∀ (s : CellCode),
    validCheck s = true → decide (s.level < 7) = true →
    (∀ t ∈ childList s, P t) → P s

theorem pending_property_cons (P : CellCode → Prop)
    (s : CellCode) (pending : List CellCode)
    (hs : P s) (hp : ∀ t ∈ pending, P t) :
    ∀ t ∈ s :: pending, P t := by
  intro t ht
  rcases List.mem_cons.mp ht with h | h
  · exact h.symm ▸ hs
  · exact hp t h

/-- Successful tapes consume the exact whole pending list and all tags.
Every rejected/accepted cell obeys its corresponding semantic rule;
every split preserves all children in childList, without a dropped suffix. -/
theorem checkWitnessTape_semantic_induction (P : CellCode → Prop)
    (rules : WitnessSemanticRules P)
    (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    ∀ s ∈ pending, P s := by
  induction tags generalizing pending with
  | nil =>
      cases pending with
      | nil => simp
      | cons s pending =>
          simp only [checkWitnessTape, Bool.false_eq_true] at hcheck
  | cons tag tags ih =>
      cases pending with
      | nil =>
          simp only [checkWitnessTape, Bool.false_eq_true] at hcheck
      | cons s pending =>
          cases tag with
          | midpoint k =>
              have hh : (validCheck s = true ∧ midpointReject s k = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              exact pending_property_cons P s pending
                (rules.midpoint s k hh.1.1 hh.1.2) (ih pending hh.2)
          | endpoint k r =>
              have hh : (validCheck s = true ∧ endpointReject s k r = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              exact pending_property_cons P s pending
                (rules.endpoint s k r hh.1.1 hh.1.2) (ih pending hh.2)
          | accept label =>
              have hh : (validCheck s = true ∧ labelAccept s label = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              exact pending_property_cons P s pending
                (rules.inclusion s label hh.1.1 hh.1.2) (ih pending hh.2)
          | split =>
              have hh : (validCheck s = true ∧ decide (s.level < 7) = true) ∧
                  checkWitnessTape (childList s ++ pending) tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              have htail := ih (childList s ++ pending) hh.2
              have hchildren : ∀ t ∈ childList s, P t := by
                intro t ht
                exact htail t (List.mem_append.mpr (Or.inl ht))
              have hrest : ∀ t ∈ pending, P t := by
                intro t ht
                exact htail t (List.mem_append.mpr (Or.inr ht))
              exact pending_property_cons P s pending
                (rules.split s hh.1.1 hh.1.2 hchildren) hrest

#print axioms pending_property_cons
#print axioms checkWitnessTape_semantic_induction

end Seed0024PhaseCore20261007
