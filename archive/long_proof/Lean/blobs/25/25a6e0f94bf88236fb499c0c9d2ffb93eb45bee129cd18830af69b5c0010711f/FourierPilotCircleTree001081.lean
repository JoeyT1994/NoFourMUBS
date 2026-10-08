import FourierPilotCircleTree001082
import FourierPilotCircleTree001109
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001081
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 14, 8, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001082.state FourierPilotCircleTree001109.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001082.covered FourierPilotCircleTree001109.covered
#print axioms covered
end FourierPilotCircleTree001081
