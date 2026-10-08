import FourierPilotCircleTree004078
import FourierPilotCircleTree004079
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004077
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![10, 14, 13, 7, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004078.state FourierPilotCircleTree004079.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004078.covered FourierPilotCircleTree004079.covered
#print axioms covered
end FourierPilotCircleTree004077
