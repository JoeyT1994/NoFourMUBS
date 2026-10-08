import FourierPilotCircleTree001884
import FourierPilotCircleTree001885
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001883
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![46, 49, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001884.state FourierPilotCircleTree001885.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001884.covered FourierPilotCircleTree001885.covered
#print axioms covered
end FourierPilotCircleTree001883
