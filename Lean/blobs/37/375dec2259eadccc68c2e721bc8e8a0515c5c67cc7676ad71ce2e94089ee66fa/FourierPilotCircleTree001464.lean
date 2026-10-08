import FourierPilotCircleTree001465
import FourierPilotCircleTree001466
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001464
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![10, 7, 6, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001465.state FourierPilotCircleTree001466.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001465.covered FourierPilotCircleTree001466.covered
#print axioms covered
end FourierPilotCircleTree001464
