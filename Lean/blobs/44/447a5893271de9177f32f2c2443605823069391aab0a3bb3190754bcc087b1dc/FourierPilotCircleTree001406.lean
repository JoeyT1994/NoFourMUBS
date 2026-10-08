import FourierPilotCircleTree001407
import FourierPilotCircleTree001408
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001406
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 5, 7, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001407.state FourierPilotCircleTree001408.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001407.covered FourierPilotCircleTree001408.covered
#print axioms covered
end FourierPilotCircleTree001406
