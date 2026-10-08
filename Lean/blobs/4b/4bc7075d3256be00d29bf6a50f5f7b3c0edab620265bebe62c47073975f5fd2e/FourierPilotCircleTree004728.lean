import FourierPilotCircleTree004729
import FourierPilotCircleTree004730
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004728
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![4, 11, 7, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004729.state FourierPilotCircleTree004730.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004729.covered FourierPilotCircleTree004730.covered
#print axioms covered
end FourierPilotCircleTree004728
