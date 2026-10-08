import FourierPilotCircleTree000505
import FourierPilotCircleTree000506
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000504
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![14, 14, 15, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000505.state FourierPilotCircleTree000506.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000505.covered FourierPilotCircleTree000506.covered
#print axioms covered
end FourierPilotCircleTree000504
