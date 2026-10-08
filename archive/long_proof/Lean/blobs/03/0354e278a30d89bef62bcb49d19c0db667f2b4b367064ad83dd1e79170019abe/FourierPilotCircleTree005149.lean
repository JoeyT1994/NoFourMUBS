import FourierPilotCircleTree005150
import FourierPilotCircleTree005157
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005149
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![57, 57, 32, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005150.state FourierPilotCircleTree005157.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005150.covered FourierPilotCircleTree005157.covered
#print axioms covered
end FourierPilotCircleTree005149
