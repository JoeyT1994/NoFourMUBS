import FourierPilotCircleTree000285
import FourierPilotCircleTree000286
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000284
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![47, 28, 31, 31, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000285.state FourierPilotCircleTree000286.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000285.covered FourierPilotCircleTree000286.covered
#print axioms covered
end FourierPilotCircleTree000284
