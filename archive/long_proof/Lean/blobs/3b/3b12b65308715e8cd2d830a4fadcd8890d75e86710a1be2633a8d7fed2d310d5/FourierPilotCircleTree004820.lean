import FourierPilotCircleTree004821
import FourierPilotCircleTree004822
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![98, 50, 55, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004821.state FourierPilotCircleTree004822.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004821.covered FourierPilotCircleTree004822.covered
#print axioms covered
end FourierPilotCircleTree004820
