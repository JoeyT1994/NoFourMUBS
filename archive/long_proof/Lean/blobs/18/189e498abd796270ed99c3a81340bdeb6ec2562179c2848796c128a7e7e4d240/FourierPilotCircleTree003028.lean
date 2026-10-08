import FourierPilotCircleTree003029
import FourierPilotCircleTree003076
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003028
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003029.state FourierPilotCircleTree003076.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003029.covered FourierPilotCircleTree003076.covered
#print axioms covered
end FourierPilotCircleTree003028
