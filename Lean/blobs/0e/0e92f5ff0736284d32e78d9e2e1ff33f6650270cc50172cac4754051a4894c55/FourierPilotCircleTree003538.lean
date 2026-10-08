import FourierPilotCircleTree003539
import FourierPilotCircleTree003572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003538
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![12, 7, 4, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003539.state FourierPilotCircleTree003572.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003539.covered FourierPilotCircleTree003572.covered
#print axioms covered
end FourierPilotCircleTree003538
