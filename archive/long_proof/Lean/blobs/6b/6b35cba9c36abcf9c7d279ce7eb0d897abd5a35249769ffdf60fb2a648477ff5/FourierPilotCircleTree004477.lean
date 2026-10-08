import FourierPilotCircleTree004478
import FourierPilotCircleTree004479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004477
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![11, 12, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004478.state FourierPilotCircleTree004479.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004478.covered FourierPilotCircleTree004479.covered
#print axioms covered
end FourierPilotCircleTree004477
