import FourierPilotCircleTree005621
import FourierPilotCircleTree005626
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005620
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![5, 5, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005621.state FourierPilotCircleTree005626.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005621.covered FourierPilotCircleTree005626.covered
#print axioms covered
end FourierPilotCircleTree005620
