import Radius050ClosedCover

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

def GridRoot.orbit (r : GridRoot) : List GridRoot :=
  [⟨-r.a, -r.b, -r.d, -r.c⟩,
   ⟨-r.b, -r.a, -r.c, -r.d⟩,
   ⟨-r.c, -r.d, -r.b, -r.a⟩,
   ⟨-r.d, -r.c, -r.a, -r.b⟩,
   ⟨r.a, r.b, r.c, r.d⟩,
   ⟨r.b, r.a, r.d, r.c⟩,
   ⟨r.c, r.d, r.a, r.b⟩,
   ⟨r.d, r.c, r.b, r.a⟩].map GridRoot.canonical |>.eraseDups

def initialGrid : List GridRoot :=
  [-1, 0, 1].flatMap fun a =>
    (List.range 6).flatMap fun b =>
      [-1, 0, 1].flatMap fun c =>
        (List.range 6).map fun d =>
          GridRoot.canonical ⟨a, b, c, d⟩

def representativeRoots : List GridRoot :=
-- BEGIN GENERATED REPRESENTATIVE ROOTS
  [
    GridRoot.canonical ⟨(-1), 0, (-1), 0⟩,
    GridRoot.canonical ⟨(-1), 0, (-1), 1⟩,
    GridRoot.canonical ⟨(-1), 0, (-1), 2⟩,
    GridRoot.canonical ⟨(-1), 0, (-1), 3⟩,
    GridRoot.canonical ⟨(-1), 0, (-1), 4⟩,
    GridRoot.canonical ⟨(-1), 0, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 1⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 4⟩,
    GridRoot.canonical ⟨(-1), 0, 0, 5⟩,
    GridRoot.canonical ⟨(-1), 0, 1, 1⟩,
    GridRoot.canonical ⟨(-1), 0, 1, 2⟩,
    GridRoot.canonical ⟨(-1), 0, 1, 3⟩,
    GridRoot.canonical ⟨(-1), 0, 1, 4⟩,
    GridRoot.canonical ⟨(-1), 0, 1, 5⟩,
    GridRoot.canonical ⟨(-1), 1, (-1), 1⟩,
    GridRoot.canonical ⟨(-1), 1, (-1), 2⟩,
    GridRoot.canonical ⟨(-1), 1, (-1), 3⟩,
    GridRoot.canonical ⟨(-1), 1, (-1), 4⟩,
    GridRoot.canonical ⟨(-1), 1, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 1, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 1, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 1, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 2, (-1), 2⟩,
    GridRoot.canonical ⟨(-1), 2, (-1), 3⟩,
    GridRoot.canonical ⟨(-1), 2, (-1), 4⟩,
    GridRoot.canonical ⟨(-1), 2, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 2, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 2, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 2, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 2, 0, 4⟩,
    GridRoot.canonical ⟨(-1), 2, 0, 5⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 0⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 1⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 2⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 3⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 4⟩,
    GridRoot.canonical ⟨(-1), 2, 1, 5⟩,
    GridRoot.canonical ⟨(-1), 3, (-1), 3⟩,
    GridRoot.canonical ⟨(-1), 3, (-1), 4⟩,
    GridRoot.canonical ⟨(-1), 3, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 3, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 3, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 3, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 3, 0, 4⟩,
    GridRoot.canonical ⟨(-1), 3, 0, 5⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 0⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 1⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 2⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 3⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 4⟩,
    GridRoot.canonical ⟨(-1), 3, 1, 5⟩,
    GridRoot.canonical ⟨(-1), 4, (-1), 4⟩,
    GridRoot.canonical ⟨(-1), 4, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 4, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 4, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 4, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 4, 0, 4⟩,
    GridRoot.canonical ⟨(-1), 4, 0, 5⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 0⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 1⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 2⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 3⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 4⟩,
    GridRoot.canonical ⟨(-1), 4, 1, 5⟩,
    GridRoot.canonical ⟨(-1), 5, (-1), 5⟩,
    GridRoot.canonical ⟨(-1), 5, 0, 0⟩,
    GridRoot.canonical ⟨(-1), 5, 0, 2⟩,
    GridRoot.canonical ⟨(-1), 5, 0, 3⟩,
    GridRoot.canonical ⟨(-1), 5, 0, 4⟩,
    GridRoot.canonical ⟨(-1), 5, 1, 1⟩,
    GridRoot.canonical ⟨0, 0, 0, 0⟩,
    GridRoot.canonical ⟨0, 0, 0, 2⟩,
    GridRoot.canonical ⟨0, 0, 0, 3⟩,
    GridRoot.canonical ⟨0, 2, 0, 2⟩,
    GridRoot.canonical ⟨0, 2, 0, 3⟩,
    GridRoot.canonical ⟨0, 2, 0, 4⟩,
    GridRoot.canonical ⟨0, 2, 0, 5⟩,
    GridRoot.canonical ⟨0, 2, 1, 0⟩,
    GridRoot.canonical ⟨0, 2, 1, 2⟩,
    GridRoot.canonical ⟨0, 2, 1, 3⟩,
    GridRoot.canonical ⟨0, 2, 1, 4⟩,
    GridRoot.canonical ⟨0, 2, 1, 5⟩,
    GridRoot.canonical ⟨0, 3, 0, 3⟩,
    GridRoot.canonical ⟨0, 3, 0, 4⟩,
    GridRoot.canonical ⟨0, 3, 0, 5⟩,
    GridRoot.canonical ⟨0, 3, 1, 2⟩,
    GridRoot.canonical ⟨0, 3, 1, 3⟩,
    GridRoot.canonical ⟨0, 3, 1, 4⟩,
    GridRoot.canonical ⟨0, 3, 1, 5⟩,
    GridRoot.canonical ⟨0, 4, 0, 4⟩,
    GridRoot.canonical ⟨0, 4, 1, 2⟩,
    GridRoot.canonical ⟨0, 4, 1, 3⟩,
    GridRoot.canonical ⟨0, 4, 1, 4⟩,
    GridRoot.canonical ⟨1, 2, 1, 2⟩,
    GridRoot.canonical ⟨1, 2, 1, 3⟩,
    GridRoot.canonical ⟨1, 2, 1, 4⟩,
    GridRoot.canonical ⟨1, 3, 1, 3⟩,
    GridRoot.canonical ⟨1, 3, 1, 4⟩,
    GridRoot.canonical ⟨1, 4, 1, 4⟩
  ]
-- END GENERATED REPRESENTATIVE ROOTS

def representationMultiplicity (cell : GridRoot) : Nat :=
  (representativeRoots.filter fun root => root.orbit.contains cell).length

def partitionChunk (index : Nat) : List GridRoot :=
  (initialGrid.drop (27 * index)).take 27

def partitionChunkCheck (index : Nat) : Bool :=
  (partitionChunk index).all fun cell => representationMultiplicity cell == 1

theorem initial_grid_count : initialGrid.length = 324 := by decide +kernel
theorem representative_root_count : representativeRoots.length = 102 := by decide +kernel
theorem representative_roots_in_grid :
    (representativeRoots.all fun root => initialGrid.contains root) = true := by decide +kernel
theorem partition_chunks_cover :
    (List.range 12).flatMap partitionChunk = initialGrid := by decide +kernel

-- Chunking keeps every kernel reduction below the fixed campaign heap bound.
theorem partition_chunk00 : partitionChunkCheck 0 = true := by decide +kernel
theorem partition_chunk01 : partitionChunkCheck 1 = true := by decide +kernel
theorem partition_chunk02 : partitionChunkCheck 2 = true := by decide +kernel
theorem partition_chunk03 : partitionChunkCheck 3 = true := by decide +kernel
theorem partition_chunk04 : partitionChunkCheck 4 = true := by decide +kernel
theorem partition_chunk05 : partitionChunkCheck 5 = true := by decide +kernel
theorem partition_chunk06 : partitionChunkCheck 6 = true := by decide +kernel
theorem partition_chunk07 : partitionChunkCheck 7 = true := by decide +kernel
theorem partition_chunk08 : partitionChunkCheck 8 = true := by decide +kernel
theorem partition_chunk09 : partitionChunkCheck 9 = true := by decide +kernel
theorem partition_chunk10 : partitionChunkCheck 10 = true := by decide +kernel
theorem partition_chunk11 : partitionChunkCheck 11 = true := by decide +kernel

end Radius050Bridge20261006

#print axioms Radius050Bridge20261006.initial_grid_count
#print axioms Radius050Bridge20261006.representative_root_count
#print axioms Radius050Bridge20261006.representative_roots_in_grid
#print axioms Radius050Bridge20261006.partition_chunks_cover
#print axioms Radius050Bridge20261006.partition_chunk00
#print axioms Radius050Bridge20261006.partition_chunk01
#print axioms Radius050Bridge20261006.partition_chunk02
#print axioms Radius050Bridge20261006.partition_chunk03
#print axioms Radius050Bridge20261006.partition_chunk04
#print axioms Radius050Bridge20261006.partition_chunk05
#print axioms Radius050Bridge20261006.partition_chunk06
#print axioms Radius050Bridge20261006.partition_chunk07
#print axioms Radius050Bridge20261006.partition_chunk08
#print axioms Radius050Bridge20261006.partition_chunk09
#print axioms Radius050Bridge20261006.partition_chunk10
#print axioms Radius050Bridge20261006.partition_chunk11
