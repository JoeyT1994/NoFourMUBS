import FourierPilotCircleTree005197
import FourierPilotCircleTree005226
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005196
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005197.state FourierPilotCircleTree005226.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005197.covered FourierPilotCircleTree005226.covered
#print axioms covered
end FourierPilotCircleTree005196
