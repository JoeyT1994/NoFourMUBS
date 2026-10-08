import FourierPilotCircleTree002494
import FourierPilotCircleTree002539
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002493
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![5, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002494.state FourierPilotCircleTree002539.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002494.covered FourierPilotCircleTree002539.covered
#print axioms covered
end FourierPilotCircleTree002493
