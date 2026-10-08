import FourierPilotCircleTree001577
import FourierPilotCircleTree001578
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001576
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![14, 24, 8, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001577.state FourierPilotCircleTree001578.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001577.covered FourierPilotCircleTree001578.covered
#print axioms covered
end FourierPilotCircleTree001576
