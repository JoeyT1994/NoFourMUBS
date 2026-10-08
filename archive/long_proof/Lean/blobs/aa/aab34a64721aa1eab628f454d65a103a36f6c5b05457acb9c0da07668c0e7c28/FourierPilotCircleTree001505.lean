import FourierPilotCircleTree001506
import FourierPilotCircleTree001559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001505
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001506.state FourierPilotCircleTree001559.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001506.covered FourierPilotCircleTree001559.covered
#print axioms covered
end FourierPilotCircleTree001505
