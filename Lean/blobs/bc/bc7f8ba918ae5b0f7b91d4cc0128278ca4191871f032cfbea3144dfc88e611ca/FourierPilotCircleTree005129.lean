import FourierPilotCircleTree005130
import FourierPilotCircleTree005131
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005129
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![14, 14, 8, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005130.state FourierPilotCircleTree005131.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005130.covered FourierPilotCircleTree005131.covered
#print axioms covered
end FourierPilotCircleTree005129
