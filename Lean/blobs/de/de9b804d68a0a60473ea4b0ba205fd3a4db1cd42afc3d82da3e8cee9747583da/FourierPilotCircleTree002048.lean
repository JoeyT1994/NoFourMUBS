import FourierPilotCircleTree002049
import FourierPilotCircleTree002050
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002048
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002049.state FourierPilotCircleTree002050.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002049.covered FourierPilotCircleTree002050.covered
#print axioms covered
end FourierPilotCircleTree002048
