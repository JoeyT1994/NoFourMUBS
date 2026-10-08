import FourierPilotCircleTree000427
import FourierPilotCircleTree000428
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000426
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![77, 77, 64, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000427.state FourierPilotCircleTree000428.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000427.covered FourierPilotCircleTree000428.covered
#print axioms covered
end FourierPilotCircleTree000426
