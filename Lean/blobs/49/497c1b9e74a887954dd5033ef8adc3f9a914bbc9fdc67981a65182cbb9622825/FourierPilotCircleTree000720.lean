import FourierPilotCircleTree000721
import FourierPilotCircleTree000790
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000720
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000721.state FourierPilotCircleTree000790.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000721.covered FourierPilotCircleTree000790.covered
#print axioms covered
end FourierPilotCircleTree000720
