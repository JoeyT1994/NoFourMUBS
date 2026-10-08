import FourierPilotCircleTree005681
import FourierPilotCircleTree005682
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005680
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![28, 28, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005681.state FourierPilotCircleTree005682.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005681.covered FourierPilotCircleTree005682.covered
#print axioms covered
end FourierPilotCircleTree005680
