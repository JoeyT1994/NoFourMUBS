import FourierPilotCircleTree000470
import FourierPilotCircleTree000471
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000469
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000470.state FourierPilotCircleTree000471.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000470.covered FourierPilotCircleTree000471.covered
#print axioms covered
end FourierPilotCircleTree000469
