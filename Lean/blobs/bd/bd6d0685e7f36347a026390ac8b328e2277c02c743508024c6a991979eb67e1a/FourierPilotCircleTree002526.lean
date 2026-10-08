import FourierPilotCircleTree002527
import FourierPilotCircleTree002528
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002526
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![47, 38, 63, 31, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002527.state FourierPilotCircleTree002528.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002527.covered FourierPilotCircleTree002528.covered
#print axioms covered
end FourierPilotCircleTree002526
