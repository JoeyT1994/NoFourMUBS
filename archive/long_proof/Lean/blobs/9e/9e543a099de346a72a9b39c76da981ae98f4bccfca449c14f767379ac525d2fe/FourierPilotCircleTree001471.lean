import FourierPilotCircleTree001472
import FourierPilotCircleTree001497
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001471
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![10, 14, 13, 15, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001472.state FourierPilotCircleTree001497.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001472.covered FourierPilotCircleTree001497.covered
#print axioms covered
end FourierPilotCircleTree001471
