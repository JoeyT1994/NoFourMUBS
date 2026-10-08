import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_40 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (40 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (40 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_40

theorem centre_row_41 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (41 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (41 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_41

theorem centre_row_42 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (42 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (42 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_42

theorem centre_row_43 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (43 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (43 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_43

end Seed0024PhaseCoreBridge20261007
