import Radius050RootOrbits
import Mathlib.Tactic.IntervalCases

/-! Exact bounded generator closure for the frozen radius-1/20 grid audit.
This is finite combinatorics only; physical realization of these generators is
an explicit separate obligation.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050Bridge20261006

def generatorStep (roots : List GridRoot) : List GridRoot :=
  (roots ++ roots.flatMap GridRoot.generators).eraseDups

def generatorClosure3 (root : GridRoot) : List GridRoot :=
  generatorStep (generatorStep (generatorStep [root.canonical]))

theorem generator_entries_exact (root : GridRoot) :
    root.generators =
      [GridRoot.canonical ⟨root.c, root.d, root.a, root.b⟩,
       GridRoot.canonical ⟨-root.b, -root.a, -root.c, -root.d⟩,
       GridRoot.canonical ⟨-root.a, -root.b, -root.d, -root.c⟩] := by
  rfl

def generatorClosureChunkCheck (index : Nat) : Bool :=
  (partitionChunk index).all fun root =>
    decide (root.orbit.Perm (generatorClosure3 root))

-- The existing `partition_chunks_cover` theorem proves these twelve chunks
-- concatenate to the entire 324-cell initial grid.
theorem generator_closure_chunk00 : generatorClosureChunkCheck 0 = true := by decide +kernel
theorem generator_closure_chunk01 : generatorClosureChunkCheck 1 = true := by decide +kernel
theorem generator_closure_chunk02 : generatorClosureChunkCheck 2 = true := by decide +kernel
theorem generator_closure_chunk03 : generatorClosureChunkCheck 3 = true := by decide +kernel
theorem generator_closure_chunk04 : generatorClosureChunkCheck 4 = true := by decide +kernel
theorem generator_closure_chunk05 : generatorClosureChunkCheck 5 = true := by decide +kernel
theorem generator_closure_chunk06 : generatorClosureChunkCheck 6 = true := by decide +kernel
theorem generator_closure_chunk07 : generatorClosureChunkCheck 7 = true := by decide +kernel
theorem generator_closure_chunk08 : generatorClosureChunkCheck 8 = true := by decide +kernel
theorem generator_closure_chunk09 : generatorClosureChunkCheck 9 = true := by decide +kernel
theorem generator_closure_chunk10 : generatorClosureChunkCheck 10 = true := by decide +kernel
theorem generator_closure_chunk11 : generatorClosureChunkCheck 11 = true := by decide +kernel

/-- Pointwise form of the chunk checks: every one of the 324 initial-grid cells
has exactly the membership set of the displayed orbit after three rounds of
the three declared generators. -/
theorem initial_grid_orbit_is_generator_closure (root : GridRoot)
    (hroot : root ∈ initialGrid) :
    root.orbit.Perm (generatorClosure3 root) := by
  rw [← partition_chunks_cover, List.mem_flatMap] at hroot
  obtain ⟨index, hindex, hroot⟩ := hroot
  have hlt : index < 12 := List.mem_range.mp hindex
  have hchunk : generatorClosureChunkCheck index = true := by
    interval_cases index
    · exact generator_closure_chunk00
    · exact generator_closure_chunk01
    · exact generator_closure_chunk02
    · exact generator_closure_chunk03
    · exact generator_closure_chunk04
    · exact generator_closure_chunk05
    · exact generator_closure_chunk06
    · exact generator_closure_chunk07
    · exact generator_closure_chunk08
    · exact generator_closure_chunk09
    · exact generator_closure_chunk10
    · exact generator_closure_chunk11
  exact of_decide_eq_true ((List.all_eq_true.mp hchunk) root hroot)

#print axioms generator_entries_exact
#print axioms generator_closure_chunk00
#print axioms generator_closure_chunk01
#print axioms generator_closure_chunk02
#print axioms generator_closure_chunk03
#print axioms generator_closure_chunk04
#print axioms generator_closure_chunk05
#print axioms generator_closure_chunk06
#print axioms generator_closure_chunk07
#print axioms generator_closure_chunk08
#print axioms generator_closure_chunk09
#print axioms generator_closure_chunk10
#print axioms generator_closure_chunk11
#print axioms initial_grid_orbit_is_generator_closure

end Radius050Bridge20261006
