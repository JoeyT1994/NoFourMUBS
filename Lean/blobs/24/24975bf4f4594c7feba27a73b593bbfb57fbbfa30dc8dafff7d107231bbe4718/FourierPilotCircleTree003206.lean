import FourierPilotCircleTree003207
import FourierPilotCircleTree003208
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003206
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 7, 10, 11, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003207.state FourierPilotCircleTree003208.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003207.covered FourierPilotCircleTree003208.covered
#print axioms covered
end FourierPilotCircleTree003206
