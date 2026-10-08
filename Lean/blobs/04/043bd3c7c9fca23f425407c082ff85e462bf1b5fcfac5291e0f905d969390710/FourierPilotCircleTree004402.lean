import FourierPilotCircleTree004403
import FourierPilotCircleTree004408
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004402
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![7, 4, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004403.state FourierPilotCircleTree004408.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004403.covered FourierPilotCircleTree004408.covered
#print axioms covered
end FourierPilotCircleTree004402
