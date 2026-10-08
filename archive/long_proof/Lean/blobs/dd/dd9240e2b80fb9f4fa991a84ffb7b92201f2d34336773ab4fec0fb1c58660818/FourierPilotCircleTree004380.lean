import FourierPilotCircleTree004381
import FourierPilotCircleTree004382
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004380
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 35, 41, 84, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004381.state FourierPilotCircleTree004382.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004381.covered FourierPilotCircleTree004382.covered
#print axioms covered
end FourierPilotCircleTree004380
