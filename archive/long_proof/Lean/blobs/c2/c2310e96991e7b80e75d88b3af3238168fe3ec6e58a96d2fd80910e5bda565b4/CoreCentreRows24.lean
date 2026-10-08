import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_24 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (24 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (24 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_24

theorem centre_row_25 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (25 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (25 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_25

theorem centre_row_26 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (26 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (26 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_26

theorem centre_row_27 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (27 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (27 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_27

end Seed0024PhaseCoreBridge20261007
