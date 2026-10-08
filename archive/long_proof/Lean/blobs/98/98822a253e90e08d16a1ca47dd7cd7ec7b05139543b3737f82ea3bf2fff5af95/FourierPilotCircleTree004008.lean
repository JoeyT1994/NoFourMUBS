import FourierPilotCircleTree004009
import FourierPilotCircleTree004056
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004008
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004009.state FourierPilotCircleTree004056.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004009.covered FourierPilotCircleTree004056.covered
#print axioms covered
end FourierPilotCircleTree004008
