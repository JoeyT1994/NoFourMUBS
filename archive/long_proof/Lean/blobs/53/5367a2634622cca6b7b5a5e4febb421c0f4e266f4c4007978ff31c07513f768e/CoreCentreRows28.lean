import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_28 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (28 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (28 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_28

theorem centre_row_29 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (29 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (29 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_29

theorem centre_row_30 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (30 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (30 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_30

theorem centre_row_31 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (31 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (31 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_31

end Seed0024PhaseCoreBridge20261007
