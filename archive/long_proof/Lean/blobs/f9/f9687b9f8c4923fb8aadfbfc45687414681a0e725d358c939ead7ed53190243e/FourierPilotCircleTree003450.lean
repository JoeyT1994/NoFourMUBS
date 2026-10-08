import FourierPilotCircleTree003451
import FourierPilotCircleTree003452
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003450
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![74, 54, 41, 102, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003451.state FourierPilotCircleTree003452.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003451.covered FourierPilotCircleTree003452.covered
#print axioms covered
end FourierPilotCircleTree003450
