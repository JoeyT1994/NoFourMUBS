import FourierPilotCircleTree001473
import FourierPilotCircleTree001496
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001472
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![10, 14, 13, 15, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001473.state FourierPilotCircleTree001496.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001473.covered FourierPilotCircleTree001496.covered
#print axioms covered
end FourierPilotCircleTree001472
