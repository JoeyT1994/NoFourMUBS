import FourierPilotCircleTree001953
import FourierPilotCircleTree001964
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001952
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![49, 46, 63, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001953.state FourierPilotCircleTree001964.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001953.covered FourierPilotCircleTree001964.covered
#print axioms covered
end FourierPilotCircleTree001952
