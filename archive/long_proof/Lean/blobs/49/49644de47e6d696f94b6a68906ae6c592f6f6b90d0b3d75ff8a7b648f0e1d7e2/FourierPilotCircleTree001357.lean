import FourierPilotCircleTree001358
import FourierPilotCircleTree001371
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001357
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![29, 9, 8, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001358.state FourierPilotCircleTree001371.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001358.covered FourierPilotCircleTree001371.covered
#print axioms covered
end FourierPilotCircleTree001357
