import FourierPilotCircleTree001423
import FourierPilotCircleTree001446
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001422
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![9, 23, 15, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001423.state FourierPilotCircleTree001446.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001423.covered FourierPilotCircleTree001446.covered
#print axioms covered
end FourierPilotCircleTree001422
