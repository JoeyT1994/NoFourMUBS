import FourierPilotCircleTree004099
import FourierPilotCircleTree004100
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004098
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![41, 117, 54, 63, 89]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004099.state FourierPilotCircleTree004100.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004099.covered FourierPilotCircleTree004100.covered
#print axioms covered
end FourierPilotCircleTree004098
