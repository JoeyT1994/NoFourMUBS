import FourierPilotCircleTree004787
import FourierPilotCircleTree004826
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004786
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![12, 12, 13, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004787.state FourierPilotCircleTree004826.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004787.covered FourierPilotCircleTree004826.covered
#print axioms covered
end FourierPilotCircleTree004786
