import FourierPilotCircleTree004227
import FourierPilotCircleTree004228
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004226
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004227.state FourierPilotCircleTree004228.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004227.covered FourierPilotCircleTree004228.covered
#print axioms covered
end FourierPilotCircleTree004226
