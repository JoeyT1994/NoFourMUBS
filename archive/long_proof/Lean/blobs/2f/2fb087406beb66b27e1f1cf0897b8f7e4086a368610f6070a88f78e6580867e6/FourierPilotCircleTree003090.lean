import FourierPilotCircleTree003091
import FourierPilotCircleTree003118
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003090
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 4, 7, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003091.state FourierPilotCircleTree003118.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003091.covered FourierPilotCircleTree003118.covered
#print axioms covered
end FourierPilotCircleTree003090
