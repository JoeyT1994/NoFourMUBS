import FourierPilotCircleTree005277
import FourierPilotCircleTree005364
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005276
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005277.state FourierPilotCircleTree005364.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005277.covered FourierPilotCircleTree005364.covered
#print axioms covered
end FourierPilotCircleTree005276
