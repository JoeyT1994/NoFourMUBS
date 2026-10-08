import FourierPilotCircleTree003204
import FourierPilotCircleTree003209
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003203
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 7, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003204.state FourierPilotCircleTree003209.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003204.covered FourierPilotCircleTree003209.covered
#print axioms covered
end FourierPilotCircleTree003203
