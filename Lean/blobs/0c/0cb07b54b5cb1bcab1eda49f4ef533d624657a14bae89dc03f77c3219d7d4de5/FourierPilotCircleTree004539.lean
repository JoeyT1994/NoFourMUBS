import FourierPilotCircleTree004540
import FourierPilotCircleTree004577
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004539
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![12, 11, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004540.state FourierPilotCircleTree004577.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004540.covered FourierPilotCircleTree004577.covered
#print axioms covered
end FourierPilotCircleTree004539
