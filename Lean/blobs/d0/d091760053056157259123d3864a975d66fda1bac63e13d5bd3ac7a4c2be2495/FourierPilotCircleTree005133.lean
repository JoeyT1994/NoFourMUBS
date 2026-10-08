import FourierPilotCircleTree005134
import FourierPilotCircleTree005161
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![14, 14, 8, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005134.state FourierPilotCircleTree005161.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005134.covered FourierPilotCircleTree005161.covered
#print axioms covered
end FourierPilotCircleTree005133
