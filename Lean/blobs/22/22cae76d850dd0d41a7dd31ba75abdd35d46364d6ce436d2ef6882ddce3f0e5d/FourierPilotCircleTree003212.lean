import FourierPilotCircleTree003213
import FourierPilotCircleTree003214
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003212
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003213.state FourierPilotCircleTree003214.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003213.covered FourierPilotCircleTree003214.covered
#print axioms covered
end FourierPilotCircleTree003212
