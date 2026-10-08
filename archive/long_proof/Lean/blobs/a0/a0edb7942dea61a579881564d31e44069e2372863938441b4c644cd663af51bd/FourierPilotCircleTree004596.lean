import FourierPilotCircleTree004597
import FourierPilotCircleTree004598
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004596
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004597.state FourierPilotCircleTree004598.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004597.covered FourierPilotCircleTree004598.covered
#print axioms covered
end FourierPilotCircleTree004596
