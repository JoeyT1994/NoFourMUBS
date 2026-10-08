import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_32 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (32 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (32 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_32

theorem centre_row_33 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (33 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (33 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_33

theorem centre_row_34 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (34 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (34 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_34

theorem centre_row_35 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (35 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (35 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_35

end Seed0024PhaseCoreBridge20261007
