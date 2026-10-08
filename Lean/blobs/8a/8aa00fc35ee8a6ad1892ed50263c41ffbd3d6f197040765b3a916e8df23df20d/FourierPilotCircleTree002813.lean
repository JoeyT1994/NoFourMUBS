import FourierPilotCircleTree002814
import FourierPilotCircleTree002831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002813
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![49, 46, 16, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002814.state FourierPilotCircleTree002831.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002814.covered FourierPilotCircleTree002831.covered
#print axioms covered
end FourierPilotCircleTree002813
