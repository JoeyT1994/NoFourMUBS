import FourierPilotCircleTree000521
import FourierPilotCircleTree000522
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000520
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![57, 57, 63, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000521.state FourierPilotCircleTree000522.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000521.covered FourierPilotCircleTree000522.covered
#print axioms covered
end FourierPilotCircleTree000520
