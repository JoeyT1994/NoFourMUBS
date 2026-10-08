import SeedPhaseData
import CompactSparseTable
import RoundedCentreDataNoInit

/-! The literal pure-core arrays contain the same rounded integer data as the
already checked table and centre definitions. This is a data identity, not an
assertion that any finite cover or leaf predicate accepts. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem octantArray_eq :
    Seed0024PhaseCore20261007.octantArray =
      Seed0024ClusterTubeTable20261007.compactRoundedArray := rfl

theorem all_centre_entries_eq :
    ∀ k : Fin 48, ∀ i : Fin 5,
      Seed0024PhaseCore20261007.centreEntry k i =
        Seed0024ClusterTube20261007.roundedCentreCoordinates k i := by
  decide +kernel

theorem centreEntry_eq (k : Fin 48) (i : Fin 5) :
    Seed0024PhaseCore20261007.centreEntry k i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates k i :=
  all_centre_entries_eq k i

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.octantArray_eq
#print axioms Seed0024PhaseCoreBridge20261007.all_centre_entries_eq
#print axioms Seed0024PhaseCoreBridge20261007.centreEntry_eq
