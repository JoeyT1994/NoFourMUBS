import FourierPilotCircleTree001356
import FourierPilotCircleTree001357
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001355
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 9, 8, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001356.state FourierPilotCircleTree001357.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001356.covered FourierPilotCircleTree001357.covered
#print axioms covered
end FourierPilotCircleTree001355
