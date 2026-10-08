import FourierPilotCircleTree002284
import FourierPilotCircleTree002323
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002283
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 13, 10, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002284.state FourierPilotCircleTree002323.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002284.covered FourierPilotCircleTree002323.covered
#print axioms covered
end FourierPilotCircleTree002283
