import FourierPilotCircleTree001436
import FourierPilotCircleTree001437
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001435
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![38, 47, 63, 52, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001436.state FourierPilotCircleTree001437.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001436.covered FourierPilotCircleTree001437.covered
#print axioms covered
end FourierPilotCircleTree001435
