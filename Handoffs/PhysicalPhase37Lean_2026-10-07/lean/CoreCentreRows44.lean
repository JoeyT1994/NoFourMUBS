import SeedPhaseData
import RoundedCentreDataNoInit

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024PhaseCoreBridge20261007

theorem centre_row_44 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (44 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (44 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_44

theorem centre_row_45 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (45 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (45 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_45

theorem centre_row_46 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (46 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (46 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_46

theorem centre_row_47 : ∀ i : Fin 5,
    Seed0024PhaseCore20261007.centreEntry (47 : Fin 48) i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates (47 : Fin 48) i := by
  decide +kernel
#print axioms Seed0024PhaseCoreBridge20261007.centre_row_47

end Seed0024PhaseCoreBridge20261007
