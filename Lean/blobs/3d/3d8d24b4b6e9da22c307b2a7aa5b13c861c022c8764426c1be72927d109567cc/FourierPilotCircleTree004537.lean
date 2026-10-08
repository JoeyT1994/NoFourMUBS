import FourierPilotCircleTree004538
import FourierPilotCircleTree004539
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004537
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![12, 5, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004538.state FourierPilotCircleTree004539.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004538.covered FourierPilotCircleTree004539.covered
#print axioms covered
end FourierPilotCircleTree004537
