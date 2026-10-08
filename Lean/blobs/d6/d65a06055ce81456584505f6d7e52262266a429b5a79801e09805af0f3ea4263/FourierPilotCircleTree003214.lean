import FourierPilotCircleTree003215
import FourierPilotCircleTree003242
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003214
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 3, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003215.state FourierPilotCircleTree003242.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003215.covered FourierPilotCircleTree003242.covered
#print axioms covered
end FourierPilotCircleTree003214
