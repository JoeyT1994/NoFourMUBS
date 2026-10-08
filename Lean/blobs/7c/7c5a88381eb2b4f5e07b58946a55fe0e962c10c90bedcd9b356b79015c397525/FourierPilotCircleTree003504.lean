import FourierPilotCircleTree003505
import FourierPilotCircleTree003514
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003504
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![58, 41, 27, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003505.state FourierPilotCircleTree003514.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003505.covered FourierPilotCircleTree003514.covered
#print axioms covered
end FourierPilotCircleTree003504
