import FourierPilotCircleTree003590
import FourierPilotCircleTree003591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003589
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003590.state FourierPilotCircleTree003591.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003590.covered FourierPilotCircleTree003591.covered
#print axioms covered
end FourierPilotCircleTree003589
