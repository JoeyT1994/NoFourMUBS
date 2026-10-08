import FourierPilotCircleTree001947
import FourierPilotCircleTree001966
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001946
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![49, 23, 31, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001947.state FourierPilotCircleTree001966.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001947.covered FourierPilotCircleTree001966.covered
#print axioms covered
end FourierPilotCircleTree001946
