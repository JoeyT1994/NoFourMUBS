import FourierPilotCircleTree000503
import FourierPilotCircleTree000504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000502
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![14, 14, 15, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000503.state FourierPilotCircleTree000504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000503.covered FourierPilotCircleTree000504.covered
#print axioms covered
end FourierPilotCircleTree000502
