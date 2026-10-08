import Radius050AllCoverData

/-! Exact finite audit of the native initial-grid symmetry partition.  This
checks the 324 grid cells and 102 representative roots used by the pinned
radius-1/20 cover.  It does not assert that these combinatorial generators
are induced by physical matrix operations; that semantic transport remains
a separate physical obligation. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050Bridge20261006

structure GridRoot where
  a : Int
  b : Int
  c : Int
  d : Int
  deriving DecidableEq, BEq, Repr

def norm6 (z : Int) : Int := z % 6

def GridRoot.canonical (r : GridRoot) : GridRoot :=
  ⟨norm6 r.a, norm6 r.b, norm6 r.c, norm6 r.d⟩

def GridRoot.generators (r : GridRoot) : List GridRoot :=
  [⟨r.c, r.d, r.a, r.b⟩,
   ⟨-r.b, -r.a, -r.c, -r.d⟩,
   ⟨-r.a, -r.b, -r.d, -r.c⟩].map GridRoot.canonical

def orbitStep (roots : List GridRoot) : List GridRoot :=
  (roots ++ roots.flatMap GridRoot.generators).eraseDups

def GridRoot.orbit (r : GridRoot) : List GridRoot :=
  (List.range 8).foldl (fun roots _ => orbitStep roots) [r.canonical]

def initialGrid : List GridRoot :=
  [-1, 0, 1].flatMap fun a =>
    (List.range 6).flatMap fun b =>
      [-1, 0, 1].flatMap fun c =>
        (List.range 6).map fun d =>
          GridRoot.canonical ⟨a, b, c, d⟩

def representativeRoots : List GridRoot :=
  allRepresentativeCovers.map fun r => GridRoot.canonical ⟨r.a, r.b, r.c, r.d⟩

def representationMultiplicity (cell : GridRoot) : Nat :=
  (representativeRoots.filter fun root => root.orbit.contains cell).length

def initialPartitionCheck : Bool :=
  initialGrid.length == 324 &&
  representativeRoots.length == 102 &&
  (initialGrid.all fun cell => representationMultiplicity cell == 1) &&
  (representativeRoots.all fun root => initialGrid.contains root)

theorem initial_partition_checked : initialPartitionCheck = true := by decide +kernel

/-- The executable partition audit has direct propositional meaning for each
initial cell; the check does not merely compare aggregate cardinalities. -/
theorem initial_cell_unique_representative {cell : GridRoot}
    (hcell : cell ∈ initialGrid) : representationMultiplicity cell = 1 := by
  have hall : (initialGrid.all fun item => representationMultiplicity item == 1) = true := by
    simpa [initialPartitionCheck] using initial_partition_checked
  have hitem := List.all_eq_true.mp hall cell hcell
  exact beq_iff_eq.mp hitem

end Radius050Bridge20261006

#print axioms Radius050Bridge20261006.initial_partition_checked
#print axioms Radius050Bridge20261006.initial_cell_unique_representative
