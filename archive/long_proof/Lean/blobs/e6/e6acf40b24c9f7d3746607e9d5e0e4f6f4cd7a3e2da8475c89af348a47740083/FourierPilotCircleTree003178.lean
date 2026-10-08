import FourierPilotCircleTree003179
import FourierPilotCircleTree003180
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003178
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 55, 41, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003179.state FourierPilotCircleTree003180.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003179.covered FourierPilotCircleTree003180.covered
#print axioms covered
end FourierPilotCircleTree003178
