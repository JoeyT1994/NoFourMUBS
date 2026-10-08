import FourierPilotCircleTree004416
import FourierPilotCircleTree004439
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004415
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![6, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004416.state FourierPilotCircleTree004439.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004416.covered FourierPilotCircleTree004439.covered
#print axioms covered
end FourierPilotCircleTree004415
