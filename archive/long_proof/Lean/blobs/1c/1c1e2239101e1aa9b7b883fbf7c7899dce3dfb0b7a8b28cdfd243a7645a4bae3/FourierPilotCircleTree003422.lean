import FourierPilotCircleTree003423
import FourierPilotCircleTree003424
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003422
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003423.state FourierPilotCircleTree003424.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003423.covered FourierPilotCircleTree003424.covered
#print axioms covered
end FourierPilotCircleTree003422
