import FourierPilotCircleTree003416
import FourierPilotCircleTree003417
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003415
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003416.state FourierPilotCircleTree003417.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003416.covered FourierPilotCircleTree003417.covered
#print axioms covered
end FourierPilotCircleTree003415
