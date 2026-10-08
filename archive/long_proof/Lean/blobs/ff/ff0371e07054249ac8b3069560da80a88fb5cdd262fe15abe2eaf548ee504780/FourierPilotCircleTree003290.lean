import FourierPilotCircleTree003291
import FourierPilotCircleTree003292
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003290
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 4, 13, 12, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003291.state FourierPilotCircleTree003292.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003291.covered FourierPilotCircleTree003292.covered
#print axioms covered
end FourierPilotCircleTree003290
