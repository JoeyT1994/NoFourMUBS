import FourierPilotCircleTree004084
import FourierPilotCircleTree004085
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004083
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![20, 14, 27, 15, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004084.state FourierPilotCircleTree004085.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004084.covered FourierPilotCircleTree004085.covered
#print axioms covered
end FourierPilotCircleTree004083
