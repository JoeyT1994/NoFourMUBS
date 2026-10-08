import FourierPilotCircleTree003587
import FourierPilotCircleTree003588
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003586
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003587.state FourierPilotCircleTree003588.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003587.covered FourierPilotCircleTree003588.covered
#print axioms covered
end FourierPilotCircleTree003586
