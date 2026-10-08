import FourierPilotCircleTree001467
import FourierPilotCircleTree001468
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001466
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![10, 7, 13, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001467.state FourierPilotCircleTree001468.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001467.covered FourierPilotCircleTree001468.covered
#print axioms covered
end FourierPilotCircleTree001466
