import FourierPilotCircleTree003158
import FourierPilotCircleTree003193
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003157
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 13, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003158.state FourierPilotCircleTree003193.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003158.covered FourierPilotCircleTree003193.covered
#print axioms covered
end FourierPilotCircleTree003157
