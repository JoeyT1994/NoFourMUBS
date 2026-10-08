import FourierPilotCircleTree001402
import FourierPilotCircleTree001403
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001401
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001402.state FourierPilotCircleTree001403.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001402.covered FourierPilotCircleTree001403.covered
#print axioms covered
end FourierPilotCircleTree001401
