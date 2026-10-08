import FourierPilotCircleTree002333
import FourierPilotCircleTree002334
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002332
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 7, 10, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002333.state FourierPilotCircleTree002334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002333.covered FourierPilotCircleTree002334.covered
#print axioms covered
end FourierPilotCircleTree002332
