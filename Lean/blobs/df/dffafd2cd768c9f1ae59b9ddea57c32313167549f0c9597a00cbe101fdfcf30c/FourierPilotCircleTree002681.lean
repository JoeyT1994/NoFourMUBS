import FourierPilotCircleTree002682
import FourierPilotCircleTree002691
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002681
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![48, 57, 16, 16, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002682.state FourierPilotCircleTree002691.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002682.covered FourierPilotCircleTree002691.covered
#print axioms covered
end FourierPilotCircleTree002681
