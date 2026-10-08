import Radius050AllCoverData
import Radius050RootOrbits

/-! Exact ordered tuple join between the frozen 102-record cover table and
the frozen representative-root symmetry table.  Tree terminal semantics and
physical symmetry realization are outside this finite data equality.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050Bridge20261006

def RepresentativeCover.gridRoot (record : RepresentativeCover) : GridRoot :=
  GridRoot.canonical ⟨record.a, record.b, record.c, record.d⟩

theorem cover_record_roots_exact :
    allRepresentativeCovers.map RepresentativeCover.gridRoot = representativeRoots := by
  decide +kernel

#print axioms cover_record_roots_exact

end Radius050Bridge20261006
