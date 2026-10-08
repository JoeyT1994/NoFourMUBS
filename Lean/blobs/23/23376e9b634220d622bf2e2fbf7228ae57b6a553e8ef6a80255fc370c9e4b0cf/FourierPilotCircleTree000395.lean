import FourierPilotCircleTree000396
import FourierPilotCircleTree000443
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000395
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000396.state FourierPilotCircleTree000443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000396.covered FourierPilotCircleTree000443.covered
#print axioms covered
end FourierPilotCircleTree000395
