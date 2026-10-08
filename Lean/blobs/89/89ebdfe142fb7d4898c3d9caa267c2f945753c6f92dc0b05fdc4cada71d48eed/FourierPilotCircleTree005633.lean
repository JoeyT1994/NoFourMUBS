import FourierPilotCircleTree005634
import FourierPilotCircleTree005635
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005633
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005634.state FourierPilotCircleTree005635.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005634.covered FourierPilotCircleTree005635.covered
#print axioms covered
end FourierPilotCircleTree005633
