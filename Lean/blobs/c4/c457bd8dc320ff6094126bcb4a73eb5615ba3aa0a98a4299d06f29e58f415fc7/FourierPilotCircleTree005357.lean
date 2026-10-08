import FourierPilotCircleTree005358
import FourierPilotCircleTree005359
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005357
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![28, 47, 31, 43, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005358.state FourierPilotCircleTree005359.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005358.covered FourierPilotCircleTree005359.covered
#print axioms covered
end FourierPilotCircleTree005357
