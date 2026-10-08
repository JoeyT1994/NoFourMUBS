import FourierPilotCircleTree004246
import FourierPilotCircleTree004247
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004245
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 7, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004246.state FourierPilotCircleTree004247.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004246.covered FourierPilotCircleTree004247.covered
#print axioms covered
end FourierPilotCircleTree004245
