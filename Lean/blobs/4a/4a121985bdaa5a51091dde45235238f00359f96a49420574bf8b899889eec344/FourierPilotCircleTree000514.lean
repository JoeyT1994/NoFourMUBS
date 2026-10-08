import FourierPilotCircleTree000515
import FourierPilotCircleTree000516
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000514
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![28, 28, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000515.state FourierPilotCircleTree000516.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000515.covered FourierPilotCircleTree000516.covered
#print axioms covered
end FourierPilotCircleTree000514
