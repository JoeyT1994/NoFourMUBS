import FourierPilotCircleTree001470
import FourierPilotCircleTree001471
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001469
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![10, 14, 13, 7, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001470.state FourierPilotCircleTree001471.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001470.covered FourierPilotCircleTree001471.covered
#print axioms covered
end FourierPilotCircleTree001469
