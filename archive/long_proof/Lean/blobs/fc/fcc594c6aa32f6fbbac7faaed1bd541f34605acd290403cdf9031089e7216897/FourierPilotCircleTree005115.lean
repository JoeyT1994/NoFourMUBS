import FourierPilotCircleTree005116
import FourierPilotCircleTree005117
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005115
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005116.state FourierPilotCircleTree005117.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005116.covered FourierPilotCircleTree005117.covered
#print axioms covered
end FourierPilotCircleTree005115
