import FourierPilotCircleTree003542
import FourierPilotCircleTree003569
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003541
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![12, 14, 8, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003542.state FourierPilotCircleTree003569.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003542.covered FourierPilotCircleTree003569.covered
#print axioms covered
end FourierPilotCircleTree003541
