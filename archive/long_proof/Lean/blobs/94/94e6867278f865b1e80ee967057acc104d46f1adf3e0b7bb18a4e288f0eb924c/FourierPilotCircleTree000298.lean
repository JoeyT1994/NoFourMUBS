import FourierPilotCircleTree000299
import FourierPilotCircleTree000336
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000298
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000299.state FourierPilotCircleTree000336.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000299.covered FourierPilotCircleTree000336.covered
#print axioms covered
end FourierPilotCircleTree000298
