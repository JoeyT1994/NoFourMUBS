import KarlssonLiftedPhases
import KarlssonManifestDecoder
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.KarlssonLifted
noncomputable section
set_option maxHeartbeats 2000000

inductive Shape where
  | raw (label : ReducedLabel)
  | seam (label : SeamLabel)
  | lifted (negative : Bool)

abbrev Shape.dimension : Shape → ℕ
  | .raw _ => 3
  | .seam _ => 2
  | .lifted _ => 6

def Shape.matrix : (s : Shape) → (Fin s.dimension → ℝ) → Mat6
  | .raw label, x => reducedMatrix label x
  | .seam label, x => seamMatrix label x
  | .lifted b, x => liftedMatrix b (x 0) (x 1) ![x 2,x 3,x 4,x 5]

def Shape.guard : (s : Shape) → (Fin s.dimension → ℝ) → Prop
  | .raw label, x => 0 < x 0 ∧ x 0 < 1 ∧ reducedGuard label x
  | .seam _, _ => True
  | .lifted _, x => 0 < x 0 ∧ x 0 < 1

structure Job where
  shape : Shape
  bounds : Fin shape.dimension → Interval

def Contains (j : Job) (x : Fin j.shape.dimension → ℝ) : Prop :=
  ∀ i, Mem (j.bounds i) (x i)

/-- A job is live only if its actual matrix occurs in a physical quartet.
The raw chart guards and open core domain are part of the predicate. -/
def Live (j : Job) : Prop :=
  ∃ x, Contains j x ∧ j.shape.guard x ∧
    OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹
      (ClassificationCover.toNumerical (j.shape.matrix x)))

def left (j : Job) (axis : Fin j.shape.dimension) (cut : ℚ) : Job :=
  ⟨j.shape,Function.update j.bounds axis ⟨(j.bounds axis).lo,cut⟩⟩
def right (j : Job) (axis : Fin j.shape.dimension) (cut : ℚ) : Job :=
  ⟨j.shape,Function.update j.bounds axis ⟨cut,(j.bounds axis).hi⟩⟩

/-- Closed children overlap at the cut. Equality is never discarded.
Coverage even holds for an unhelpfully chosen rational cut. -/
theorem split_covers (j : Job) (axis : Fin j.shape.dimension) (cut : ℚ) :
    Live j → Live (left j axis cut) ∨ Live (right j axis cut) := by
  rintro ⟨x,hx,hg,hH⟩
  rcases le_total (x axis) (cut : ℝ) with hl | hr
  · left
    refine ⟨x,?_,hg,hH⟩
    intro i
    by_cases hi : i=axis
    · subst i
      exact ⟨by simpa [left,Function.update] using (hx axis).1, by simpa [left,Function.update] using hl⟩
    · change Mem (Function.update j.bounds axis _ i) (x i)
      rw [Function.update_of_ne hi]
      exact hx i
  · right
    refine ⟨x,?_,hg,hH⟩
    intro i
    by_cases hi : i=axis
    · subst i
      exact ⟨by simpa [right,Function.update] using hr, by simpa [right,Function.update] using (hx axis).2⟩
    · change Mem (Function.update j.bounds axis _ i) (x i)
      rw [Function.update_of_ne hi]
      exact hx i

def ofRaw (d : RawDescriptor) : Job :=
  ⟨.raw d.1,![asInterval d.2.1,asInterval d.2.2.1,asInterval d.2.2.2]⟩
def ofSeam (d : SeamDescriptor) : Job :=
  ⟨.seam d.1,![asInterval d.2.1,asInterval d.2.2]⟩
def roots : List Job := Manifest0.emittedRaw.map ofRaw ++ Manifest0.emittedSeam.map ofSeam

theorem root_count : roots.length=26 := by decide +kernel

theorem roots_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ j ∈ roots, Live j := by
  have hp : IsHadamard (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) := by
    rcases hH with ⟨B,hB,a,b,hab,rfl⟩
    exact ClassificationCover.public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  rcases reduced_finite_three_parameter_cover 0 hp h₂ with hr | hs
  · obtain ⟨label,cell,x,h0,h1,hc,hg,he⟩ := hr
    refine ⟨ofRaw (rawDescriptor label cell),?_,x,?_,⟨h0,h1,hg⟩,?_⟩
    · exact List.mem_append.mpr (Or.inl (List.mem_map.mpr
        ⟨_,Manifest0.emitted_raw_complete label cell,rfl⟩))
    · intro i
      fin_cases i <;> exact hc _
    · exact ClassificationCover.normalized_public_representative_occurs hH he
  · obtain ⟨label,cell,x,hc,he⟩ := hs
    refine ⟨ofSeam (seamDescriptor label cell),?_,x,?_,True.intro,?_⟩
    · exact List.mem_append.mpr (Or.inr (List.mem_map.mpr
        ⟨_,Manifest0.emitted_seam_complete label cell,rfl⟩))
    · intro i
      fin_cases i <;> exact hc _
    · exact ClassificationCover.normalized_public_representative_occurs hH he

/-- Every discarded leaf carries an actual proof of physical exclusion.
Recharting also requires coverage in the same physical quartet problem. -/
inductive Tree : Job → Type where
  | pending (j : Job) : Tree j
  | terminal (j : Job) (proof : ¬ Live j) : Tree j
  | split (j : Job) (axis : Fin j.shape.dimension) (cut : ℚ)
      (l : Tree (left j axis cut)) (r : Tree (right j axis cut)) : Tree j
  | rechart (j k : Job) (cover : Live j → Live k) (child : Tree k) : Tree j

def Tree.frontier : {j : Job} → Tree j → List Job
  | _, .pending j => [j]
  | _, .terminal _ _ => []
  | _, .split _ _ _ l r => l.frontier ++ r.frontier
  | _, .rechart _ _ _ t => t.frontier

theorem Tree.live_in_frontier {j : Job} (tree : Tree j) :
    Live j → ∃ k ∈ tree.frontier, Live k := by
  induction tree with
  | pending j => exact fun h => ⟨j,by simp [Tree.frontier],h⟩
  | terminal j h => exact fun h' => False.elim (h h')
  | split j axis cut l r ihl ihr =>
    intro h
    rcases split_covers j axis cut h with hl | hr
    · obtain ⟨k,hk,hLive⟩ := ihl hl
      exact ⟨k,List.mem_append.mpr (Or.inl hk),hLive⟩
    · obtain ⟨k,hk,hLive⟩ := ihr hr
      exact ⟨k,List.mem_append.mpr (Or.inr hk),hLive⟩
  | rechart j k cover t ih => exact fun h => ih (cover h)

theorem Tree.closed {j : Job} (tree : Tree j) (h : tree.frontier=[]) : ¬ Live j := by
  intro hj
  obtain ⟨k,hk,_⟩ := tree.live_in_frontier hj
  simpa [h] using hk

/-- Root indexing prevents a serialization from omitting a classification root. -/
abbrev Forest := (j : Job) → j ∈ roots → Tree j

theorem forest_closure (forest : Forest)
    (closed : ∀ j (hj : j ∈ roots), (forest j hj).frontier=[])
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) : False := by
  obtain ⟨j,hj,hLive⟩ := roots_cover hH h₂
  exact (forest j hj).closed (closed j hj) hLive

def initialForest : Forest := fun j _ => Tree.pending j

/-- The initial ledger is explicitly unresolved, not a closure certificate. -/
theorem initial_unresolved (j : Job) (hj : j ∈ roots) :
    (initialForest j hj).frontier=[j] := rfl

#print axioms split_covers
#print axioms root_count
#print axioms roots_cover
#print axioms Tree.live_in_frontier
#print axioms Tree.closed
#print axioms forest_closure
#print axioms initial_unresolved
end
end Mub6.Classification.KarlssonLedger
