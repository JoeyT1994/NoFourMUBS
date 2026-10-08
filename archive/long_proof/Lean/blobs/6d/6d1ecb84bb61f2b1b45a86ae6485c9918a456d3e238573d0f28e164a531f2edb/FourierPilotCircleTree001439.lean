import FourierPilotCircleTree001440
import FourierPilotCircleTree001443
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001439
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![38, 95, 63, 52, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001440.state FourierPilotCircleTree001443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001440.covered FourierPilotCircleTree001443.covered
#print axioms covered
end FourierPilotCircleTree001439
