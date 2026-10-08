import FourierPilotCircleTree003391
import FourierPilotCircleTree003392
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003390
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![23, 19, 31, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003391.state FourierPilotCircleTree003392.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003391.covered FourierPilotCircleTree003392.covered
#print axioms covered
end FourierPilotCircleTree003390
