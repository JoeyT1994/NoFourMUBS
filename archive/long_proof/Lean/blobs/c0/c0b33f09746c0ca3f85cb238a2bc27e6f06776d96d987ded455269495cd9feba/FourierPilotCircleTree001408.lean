import FourierPilotCircleTree001409
import FourierPilotCircleTree001410
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001408
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 5, 7, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001409.state FourierPilotCircleTree001410.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001409.covered FourierPilotCircleTree001410.covered
#print axioms covered
end FourierPilotCircleTree001408
