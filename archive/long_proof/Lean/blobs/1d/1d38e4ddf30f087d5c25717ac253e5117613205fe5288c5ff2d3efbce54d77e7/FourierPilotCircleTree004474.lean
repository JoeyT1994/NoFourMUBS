import FourierPilotCircleTree004475
import FourierPilotCircleTree004476
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004474
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 6, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004475.state FourierPilotCircleTree004476.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004475.covered FourierPilotCircleTree004476.covered
#print axioms covered
end FourierPilotCircleTree004474
