import FourierPilotCircleTree003156
import FourierPilotCircleTree003195
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003155
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 13, 10, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003156.state FourierPilotCircleTree003195.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003156.covered FourierPilotCircleTree003195.covered
#print axioms covered
end FourierPilotCircleTree003155
