import FourierPilotCircleTree003205
import FourierPilotCircleTree003206
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003204
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 7, 10, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003205.state FourierPilotCircleTree003206.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003205.covered FourierPilotCircleTree003206.covered
#print axioms covered
end FourierPilotCircleTree003204
