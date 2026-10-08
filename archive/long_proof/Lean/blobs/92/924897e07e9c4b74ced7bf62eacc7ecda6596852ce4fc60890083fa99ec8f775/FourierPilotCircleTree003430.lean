import FourierPilotCircleTree003431
import FourierPilotCircleTree003432
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003430
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 13, 10, 12, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003431.state FourierPilotCircleTree003432.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003431.covered FourierPilotCircleTree003432.covered
#print axioms covered
end FourierPilotCircleTree003430
