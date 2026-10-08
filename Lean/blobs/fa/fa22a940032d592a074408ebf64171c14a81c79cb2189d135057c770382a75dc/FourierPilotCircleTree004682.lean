import FourierPilotCircleTree004683
import FourierPilotCircleTree004684
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004682
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 40, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004683.state FourierPilotCircleTree004684.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004683.covered FourierPilotCircleTree004684.covered
#print axioms covered
end FourierPilotCircleTree004682
