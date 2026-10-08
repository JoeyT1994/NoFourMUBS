import FourierPilotCircleTree001585
import FourierPilotCircleTree001586
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001584
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![28, 48, 16, 43, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001585.state FourierPilotCircleTree001586.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001585.covered FourierPilotCircleTree001586.covered
#print axioms covered
end FourierPilotCircleTree001584
