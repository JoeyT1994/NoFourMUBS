import FourierPilotCircleTree000082
import FourierPilotCircleTree000095
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000081
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![10, 14, 13, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000082.state FourierPilotCircleTree000095.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000082.covered FourierPilotCircleTree000095.covered
#print axioms covered
end FourierPilotCircleTree000081
