import FourierPilotCircleTree004569
import FourierPilotCircleTree004570
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004568
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![98, 93, 127, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004569.state FourierPilotCircleTree004570.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004569.covered FourierPilotCircleTree004570.covered
#print axioms covered
end FourierPilotCircleTree004568
