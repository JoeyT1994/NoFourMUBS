import FourierPilotCircleTree003086
import FourierPilotCircleTree003087
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003085
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 4, 7, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003086.state FourierPilotCircleTree003087.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003086.covered FourierPilotCircleTree003087.covered
#print axioms covered
end FourierPilotCircleTree003085
