import FourierPilotCircleTree005340
import FourierPilotCircleTree005361
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005339
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![7, 11, 7, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005340.state FourierPilotCircleTree005361.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005340.covered FourierPilotCircleTree005361.covered
#print axioms covered
end FourierPilotCircleTree005339
