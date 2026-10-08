import FourierPilotCircleTree004135
import FourierPilotCircleTree004136
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004134
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![13, 9, 10, 8, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004135.state FourierPilotCircleTree004136.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004135.covered FourierPilotCircleTree004136.covered
#print axioms covered
end FourierPilotCircleTree004134
