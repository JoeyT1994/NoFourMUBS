import FourierPilotCircleTree004932
import FourierPilotCircleTree004933
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004931
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 4, 7, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004932.state FourierPilotCircleTree004933.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004932.covered FourierPilotCircleTree004933.covered
#print axioms covered
end FourierPilotCircleTree004931
