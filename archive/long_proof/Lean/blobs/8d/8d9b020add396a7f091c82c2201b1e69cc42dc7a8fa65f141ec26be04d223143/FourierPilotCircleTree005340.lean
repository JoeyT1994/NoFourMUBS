import FourierPilotCircleTree005341
import FourierPilotCircleTree005342
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005340
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![14, 11, 7, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005341.state FourierPilotCircleTree005342.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005341.covered FourierPilotCircleTree005342.covered
#print axioms covered
end FourierPilotCircleTree005340
