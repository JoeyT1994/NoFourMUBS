import FourierPilotCircleTree002347
import FourierPilotCircleTree002348
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002346
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 6, 4, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002347.state FourierPilotCircleTree002348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002347.covered FourierPilotCircleTree002348.covered
#print axioms covered
end FourierPilotCircleTree002346
