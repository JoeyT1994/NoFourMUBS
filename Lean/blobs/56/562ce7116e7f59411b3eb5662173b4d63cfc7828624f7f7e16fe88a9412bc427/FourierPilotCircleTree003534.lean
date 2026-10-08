import FourierPilotCircleTree003535
import FourierPilotCircleTree003576
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003534
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![6, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003535.state FourierPilotCircleTree003576.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003535.covered FourierPilotCircleTree003576.covered
#print axioms covered
end FourierPilotCircleTree003534
