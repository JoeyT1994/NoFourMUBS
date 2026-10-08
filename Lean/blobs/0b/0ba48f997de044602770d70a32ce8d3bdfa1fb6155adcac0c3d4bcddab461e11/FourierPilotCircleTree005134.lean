import FourierPilotCircleTree005135
import FourierPilotCircleTree005160
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005134
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![28, 14, 8, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005135.state FourierPilotCircleTree005160.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005135.covered FourierPilotCircleTree005160.covered
#print axioms covered
end FourierPilotCircleTree005134
