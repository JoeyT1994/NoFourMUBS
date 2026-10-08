import EqualAngleCells

/- Additive 32-ary phase-forest kernel. The induction and literal-state binding
follow the inspected PartitionKernel/ChartCoverageAssembly pattern, but the
state and child masks are the supplier's equal-angle grid. Leaf soundness is
an explicit hypothesis. No concrete forest or physical leaf theorem is asserted. -/
set_option autoImplicit false
set_option maxRecDepth 16384

namespace Seed0024ClusterTubeCover20261007

structure LeafChecks (labels : ℕ) where
  reject : Cell → Fin 6 → Bool
  accept : Cell → Fin labels → Bool

structure LeafSound {labels : ℕ} (checks : LeafChecks labels)
    (Feasible : Turns → Prop) (LabelMem : Fin labels → Turns → Prop) : Prop where
  rejection : ∀s j theta,Valid s → MemCell s theta → checks.reject s j=true →
    ¬Feasible theta
  inclusion : ∀s k theta,Valid s → MemCell s theta → checks.accept s k=true →
    LabelMem k theta

inductive Tree (labels : ℕ) where
  | reject (j : Fin 6)
  | accept (k : Fin labels)
  | split (children : Mask → Tree labels)
  | unresolved

def checkTree {labels : ℕ} (checks : LeafChecks labels) : Cell → Tree labels → Bool
  | s,.reject j => validCheck s && checks.reject s j
  | s,.accept k => validCheck s && checks.accept s k
  | s,.split children => validCheck s && decide (s.level<7) &&
      decide (∀m : Mask,checkTree checks (childCell s m) (children m)=true)
  | _,.unresolved => false

def CoveredCell {labels : ℕ} (Feasible : Turns → Prop)
    (LabelMem : Fin labels → Turns → Prop) (s : Cell) : Prop :=
  ∀theta,MemCell s theta → Feasible theta → ∃k,LabelMem k theta

theorem coveredCell_split {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop} (s : Cell)
    (hc : ∀m : Mask,CoveredCell Feasible LabelMem (childCell s m)) :
    CoveredCell Feasible LabelMem s := by
  intro theta ht hf
  obtain ⟨m,hm⟩ := all_children_cover s theta ht
  exact hc m theta hm hf

/-- A separately checked child must be attached to the literal mask transition. -/
theorem coveredCell_split_literal {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop} (s : Cell) (children : Mask → Cell)
    (hbind : ∀m,childCell s m=children m)
    (hc : ∀m,CoveredCell Feasible LabelMem (children m)) :
    CoveredCell Feasible LabelMem s := by
  apply coveredCell_split s
  intro m
  rw [hbind m]
  exact hc m

theorem checkTree_sound {labels : ℕ} (checks : LeafChecks labels)
    (Feasible : Turns → Prop) (LabelMem : Fin labels → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem) (tree : Tree labels) :
    ∀s,checkTree checks s tree=true → CoveredCell Feasible LabelMem s := by
  induction tree with
  | reject j =>
      intro s hcheck theta ht hf
      have hh : Valid s ∧ checks.reject s j=true := by
        simpa only [checkTree,validCheck,Bool.and_eq_true,decide_eq_true_eq] using hcheck
      exact False.elim (hsound.rejection s j theta hh.1 ht hh.2 hf)
  | accept k =>
      intro s hcheck theta ht hf
      have hh : Valid s ∧ checks.accept s k=true := by
        simpa only [checkTree,validCheck,Bool.and_eq_true,decide_eq_true_eq] using hcheck
      exact ⟨k,hsound.inclusion s k theta hh.1 ht hh.2⟩
  | split children ih =>
      intro s hcheck
      have hh : (Valid s ∧ s.level<7) ∧
          ∀m : Mask,checkTree checks (childCell s m) (children m)=true := by
        simpa only [checkTree,validCheck,Bool.and_eq_true,decide_eq_true_eq] using hcheck
      exact coveredCell_split s (fun m => ih m (childCell s m) (hh.2 m))
  | unresolved =>
      intro s hcheck
      simp only [checkTree,Bool.false_eq_true] at hcheck

theorem all_root_cells_sound {labels : ℕ} {Feasible : Turns → Prop}
    {LabelMem : Fin labels → Turns → Prop}
    (hroots : ∀r : RootIndex,CoveredCell Feasible LabelMem (rootCell r)) :
    ∀theta,UnitCube theta → Feasible theta → ∃k,LabelMem k theta := by
  intro theta ht hf
  obtain ⟨r,hr⟩ := all_roots_cover theta ht
  exact hroots r theta hr hf

def checkForest {labels : ℕ} (checks : LeafChecks labels)
    (forest : RootIndex → Tree labels) : Bool :=
  decide (∀r : RootIndex,checkTree checks (rootCell r) (forest r)=true)

/-- The entire 19^5 root family is checked; a retained root catalogue is not assumed. -/
theorem checkForest_sound {labels : ℕ} (checks : LeafChecks labels)
    (Feasible : Turns → Prop) (LabelMem : Fin labels → Turns → Prop)
    (hsound : LeafSound checks Feasible LabelMem) (forest : RootIndex → Tree labels)
    (hc : checkForest checks forest=true) :
    ∀theta,UnitCube theta → Feasible theta → ∃k,LabelMem k theta := by
  have hh : ∀r : RootIndex,checkTree checks (rootCell r) (forest r)=true :=
    of_decide_eq_true hc
  apply all_root_cells_sound
  intro r
  exact checkTree_sound checks Feasible LabelMem hsound (forest r) (rootCell r) (hh r)

def checkShard {labels : ℕ} (checks : LeafChecks labels) (roots : Finset RootIndex)
    (forest : RootIndex → Tree labels) : Bool :=
  decide (∀r ∈ roots,checkTree checks (rootCell r) (forest r)=true)

def checkShardedForest {labels : ℕ} {S : Type*} [Fintype S]
    (checks : LeafChecks labels) (roots : S → Finset RootIndex)
    (forests : S → RootIndex → Tree labels) : Bool :=
  decide (∀r : RootIndex,∃s : S,r ∈ roots s) &&
    decide (∀s : S,checkShard checks (roots s) (forests s)=true)

/-- Every root must belong to a checked shard. Shard counts alone cannot pass this check. -/
theorem checkShardedForest_sound {labels : ℕ} {S : Type*} [Fintype S]
    (checks : LeafChecks labels) (Feasible : Turns → Prop)
    (LabelMem : Fin labels → Turns → Prop) (hsound : LeafSound checks Feasible LabelMem)
    (roots : S → Finset RootIndex) (forests : S → RootIndex → Tree labels)
    (hc : checkShardedForest checks roots forests=true) :
    ∀theta,UnitCube theta → Feasible theta → ∃k,LabelMem k theta := by
  have hh : (∀r : RootIndex,∃s : S,r ∈ roots s) ∧
      ∀s : S,checkShard checks (roots s) (forests s)=true := by
    simpa only [checkShardedForest,Bool.and_eq_true,decide_eq_true_eq] using hc
  apply all_root_cells_sound
  intro r
  obtain ⟨s,hs⟩ := hh.1 r
  have hchecks : ∀r ∈ roots s,checkTree checks (rootCell r) (forests s r)=true :=
    of_decide_eq_true (hh.2 s)
  exact checkTree_sound checks Feasible LabelMem hsound (forests s r) (rootCell r)
    (hchecks r hs)

theorem unresolved_fails {labels : ℕ} (checks : LeafChecks labels) (s : Cell) :
    checkTree checks s .unresolved=false := rfl

theorem final_level_cannot_split {labels : ℕ} (checks : LeafChecks labels) (s : Cell)
    (children : Mask → Tree labels) (hlevel : s.level=7) :
    checkTree checks s (.split children)=false := by
  simp [checkTree,hlevel]

theorem invalid_cell_fails {labels : ℕ} (checks : LeafChecks labels) (s : Cell)
    (tree : Tree labels) (hs : ¬Valid s) : checkTree checks s tree=false := by
  cases tree <;> simp [checkTree,validCheck,hs]

end Seed0024ClusterTubeCover20261007

#print axioms Seed0024ClusterTubeCover20261007.coveredCell_split
#print axioms Seed0024ClusterTubeCover20261007.coveredCell_split_literal
#print axioms Seed0024ClusterTubeCover20261007.checkTree_sound
#print axioms Seed0024ClusterTubeCover20261007.all_root_cells_sound
#print axioms Seed0024ClusterTubeCover20261007.checkForest_sound
#print axioms Seed0024ClusterTubeCover20261007.checkShardedForest_sound
#print axioms Seed0024ClusterTubeCover20261007.unresolved_fails
#print axioms Seed0024ClusterTubeCover20261007.final_level_cannot_split
#print axioms Seed0024ClusterTubeCover20261007.invalid_cell_fails
