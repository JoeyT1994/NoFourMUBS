import FourierPilotCircleTree004363
import FourierPilotCircleTree004364
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004362
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![27, 8, 20, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004363.state FourierPilotCircleTree004364.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004363.covered FourierPilotCircleTree004364.covered
#print axioms covered
end FourierPilotCircleTree004362
