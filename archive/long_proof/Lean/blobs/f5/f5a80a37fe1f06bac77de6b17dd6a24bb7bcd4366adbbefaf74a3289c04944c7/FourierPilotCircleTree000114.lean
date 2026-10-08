import FourierPilotCircleTree000115
import FourierPilotCircleTree000116
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000114
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 4, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000115.state FourierPilotCircleTree000116.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000115.covered FourierPilotCircleTree000116.covered
#print axioms covered
end FourierPilotCircleTree000114
