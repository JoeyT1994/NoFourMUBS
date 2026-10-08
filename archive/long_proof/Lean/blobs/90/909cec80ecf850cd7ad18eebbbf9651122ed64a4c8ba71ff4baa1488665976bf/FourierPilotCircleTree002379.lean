import FourierPilotCircleTree002380
import FourierPilotCircleTree002381
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002379
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 2, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002380.state FourierPilotCircleTree002381.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002380.covered FourierPilotCircleTree002381.covered
#print axioms covered
end FourierPilotCircleTree002379
