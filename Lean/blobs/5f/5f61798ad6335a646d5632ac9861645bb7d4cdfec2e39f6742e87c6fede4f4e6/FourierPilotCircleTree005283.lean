import FourierPilotCircleTree005284
import FourierPilotCircleTree005317
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005283
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005284.state FourierPilotCircleTree005317.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005284.covered FourierPilotCircleTree005317.covered
#print axioms covered
end FourierPilotCircleTree005283
