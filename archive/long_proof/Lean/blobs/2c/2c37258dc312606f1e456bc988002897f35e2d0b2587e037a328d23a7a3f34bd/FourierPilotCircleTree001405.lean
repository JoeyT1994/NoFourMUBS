import FourierPilotCircleTree001406
import FourierPilotCircleTree001447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001405
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 5, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001406.state FourierPilotCircleTree001447.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001406.covered FourierPilotCircleTree001447.covered
#print axioms covered
end FourierPilotCircleTree001405
