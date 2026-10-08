import FourierPilotCircleTree005196
import FourierPilotCircleTree005227
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005195
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005196.state FourierPilotCircleTree005227.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005196.covered FourierPilotCircleTree005227.covered
#print axioms covered
end FourierPilotCircleTree005195
