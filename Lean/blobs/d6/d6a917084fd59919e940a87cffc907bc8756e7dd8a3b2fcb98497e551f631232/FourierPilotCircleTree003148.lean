import FourierPilotCircleTree003149
import FourierPilotCircleTree003150
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003148
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 5, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003149.state FourierPilotCircleTree003150.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003149.covered FourierPilotCircleTree003150.covered
#print axioms covered
end FourierPilotCircleTree003148
