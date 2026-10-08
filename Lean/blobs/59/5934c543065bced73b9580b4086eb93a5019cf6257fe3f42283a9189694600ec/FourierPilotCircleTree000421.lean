import FourierPilotCircleTree000422
import FourierPilotCircleTree000423
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000421
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 38, 32, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000422.state FourierPilotCircleTree000423.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000422.covered FourierPilotCircleTree000423.covered
#print axioms covered
end FourierPilotCircleTree000421
