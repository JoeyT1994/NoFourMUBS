import FourierPilotCircleTree004082
import FourierPilotCircleTree004083
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004081
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![20, 14, 13, 15, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004082.state FourierPilotCircleTree004083.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004082.covered FourierPilotCircleTree004083.covered
#print axioms covered
end FourierPilotCircleTree004081
