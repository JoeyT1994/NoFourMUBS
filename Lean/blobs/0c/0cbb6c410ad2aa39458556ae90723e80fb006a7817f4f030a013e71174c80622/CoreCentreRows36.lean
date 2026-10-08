import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_36 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (36 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (36 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_36

theorem centre_row_37 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (37 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (37 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_37

theorem centre_row_38 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (38 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (38 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_38

theorem centre_row_39 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (39 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (39 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_39

end Seed0024PhaseCoreBridge20261007
