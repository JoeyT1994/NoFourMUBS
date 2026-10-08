import FourierPilotCircleTree002638
import FourierPilotCircleTree002639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002637
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![58, 41, 54, 89, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002638.state FourierPilotCircleTree002639.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002638.covered FourierPilotCircleTree002639.covered
#print axioms covered
end FourierPilotCircleTree002637
