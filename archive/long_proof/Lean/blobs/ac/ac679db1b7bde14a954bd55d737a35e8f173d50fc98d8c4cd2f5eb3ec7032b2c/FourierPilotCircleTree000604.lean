import FourierPilotCircleTree000605
import FourierPilotCircleTree000606
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000604
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000605.state FourierPilotCircleTree000606.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000605.covered FourierPilotCircleTree000606.covered
#print axioms covered
end FourierPilotCircleTree000604
