import FourierPilotCircleTree000757
import FourierPilotCircleTree000758
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000756
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![98, 100, 54, 34, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000757.state FourierPilotCircleTree000758.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000757.covered FourierPilotCircleTree000758.covered
#print axioms covered
end FourierPilotCircleTree000756
