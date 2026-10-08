import FourierPilotCircleTree005292
import FourierPilotCircleTree005315
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005291
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 4, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005292.state FourierPilotCircleTree005315.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005292.covered FourierPilotCircleTree005315.covered
#print axioms covered
end FourierPilotCircleTree005291
