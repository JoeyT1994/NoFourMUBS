import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_16 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (16 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (16 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_16

theorem centre_row_17 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (17 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (17 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_17

theorem centre_row_18 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (18 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (18 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_18

theorem centre_row_19 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (19 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (19 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_19

end Seed0024PhaseCoreBridge20261007
