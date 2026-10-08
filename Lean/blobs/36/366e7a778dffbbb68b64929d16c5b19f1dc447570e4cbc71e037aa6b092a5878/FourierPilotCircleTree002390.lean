import FourierPilotCircleTree002391
import FourierPilotCircleTree002392
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002390
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![14, 11, 7, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002391.state FourierPilotCircleTree002392.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002391.covered FourierPilotCircleTree002392.covered
#print axioms covered
end FourierPilotCircleTree002390
