import FourierPilotCircleTree005083
import FourierPilotCircleTree005100
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005082
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![19, 19, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005083.state FourierPilotCircleTree005100.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005083.covered FourierPilotCircleTree005100.covered
#print axioms covered
end FourierPilotCircleTree005082
