import FourierPilotCircleTree003681
import FourierPilotCircleTree003706
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003680
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![24, 23, 8, 21, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003681.state FourierPilotCircleTree003706.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003681.covered FourierPilotCircleTree003706.covered
#print axioms covered
end FourierPilotCircleTree003680
