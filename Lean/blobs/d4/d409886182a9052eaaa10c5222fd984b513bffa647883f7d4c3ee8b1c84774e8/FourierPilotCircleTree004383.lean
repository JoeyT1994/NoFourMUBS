import FourierPilotCircleTree004384
import FourierPilotCircleTree004385
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004383
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![111, 35, 82, 84, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004384.state FourierPilotCircleTree004385.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004384.covered FourierPilotCircleTree004385.covered
#print axioms covered
end FourierPilotCircleTree004383
