import FourierPilotCircleTree003083
import FourierPilotCircleTree003084
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003082
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 4, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003083.state FourierPilotCircleTree003084.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003083.covered FourierPilotCircleTree003084.covered
#print axioms covered
end FourierPilotCircleTree003082
