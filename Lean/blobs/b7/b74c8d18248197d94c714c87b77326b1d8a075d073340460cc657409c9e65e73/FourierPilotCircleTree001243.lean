import FourierPilotCircleTree001244
import FourierPilotCircleTree001245
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001243
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![80, 111, 127, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001244.state FourierPilotCircleTree001245.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001244.covered FourierPilotCircleTree001245.covered
#print axioms covered
end FourierPilotCircleTree001243
