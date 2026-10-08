import FourierPilotCircleTree005356
import FourierPilotCircleTree005357
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005355
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![28, 47, 31, 21, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005356.state FourierPilotCircleTree005357.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005356.covered FourierPilotCircleTree005357.covered
#print axioms covered
end FourierPilotCircleTree005355
