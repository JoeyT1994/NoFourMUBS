import FourierPilotCircleTree003669
import FourierPilotCircleTree003710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 5, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003669.state FourierPilotCircleTree003710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003669.covered FourierPilotCircleTree003710.covered
#print axioms covered
end FourierPilotCircleTree003668
