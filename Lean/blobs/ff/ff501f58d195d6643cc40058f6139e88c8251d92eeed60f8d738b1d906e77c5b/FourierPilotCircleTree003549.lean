import FourierPilotCircleTree003550
import FourierPilotCircleTree003551
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003549
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![48, 28, 16, 16, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003550.state FourierPilotCircleTree003551.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003550.covered FourierPilotCircleTree003551.covered
#print axioms covered
end FourierPilotCircleTree003549
