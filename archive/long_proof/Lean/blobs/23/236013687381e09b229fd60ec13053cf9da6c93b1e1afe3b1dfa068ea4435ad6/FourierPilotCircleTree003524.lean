import FourierPilotCircleTree003525
import FourierPilotCircleTree003526
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003524
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003525.state FourierPilotCircleTree003526.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003525.covered FourierPilotCircleTree003526.covered
#print axioms covered
end FourierPilotCircleTree003524
