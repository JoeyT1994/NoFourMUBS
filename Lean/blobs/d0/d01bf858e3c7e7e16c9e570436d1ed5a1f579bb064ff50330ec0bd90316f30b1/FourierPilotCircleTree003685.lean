import FourierPilotCircleTree003686
import FourierPilotCircleTree003703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003685
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![49, 46, 16, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003686.state FourierPilotCircleTree003703.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003686.covered FourierPilotCircleTree003703.covered
#print axioms covered
end FourierPilotCircleTree003685
