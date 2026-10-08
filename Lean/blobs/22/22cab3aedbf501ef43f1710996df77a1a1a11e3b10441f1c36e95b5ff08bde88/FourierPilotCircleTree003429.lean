import FourierPilotCircleTree003430
import FourierPilotCircleTree003461
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003429
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 13, 10, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003430.state FourierPilotCircleTree003461.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003430.covered FourierPilotCircleTree003461.covered
#print axioms covered
end FourierPilotCircleTree003429
