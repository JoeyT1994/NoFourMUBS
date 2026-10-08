import FourierPilotCircleTree000287
import FourierPilotCircleTree000288
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000286
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![47, 28, 31, 31, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000287.state FourierPilotCircleTree000288.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000287.covered FourierPilotCircleTree000288.covered
#print axioms covered
end FourierPilotCircleTree000286
