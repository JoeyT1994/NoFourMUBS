import CentiradianCover
import Mathlib.Data.List.Basic

/-!
Kernel-checked semantics for the binary path format emitted by the repaired
radius-1/20 engine.  At path depth `d`, the engine bisects coordinate `d % 4`.
Both children are closed, so a point on a midpoint may enter either branch.

The concrete tree below is regenerated from the pinned `phase_cover.jsonl.gz`
record for representative root `(0,2,0,2)`.  It is deliberately only one
representative-root component: terminal rejection arithmetic and the other
101 representative roots remain separate obligations.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050Bridge20261006
open Centiradian20261006
noncomputable section

inductive CoverTree where
  | leaf (kind : Nat)
  | split (left right : CoverTree)
  deriving DecidableEq, Repr

def axis (depth : Nat) : Fin 4 :=
  ⟨depth % 4, Nat.mod_lt _ (by decide)⟩

def follow (B : PhaseBox 4) : Nat → List Bool → PhaseBox 4
  | _, [] => B
  | depth, false :: rest => follow (B.left (axis depth)) (depth + 1) rest
  | depth, true :: rest => follow (B.right (axis depth)) (depth + 1) rest

def CoverTree.paths : CoverTree → List (List Bool × Nat)
  | .leaf kind => [([], kind)]
  | .split left right =>
      left.paths.map (fun pk => (false :: pk.1, pk.2)) ++
      right.paths.map (fun pk => (true :: pk.1, pk.2))

def CoverTree.leafCount : CoverTree → Nat
  | .leaf _ => 1
  | .split left right => left.leafCount + right.leafCount

def CoverTree.height : CoverTree → Nat
  | .leaf _ => 0
  | .split left right => Nat.succ (max left.height right.height)

/-- Every point of the parent closed box lies in a leaf box represented by
the tree.  This theorem is the semantic bridge from complete binary path data
to real boxes; it uses the pre-existing checked closed-midpoint bisection
lemma, rather than a cardinality or floating-point argument. -/
theorem CoverTree.covers (tree : CoverTree) (B : PhaseBox 4) (depth : Nat)
    (x : Fin 4 → Real) (hx : B.Contains x) :
    ∃ path kind, (path, kind) ∈ tree.paths ∧ (follow B depth path).Contains x := by
  induction tree generalizing B depth with
  | leaf kind =>
      exact ⟨[], kind, by simp [CoverTree.paths], by simpa [follow] using hx⟩
  | split left right ihLeft ihRight =>
      rcases B.bisection_covers (axis depth) x hx with hxLeft | hxRight
      · obtain ⟨path, kind, hp, hbox⟩ := ihLeft (B.left (axis depth)) (depth + 1) hxLeft
        exact ⟨false :: path, kind, by simp [CoverTree.paths, hp], by simpa [follow] using hbox⟩
      · obtain ⟨path, kind, hp, hbox⟩ := ihRight (B.right (axis depth)) (depth + 1) hxRight
        exact ⟨true :: path, kind, by simp [CoverTree.paths, hp], by simpa [follow] using hbox⟩

def repairedPhaseCoverSha256 : String :=
  "6a4f7775e58f7058cc3ca763e0e7d4974042a9d61b9164f76513d0005091d7dc"

-- BEGIN GENERATED ROOT (0,2,0,2)
def root0202 : CoverTree := .split
  (.split
    (.leaf 2)
    (.split
      (.split
        (.leaf 3)
        (.split
          (.split
            (.leaf 2)
            (.split
              (.split
                (.leaf 3)
                (.leaf 400))
              (.leaf 3)))
          (.leaf 2)))
      (.split
        (.split
          (.split
            (.leaf 2)
            (.split
              (.leaf 3)
              (.split
                (.leaf 401)
                (.leaf 3))))
          (.leaf 2))
        (.leaf 3))))
  (.split
    (.split
      (.split
        (.leaf 3)
        (.split
          (.leaf 2)
          (.split
            (.split
              (.split
                (.leaf 3)
                (.leaf 400))
              (.leaf 3))
            (.leaf 2))))
      (.split
        (.split
          (.leaf 2)
          (.split
            (.split
              (.leaf 3)
              (.split
                (.leaf 405)
                (.leaf 3)))
            (.leaf 2)))
        (.leaf 3)))
    (.leaf 2))

def root0202SourceRecords : List (List Bool × Nat) := [
  ([false,false], 2),
  ([false,true,false,false], 3),
  ([false,true,false,true,false,false], 2),
  ([false,true,false,true,false,true,false,false], 3),
  ([false,true,false,true,false,true,false,true], 400),
  ([false,true,false,true,false,true,true], 3),
  ([false,true,false,true,true], 2),
  ([false,true,true,false,false,false], 2),
  ([false,true,true,false,false,true,false], 3),
  ([false,true,true,false,false,true,true,false], 401),
  ([false,true,true,false,false,true,true,true], 3),
  ([false,true,true,false,true], 2),
  ([false,true,true,true], 3),
  ([true,false,false,false], 3),
  ([true,false,false,true,false], 2),
  ([true,false,false,true,true,false,false,false], 3),
  ([true,false,false,true,true,false,false,true], 400),
  ([true,false,false,true,true,false,true], 3),
  ([true,false,false,true,true,true], 2),
  ([true,false,true,false,false], 2),
  ([true,false,true,false,true,false,false], 3),
  ([true,false,true,false,true,false,true,false], 405),
  ([true,false,true,false,true,false,true,true], 3),
  ([true,false,true,false,true,true], 2),
  ([true,false,true,true], 3),
  ([true,true], 2)
]
-- END GENERATED ROOT (0,2,0,2)

theorem root0202_records_exact : root0202.paths = root0202SourceRecords := by
  decide +kernel

theorem root0202_leaf_count : root0202.leafCount = 26 := by
  decide +kernel

theorem root0202_max_depth : root0202.height = 8 := by
  decide +kernel

theorem root0202_closed_cover (B : PhaseBox 4) (x : Fin 4 → Real)
    (hx : B.Contains x) :
    ∃ path kind, (path, kind) ∈ root0202SourceRecords ∧
      (follow B 0 path).Contains x := by
  simpa [root0202_records_exact] using root0202.covers B 0 x hx

end
end Radius050Bridge20261006

#print axioms Radius050Bridge20261006.CoverTree.covers
#print axioms Radius050Bridge20261006.root0202_records_exact
#print axioms Radius050Bridge20261006.root0202_leaf_count
#print axioms Radius050Bridge20261006.root0202_max_depth
#print axioms Radius050Bridge20261006.root0202_closed_cover
