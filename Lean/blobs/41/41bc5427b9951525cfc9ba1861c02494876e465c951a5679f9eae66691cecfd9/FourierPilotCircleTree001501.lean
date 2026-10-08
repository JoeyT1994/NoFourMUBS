import FourierPilotCircleTree001502
import FourierPilotCircleTree001503
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001501
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001502.state FourierPilotCircleTree001503.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001502.covered FourierPilotCircleTree001503.covered
#print axioms covered
end FourierPilotCircleTree001501
