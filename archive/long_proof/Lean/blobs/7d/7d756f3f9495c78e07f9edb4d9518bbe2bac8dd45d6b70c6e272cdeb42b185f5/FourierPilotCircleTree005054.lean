import FourierPilotCircleTree005055
import FourierPilotCircleTree005108
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005054
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005055.state FourierPilotCircleTree005108.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005055.covered FourierPilotCircleTree005108.covered
#print axioms covered
end FourierPilotCircleTree005054
