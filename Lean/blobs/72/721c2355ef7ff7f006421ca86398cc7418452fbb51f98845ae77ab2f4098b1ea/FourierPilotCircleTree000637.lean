import FourierPilotCircleTree000638
import FourierPilotCircleTree000639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000637
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![46, 45, 41, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000638.state FourierPilotCircleTree000639.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000638.covered FourierPilotCircleTree000639.covered
#print axioms covered
end FourierPilotCircleTree000637
