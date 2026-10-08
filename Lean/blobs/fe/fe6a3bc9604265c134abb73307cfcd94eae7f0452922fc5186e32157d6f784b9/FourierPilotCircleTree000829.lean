import FourierPilotCircleTree000830
import FourierPilotCircleTree000831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000829
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 46, 20, 26, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000830.state FourierPilotCircleTree000831.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000830.covered FourierPilotCircleTree000831.covered
#print axioms covered
end FourierPilotCircleTree000829
