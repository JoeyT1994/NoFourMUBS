import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_20 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (20 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (20 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_20

theorem centre_row_21 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (21 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (21 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_21

theorem centre_row_22 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (22 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (22 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_22

theorem centre_row_23 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (23 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (23 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_23

end Seed0024PhaseCoreBridge20261007
