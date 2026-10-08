import FourierPilotCircleTree000954
import FourierPilotCircleTree000969
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000953
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 49, 27, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000954.state FourierPilotCircleTree000969.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000954.covered FourierPilotCircleTree000969.covered
#print axioms covered
end FourierPilotCircleTree000953
