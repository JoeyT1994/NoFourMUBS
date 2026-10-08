import FourierPilotCircleTree001959
import FourierPilotCircleTree001960
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001958
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![98, 93, 63, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001959.state FourierPilotCircleTree001960.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001959.covered FourierPilotCircleTree001960.covered
#print axioms covered
end FourierPilotCircleTree001958
