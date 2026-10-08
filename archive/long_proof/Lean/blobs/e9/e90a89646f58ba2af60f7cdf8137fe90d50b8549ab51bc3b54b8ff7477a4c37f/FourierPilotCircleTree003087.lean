import FourierPilotCircleTree003088
import FourierPilotCircleTree003119
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003087
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 4, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003088.state FourierPilotCircleTree003119.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003088.covered FourierPilotCircleTree003119.covered
#print axioms covered
end FourierPilotCircleTree003087
