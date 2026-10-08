import FourierPilotCircleTree004927
import FourierPilotCircleTree004934
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004926
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 4, 7, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004927.state FourierPilotCircleTree004934.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004927.covered FourierPilotCircleTree004934.covered
#print axioms covered
end FourierPilotCircleTree004926
