import LightSquareChecks
import SquareConcretePhaseChecksNoInit

/- Small physical-side bridge, compiled separately after the replay core. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

theorem lightSquareChecks_eq : lightSquareChecks = squareConcretePhaseChecks := rfl

end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.lightSquareChecks_eq
