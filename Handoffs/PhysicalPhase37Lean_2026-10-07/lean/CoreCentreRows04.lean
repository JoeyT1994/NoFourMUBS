import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_04 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (4 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (4 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_04

theorem centre_row_05 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (5 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (5 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_05

theorem centre_row_06 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (6 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (6 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_06

theorem centre_row_07 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (7 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (7 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_07

end Seed0024PhaseCoreBridge20261007
