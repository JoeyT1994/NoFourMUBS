import FourierPilotCircleTree003926
import FourierPilotCircleTree003943
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003925
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 5, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003926.state FourierPilotCircleTree003943.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003926.covered FourierPilotCircleTree003943.covered
#print axioms covered
end FourierPilotCircleTree003925
