import FourierPilotCircleTree000080
import FourierPilotCircleTree000097
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000079
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![10, 14, 13, 4, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000080.state FourierPilotCircleTree000097.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000080.covered FourierPilotCircleTree000097.covered
#print axioms covered
end FourierPilotCircleTree000079
