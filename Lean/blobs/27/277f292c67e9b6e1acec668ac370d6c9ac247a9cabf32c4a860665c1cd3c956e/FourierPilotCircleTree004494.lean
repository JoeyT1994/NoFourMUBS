import FourierPilotCircleTree004495
import FourierPilotCircleTree004508
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004494
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![46, 49, 16, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004495.state FourierPilotCircleTree004508.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004495.covered FourierPilotCircleTree004508.covered
#print axioms covered
end FourierPilotCircleTree004494
