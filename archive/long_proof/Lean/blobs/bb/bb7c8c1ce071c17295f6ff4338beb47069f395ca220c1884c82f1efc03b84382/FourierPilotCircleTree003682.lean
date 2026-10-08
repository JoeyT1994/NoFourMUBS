import FourierPilotCircleTree003683
import FourierPilotCircleTree003684
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003682
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![24, 23, 16, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003683.state FourierPilotCircleTree003684.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003683.covered FourierPilotCircleTree003684.covered
#print axioms covered
end FourierPilotCircleTree003682
