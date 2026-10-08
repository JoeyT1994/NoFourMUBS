import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_00 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (0 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (0 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_00

theorem centre_row_01 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (1 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (1 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_01

theorem centre_row_02 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (2 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (2 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_02

theorem centre_row_03 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (3 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (3 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_03

end Seed0024PhaseCoreBridge20261007
