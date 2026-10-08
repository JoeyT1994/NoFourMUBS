import FourierPilotCircleTree003222
import FourierPilotCircleTree003223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003221
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 12, 4, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003222.state FourierPilotCircleTree003223.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003222.covered FourierPilotCircleTree003223.covered
#print axioms covered
end FourierPilotCircleTree003221
