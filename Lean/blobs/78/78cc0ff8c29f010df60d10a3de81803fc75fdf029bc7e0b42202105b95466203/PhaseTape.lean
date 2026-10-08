import PhaseForest

/- The supplier's one-byte preorder forest, checked directly against a pending
list of literal cells. No decoded Tree or trusted structural parser is needed.
Leaf arithmetic soundness and full initial root coverage remain explicit. -/
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeCover20261007

def childList (s : Cell) : List Cell := List.ofFn (childCell s)

theorem child_mem_childList (s : Cell) (m : Mask) : childCell s m ∈ childList s := by
  change childCell s m ∈ List.ofFn (childCell s)
  exact List.mem_ofFn.mpr ⟨m,rfl⟩

theorem childList_length (s : Cell) : (childList s).length=32 := by
  simp [childList]

def checkTape (checks : LeafChecks 48) : List Cell → List UInt8 → Bool
  | [],[] => true
  | _::_,[] => false
  | [],_::_ => false
  | s::pending,tag::tags =>
      if h : tag.toNat<6 then
        validCheck s && checks.reject s ⟨tag.toNat,h⟩ && checkTape checks pending tags
      else if h : tag.toNat<54 then
        validCheck s && checks.accept s ⟨tag.toNat-6,by omega⟩ &&
          checkTape checks pending tags
      else if tag.toNat=54 then
        validCheck s && decide (s.level<7) &&
          checkTape checks (childList s++pending) tags
      else false

def PendingCovered (Feasible : Turns → Prop) (LabelMem : Fin 48 → Turns → Prop)
    (pending : List Cell) : Prop :=
  ∀s∈pending,CoveredCell Feasible LabelMem s

theorem pendingCovered_cons {Feasible : Turns → Prop}
    {LabelMem : Fin 48 → Turns → Prop} (s : Cell) (pending : List Cell)
    (hs : CoveredCell Feasible LabelMem s)
    (hp : PendingCovered Feasible LabelMem pending) :
    PendingCovered Feasible LabelMem (s::pending) := by
  intro t ht
  rcases List.mem_cons.mp ht with h|h
  · subst t; exact hs
  · exact hp t h

theorem pendingCovered_unsplit {Feasible : Turns → Prop}
    {LabelMem : Fin 48 → Turns → Prop} (s : Cell) (pending : List Cell)
    (hc : PendingCovered Feasible LabelMem (childList s++pending)) :
    PendingCovered Feasible LabelMem (s::pending) := by
  apply pendingCovered_cons
  · apply coveredCell_split
    intro m
    exact hc (childCell s m) (List.mem_append_left _ (child_mem_childList s m))
  · intro t ht
    exact hc t (List.mem_append_right _ ht)

theorem checkTape_sound (checks : LeafChecks 48)
    (Feasible : Turns → Prop) (LabelMem : Fin 48 → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem) (tags : List UInt8) :
    ∀pending,checkTape checks pending tags=true →
      PendingCovered Feasible LabelMem pending := by
  induction tags with
  | nil =>
      intro pending hc
      cases pending with
      | nil => intro s hs; simp at hs
      | cons s pending => simp [checkTape] at hc
  | cons tag tags ih =>
      intro pending hc
      cases pending with
      | nil => simp [checkTape] at hc
      | cons s pending =>
          by_cases h6 : tag.toNat<6
          · have hh : (Valid s ∧ checks.reject s ⟨tag.toNat,h6⟩=true) ∧
                checkTape checks pending tags=true := by
              simpa only [checkTape,dif_pos h6,validCheck,Bool.and_eq_true,
                decide_eq_true_eq] using hc
            apply pendingCovered_cons s pending ?_ (ih pending hh.2)
            intro theta ht hf
            exact False.elim (hsound.rejection s ⟨tag.toNat,h6⟩ theta hh.1.1 ht hh.1.2 hf)
          · by_cases h54 : tag.toNat<54
            · have hh : (Valid s ∧ checks.accept s ⟨tag.toNat-6,by omega⟩=true) ∧
                  checkTape checks pending tags=true := by
                simpa only [checkTape,dif_neg h6,dif_pos h54,validCheck,
                  Bool.and_eq_true,decide_eq_true_eq] using hc
              apply pendingCovered_cons s pending ?_ (ih pending hh.2)
              intro theta ht hf
              exact ⟨⟨tag.toNat-6,by omega⟩,
                hsound.inclusion s ⟨tag.toNat-6,by omega⟩ theta hh.1.1 ht hh.1.2⟩
            · by_cases heq : tag.toNat=54
              · have hh : (Valid s ∧ s.level<7) ∧
                    checkTape checks (childList s++pending) tags=true := by
                  simpa only [checkTape,dif_neg h6,dif_neg h54,if_pos heq,validCheck,
                    Bool.and_eq_true,decide_eq_true_eq] using hc
                exact pendingCovered_unsplit s pending (ih _ hh.2)
              · simp only [checkTape,dif_neg h6,dif_neg h54,if_neg heq,
                  Bool.false_eq_true] at hc

/-- Each actual root must occur in a checked shard's initial pending list. -/
theorem checked_tapes_cover_unit_cube {S : Type*} (checks : LeafChecks 48)
    (Feasible : Turns → Prop) (LabelMem : Fin 48 → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem)
    (pending : S → List Cell) (tags : S → List UInt8)
    (hchecks : ∀s,checkTape checks (pending s) (tags s)=true)
    (hroots : ∀r : RootIndex,∃s,rootCell r ∈ pending s) :
    ∀theta,UnitCube theta → Feasible theta → ∃k,LabelMem k theta := by
  apply all_root_cells_sound
  intro r
  obtain ⟨s,hr⟩ := hroots r
  exact checkTape_sound checks Feasible LabelMem hsound (tags s) (pending s)
    (hchecks s) (rootCell r) hr

theorem empty_tape_nonempty_pending_fails (checks : LeafChecks 48)
    (s : Cell) (pending : List Cell) : checkTape checks (s::pending) []=false := rfl

theorem nonempty_tape_empty_pending_fails (checks : LeafChecks 48)
    (tag : UInt8) (tags : List UInt8) : checkTape checks [] (tag::tags)=false := rfl

theorem invalid_tag_fails (checks : LeafChecks 48) (s : Cell) (pending : List Cell)
    (tag : UInt8) (tags : List UInt8) (htag : 55≤tag.toNat) :
    checkTape checks (s::pending) (tag::tags)=false := by
  have h6 : ¬tag.toNat<6 := by omega
  have h54 : ¬tag.toNat<54 := by omega
  have heq : ¬tag.toNat=54 := by omega
  simp [checkTape,h6,h54,heq]

end Seed0024ClusterTubeCover20261007

#print axioms Seed0024ClusterTubeCover20261007.child_mem_childList
#print axioms Seed0024ClusterTubeCover20261007.childList_length
#print axioms Seed0024ClusterTubeCover20261007.pendingCovered_cons
#print axioms Seed0024ClusterTubeCover20261007.pendingCovered_unsplit
#print axioms Seed0024ClusterTubeCover20261007.checkTape_sound
#print axioms Seed0024ClusterTubeCover20261007.checked_tapes_cover_unit_cube
#print axioms Seed0024ClusterTubeCover20261007.empty_tape_nonempty_pending_fails
#print axioms Seed0024ClusterTubeCover20261007.nonempty_tape_empty_pending_fails
#print axioms Seed0024ClusterTubeCover20261007.invalid_tag_fails
