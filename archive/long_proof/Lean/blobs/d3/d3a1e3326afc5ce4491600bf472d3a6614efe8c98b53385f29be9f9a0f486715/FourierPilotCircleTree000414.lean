import FourierPilotCircleTree000415
import FourierPilotCircleTree000436
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000414
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![19, 19, 16, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000415.state FourierPilotCircleTree000436.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000415.covered FourierPilotCircleTree000436.covered
#print axioms covered
end FourierPilotCircleTree000414
