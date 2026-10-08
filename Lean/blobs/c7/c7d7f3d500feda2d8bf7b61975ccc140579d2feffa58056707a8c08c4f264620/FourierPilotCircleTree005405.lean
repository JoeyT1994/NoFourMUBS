import FourierPilotCircleTree005406
import FourierPilotCircleTree005415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005405
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![9, 27, 20, 25, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005406.state FourierPilotCircleTree005415.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005406.covered FourierPilotCircleTree005415.covered
#print axioms covered
end FourierPilotCircleTree005405
