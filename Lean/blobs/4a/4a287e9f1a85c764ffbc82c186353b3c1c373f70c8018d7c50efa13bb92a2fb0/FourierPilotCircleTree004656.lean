import FourierPilotCircleTree004657
import FourierPilotCircleTree004658
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004656
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 5, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004657.state FourierPilotCircleTree004658.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004657.covered FourierPilotCircleTree004658.covered
#print axioms covered
end FourierPilotCircleTree004656
