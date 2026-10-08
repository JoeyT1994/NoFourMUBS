import FourierPilotCircleTree001084
import FourierPilotCircleTree001107
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001083
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![28, 28, 8, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001084.state FourierPilotCircleTree001107.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001084.covered FourierPilotCircleTree001107.covered
#print axioms covered
end FourierPilotCircleTree001083
