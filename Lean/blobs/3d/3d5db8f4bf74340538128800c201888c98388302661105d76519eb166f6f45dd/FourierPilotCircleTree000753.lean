import FourierPilotCircleTree000754
import FourierPilotCircleTree000763
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000753
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![98, 50, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000754.state FourierPilotCircleTree000763.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000754.covered FourierPilotCircleTree000763.covered
#print axioms covered
end FourierPilotCircleTree000753
