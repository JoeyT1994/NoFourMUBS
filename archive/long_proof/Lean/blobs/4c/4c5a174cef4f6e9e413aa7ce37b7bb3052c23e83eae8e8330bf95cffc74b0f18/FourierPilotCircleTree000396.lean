import FourierPilotCircleTree000397
import FourierPilotCircleTree000442
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000396
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000397.state FourierPilotCircleTree000442.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000397.covered FourierPilotCircleTree000442.covered
#print axioms covered
end FourierPilotCircleTree000396
