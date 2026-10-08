import FourierPilotCircleTree004048
import FourierPilotCircleTree004051
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004047
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![38, 95, 63, 52, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004048.state FourierPilotCircleTree004051.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004048.covered FourierPilotCircleTree004051.covered
#print axioms covered
end FourierPilotCircleTree004047
