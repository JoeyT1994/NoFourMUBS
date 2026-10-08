import FourierPilotCircleTree001078
import FourierPilotCircleTree001079
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001077
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 14, 8, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001078.state FourierPilotCircleTree001079.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001078.covered FourierPilotCircleTree001079.covered
#print axioms covered
end FourierPilotCircleTree001077
