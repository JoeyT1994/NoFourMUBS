import FourierPilotCircleTree003248
import FourierPilotCircleTree003279
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003247
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003248.state FourierPilotCircleTree003279.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003248.covered FourierPilotCircleTree003279.covered
#print axioms covered
end FourierPilotCircleTree003247
