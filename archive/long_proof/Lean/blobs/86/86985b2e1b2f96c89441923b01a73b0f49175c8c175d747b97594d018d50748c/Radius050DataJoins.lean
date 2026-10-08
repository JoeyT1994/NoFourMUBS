import Radius050AllCoverData
import Radius050RootOrbits

/-! Exact additive joins between the frozen radius-1/20 cover table and its
finite symmetry audit.  These are combinatorial equalities only.  They do not
assert that a grid generator is realized by a physical MUB transformation or
that any terminal label is a sound exclusion.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050Bridge20261006

/-- One bounded breadth-first generator step, retaining the existing points
and adjoining the three generator images of each point. -/
def generatorStep (roots : List GridRoot) : List GridRoot :=
  (roots ++ roots.flatMap GridRoot.generators).eraseDups

/-- Three generator steps from the canonical root.  This bound is checked
below against the explicit orbit table on the entire 324-cell initial grid. -/
def generatorClosure3 (root : GridRoot) : List GridRoot :=
  generatorStep (generatorStep (generatorStep [root.canonical]))

/-- The three displayed entries of `GridRoot.generators` are exactly the
three concrete generator actions used by the bounded closure. -/
theorem generator_entries_exact (root : GridRoot) :
    root.generators =
      [GridRoot.canonical ⟨root.c, root.d, root.a, root.b⟩,
       GridRoot.canonical ⟨-root.b, -root.a, -root.c, -root.d⟩,
       GridRoot.canonical ⟨-root.a, -root.b, -root.d, -root.c⟩] := by
  rfl

/-- On every cell of the complete initial grid, bounded generator closure and
the explicit eight-image orbit have identical membership.  `List.Perm` allows
the breadth-first and displayed lists to use different orders while retaining
exactly the same de-duplicated points. -/
theorem initial_grid_orbits_are_generator_closures :
    (initialGrid.all fun root => root.orbit.Perm (generatorClosure3 root)) = true := by
  decide +kernel

/-- The same exact closure statement on the 102 roots used by the cover data. -/
theorem representative_orbits_are_generator_closures :
    (representativeRoots.all fun root =>
      root.orbit.Perm (generatorClosure3 root)) = true := by
  decide +kernel

/-- Forget the tree while canonically interpreting the four stored integer
root fields in the same grid type used by the symmetry audit. -/
def RepresentativeCover.gridRoot (record : RepresentativeCover) : GridRoot :=
  GridRoot.canonical ⟨record.a, record.b, record.c, record.d⟩

/-- Exact ordered one-to-one data join: the 102 cover records have precisely
the representative root tuple list audited by `Radius050RootOrbits`. -/
theorem cover_record_roots_exact :
    allRepresentativeCovers.map RepresentativeCover.gridRoot = representativeRoots := by
  decide +kernel

#print axioms generator_entries_exact
#print axioms initial_grid_orbits_are_generator_closures
#print axioms representative_orbits_are_generator_closures
#print axioms cover_record_roots_exact

end Radius050Bridge20261006
