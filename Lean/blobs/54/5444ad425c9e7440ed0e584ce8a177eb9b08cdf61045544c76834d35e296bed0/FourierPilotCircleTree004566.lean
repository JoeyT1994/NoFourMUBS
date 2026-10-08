import FourierPilotCircleTree004567
import FourierPilotCircleTree004568
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004566
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![98, 93, 63, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004567.state FourierPilotCircleTree004568.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004567.covered FourierPilotCircleTree004568.covered
#print axioms covered
end FourierPilotCircleTree004566
