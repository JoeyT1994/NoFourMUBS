import FourierPilotCircleTree001880
import FourierPilotCircleTree001903
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001879
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![23, 24, 8, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001880.state FourierPilotCircleTree001903.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001880.covered FourierPilotCircleTree001903.covered
#print axioms covered
end FourierPilotCircleTree001879
