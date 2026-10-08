import FourierPilotCircleTree000640
import FourierPilotCircleTree000641
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000639
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![46, 45, 41, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000640.state FourierPilotCircleTree000641.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000640.covered FourierPilotCircleTree000641.covered
#print axioms covered
end FourierPilotCircleTree000639
