import FourierPilotCircleTree004682
import FourierPilotCircleTree004689
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004681
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 20, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004682.state FourierPilotCircleTree004689.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004682.covered FourierPilotCircleTree004689.covered
#print axioms covered
end FourierPilotCircleTree004681
