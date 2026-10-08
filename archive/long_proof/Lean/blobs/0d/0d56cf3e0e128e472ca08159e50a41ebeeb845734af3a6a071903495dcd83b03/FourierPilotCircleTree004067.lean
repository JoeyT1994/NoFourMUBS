import FourierPilotCircleTree004068
import FourierPilotCircleTree004069
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004067
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 7, 6, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004068.state FourierPilotCircleTree004069.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004068.covered FourierPilotCircleTree004069.covered
#print axioms covered
end FourierPilotCircleTree004067
