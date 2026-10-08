import FourierPilotCircleTree003224
import FourierPilotCircleTree003225
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003223
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 12, 4, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003224.state FourierPilotCircleTree003225.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003224.covered FourierPilotCircleTree003225.covered
#print axioms covered
end FourierPilotCircleTree003223
