import FourierPilotCircleTree002678
import FourierPilotCircleTree002679
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002677
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![48, 28, 16, 16, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002678.state FourierPilotCircleTree002679.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002678.covered FourierPilotCircleTree002679.covered
#print axioms covered
end FourierPilotCircleTree002677
