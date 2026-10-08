import FourierPilotCircleTree005230
import FourierPilotCircleTree005233
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005229
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005230.state FourierPilotCircleTree005233.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005230.covered FourierPilotCircleTree005233.covered
#print axioms covered
end FourierPilotCircleTree005229
