import FourierPilotCircleTree002684
import FourierPilotCircleTree002689
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002683
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![48, 57, 32, 32, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002684.state FourierPilotCircleTree002689.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002684.covered FourierPilotCircleTree002689.covered
#print axioms covered
end FourierPilotCircleTree002683
