import FourierPilotCircleTree004485
import FourierPilotCircleTree004512
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004484
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![23, 24, 8, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004485.state FourierPilotCircleTree004512.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004485.covered FourierPilotCircleTree004512.covered
#print axioms covered
end FourierPilotCircleTree004484
