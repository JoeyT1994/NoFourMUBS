import FourierPilotCircleTree000501
import FourierPilotCircleTree000502
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000500
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![14, 14, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000501.state FourierPilotCircleTree000502.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000501.covered FourierPilotCircleTree000502.covered
#print axioms covered
end FourierPilotCircleTree000500
