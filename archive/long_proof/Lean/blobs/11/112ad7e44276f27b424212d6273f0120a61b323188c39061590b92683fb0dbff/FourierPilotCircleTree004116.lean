import FourierPilotCircleTree004117
import FourierPilotCircleTree004118
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004116
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004117.state FourierPilotCircleTree004118.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004117.covered FourierPilotCircleTree004118.covered
#print axioms covered
end FourierPilotCircleTree004116
