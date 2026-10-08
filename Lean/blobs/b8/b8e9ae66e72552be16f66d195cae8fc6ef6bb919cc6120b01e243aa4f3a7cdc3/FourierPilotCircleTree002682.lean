import FourierPilotCircleTree002683
import FourierPilotCircleTree002690
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002682
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![48, 57, 32, 16, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002683.state FourierPilotCircleTree002690.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002683.covered FourierPilotCircleTree002690.covered
#print axioms covered
end FourierPilotCircleTree002682
