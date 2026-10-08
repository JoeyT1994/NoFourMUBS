import FourierPilotCircleTree001484
import FourierPilotCircleTree001493
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001483
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![41, 58, 27, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001484.state FourierPilotCircleTree001493.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001484.covered FourierPilotCircleTree001493.covered
#print axioms covered
end FourierPilotCircleTree001483
