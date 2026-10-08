import FourierPilotCircleTree003490
import FourierPilotCircleTree003519
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003489
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![7, 10, 13, 11, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003490.state FourierPilotCircleTree003519.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003490.covered FourierPilotCircleTree003519.covered
#print axioms covered
end FourierPilotCircleTree003489
