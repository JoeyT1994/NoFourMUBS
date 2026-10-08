import FourierPilotCircleTree004253
import FourierPilotCircleTree004254
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004252
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![11, 14, 15, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004253.state FourierPilotCircleTree004254.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004253.covered FourierPilotCircleTree004254.covered
#print axioms covered
end FourierPilotCircleTree004252
