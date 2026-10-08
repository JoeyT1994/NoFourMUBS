import FourierPilotCircleTree005326
import FourierPilotCircleTree005327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005325
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 5, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005326.state FourierPilotCircleTree005327.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005326.covered FourierPilotCircleTree005327.covered
#print axioms covered
end FourierPilotCircleTree005325
