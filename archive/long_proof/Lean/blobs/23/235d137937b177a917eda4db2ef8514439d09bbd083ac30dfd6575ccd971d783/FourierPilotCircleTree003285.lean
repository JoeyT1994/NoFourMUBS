import FourierPilotCircleTree003286
import FourierPilotCircleTree003295
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003285
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 4, 6, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003286.state FourierPilotCircleTree003295.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003286.covered FourierPilotCircleTree003295.covered
#print axioms covered
end FourierPilotCircleTree003285
