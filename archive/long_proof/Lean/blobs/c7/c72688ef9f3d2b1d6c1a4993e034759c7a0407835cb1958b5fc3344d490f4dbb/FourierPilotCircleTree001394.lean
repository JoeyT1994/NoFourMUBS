import FourierPilotCircleTree001395
import FourierPilotCircleTree001396
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001394
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001395.state FourierPilotCircleTree001396.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001395.covered FourierPilotCircleTree001396.covered
#print axioms covered
end FourierPilotCircleTree001394
