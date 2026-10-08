import FourierPilotCircleTree003256
import FourierPilotCircleTree003257
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003255
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003256.state FourierPilotCircleTree003257.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003256.covered FourierPilotCircleTree003257.covered
#print axioms covered
end FourierPilotCircleTree003255
