import FourierPilotCircleTree001582
import FourierPilotCircleTree001597
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001581
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![28, 24, 16, 21, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001582.state FourierPilotCircleTree001597.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001582.covered FourierPilotCircleTree001597.covered
#print axioms covered
end FourierPilotCircleTree001581
