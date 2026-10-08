import FourierPilotCircleTree004561
import FourierPilotCircleTree004572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004560
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![49, 46, 63, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004561.state FourierPilotCircleTree004572.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004561.covered FourierPilotCircleTree004572.covered
#print axioms covered
end FourierPilotCircleTree004560
