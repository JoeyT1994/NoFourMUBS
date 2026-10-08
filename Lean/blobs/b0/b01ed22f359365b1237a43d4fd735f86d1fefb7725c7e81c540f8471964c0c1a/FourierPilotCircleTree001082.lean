import FourierPilotCircleTree001083
import FourierPilotCircleTree001108
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001082
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![28, 14, 8, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001083.state FourierPilotCircleTree001108.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001083.covered FourierPilotCircleTree001108.covered
#print axioms covered
end FourierPilotCircleTree001082
