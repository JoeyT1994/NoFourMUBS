import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_08 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (8 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (8 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_08

theorem centre_row_09 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (9 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (9 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_09

theorem centre_row_10 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (10 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (10 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_10

theorem centre_row_11 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (11 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (11 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_11

end Seed0024PhaseCoreBridge20261007
