import FourierPilotCircleTree004492
import FourierPilotCircleTree004493
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004491
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![46, 49, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004492.state FourierPilotCircleTree004493.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004492.covered FourierPilotCircleTree004493.covered
#print axioms covered
end FourierPilotCircleTree004491
