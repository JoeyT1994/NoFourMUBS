import FourierPilotCircleTree002283
import FourierPilotCircleTree002324
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002282
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 13, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002283.state FourierPilotCircleTree002324.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002283.covered FourierPilotCircleTree002324.covered
#print axioms covered
end FourierPilotCircleTree002282
