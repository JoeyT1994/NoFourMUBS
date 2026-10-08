import FourierPilotCircleTree005296
import FourierPilotCircleTree005297
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005295
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 9, 10, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005296.state FourierPilotCircleTree005297.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005296.covered FourierPilotCircleTree005297.covered
#print axioms covered
end FourierPilotCircleTree005295
