import FourierPilotCircleTree003721
import FourierPilotCircleTree003726
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003720
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003721.state FourierPilotCircleTree003726.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003721.covered FourierPilotCircleTree003726.covered
#print axioms covered
end FourierPilotCircleTree003720
