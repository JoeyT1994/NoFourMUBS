import FourierPilotCircleTree002680
import FourierPilotCircleTree002681
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002679
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![48, 28, 16, 16, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002680.state FourierPilotCircleTree002681.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002680.covered FourierPilotCircleTree002681.covered
#print axioms covered
end FourierPilotCircleTree002679
