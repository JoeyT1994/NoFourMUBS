import FourierPilotCircleTree002275
import FourierPilotCircleTree002276
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002274
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 6, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002275.state FourierPilotCircleTree002276.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002275.covered FourierPilotCircleTree002276.covered
#print axioms covered
end FourierPilotCircleTree002274
