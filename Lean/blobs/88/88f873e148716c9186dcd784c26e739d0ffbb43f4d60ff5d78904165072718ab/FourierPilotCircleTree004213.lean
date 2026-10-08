import FourierPilotCircleTree004214
import FourierPilotCircleTree004215
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004213
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 12, 4, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004214.state FourierPilotCircleTree004215.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004214.covered FourierPilotCircleTree004215.covered
#print axioms covered
end FourierPilotCircleTree004213
