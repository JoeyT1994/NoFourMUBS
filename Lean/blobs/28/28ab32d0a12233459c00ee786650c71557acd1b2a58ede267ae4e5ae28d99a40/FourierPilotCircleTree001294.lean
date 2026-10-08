import FourierPilotCircleTree001295
import FourierPilotCircleTree001296
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001294
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![111, 80, 32, 68, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001295.state FourierPilotCircleTree001296.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001295.covered FourierPilotCircleTree001296.covered
#print axioms covered
end FourierPilotCircleTree001294
