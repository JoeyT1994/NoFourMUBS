import FourierPilotCircleTree000753
import FourierPilotCircleTree000764
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000752
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000753.state FourierPilotCircleTree000764.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000753.covered FourierPilotCircleTree000764.covered
#print axioms covered
end FourierPilotCircleTree000752
