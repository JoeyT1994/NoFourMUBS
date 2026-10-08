import FourierPilotCircleTree004727
import FourierPilotCircleTree004728
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004726
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![4, 11, 7, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004727.state FourierPilotCircleTree004728.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004727.covered FourierPilotCircleTree004728.covered
#print axioms covered
end FourierPilotCircleTree004726
