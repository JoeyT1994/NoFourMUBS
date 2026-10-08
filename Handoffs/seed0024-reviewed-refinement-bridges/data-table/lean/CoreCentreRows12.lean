import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_12 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (12 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (12 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_12

theorem centre_row_13 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (13 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (13 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_13

theorem centre_row_14 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (14 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (14 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_14

theorem centre_row_15 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (15 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (15 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_15

end Seed0024PhaseCoreBridge20261007
