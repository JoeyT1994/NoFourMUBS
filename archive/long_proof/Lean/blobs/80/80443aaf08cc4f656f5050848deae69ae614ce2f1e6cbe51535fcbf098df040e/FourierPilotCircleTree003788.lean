import FourierPilotCircleTree003789
import FourierPilotCircleTree003864
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003788
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003789.state FourierPilotCircleTree003864.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003789.covered FourierPilotCircleTree003864.covered
#print axioms covered
end FourierPilotCircleTree003788
