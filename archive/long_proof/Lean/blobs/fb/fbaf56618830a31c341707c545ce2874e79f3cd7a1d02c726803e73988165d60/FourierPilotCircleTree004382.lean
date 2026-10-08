import FourierPilotCircleTree004383
import FourierPilotCircleTree004386
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004382
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![111, 35, 41, 84, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004383.state FourierPilotCircleTree004386.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004383.covered FourierPilotCircleTree004386.covered
#print axioms covered
end FourierPilotCircleTree004382
