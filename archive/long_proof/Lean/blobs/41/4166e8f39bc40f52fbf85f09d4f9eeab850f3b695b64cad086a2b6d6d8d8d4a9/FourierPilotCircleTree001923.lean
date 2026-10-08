import FourierPilotCircleTree001924
import FourierPilotCircleTree001925
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001923
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 5, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001924.state FourierPilotCircleTree001925.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001924.covered FourierPilotCircleTree001925.covered
#print axioms covered
end FourierPilotCircleTree001923
