import FourierPilotCircleTree003506
import FourierPilotCircleTree003507
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003505
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![58, 41, 54, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003506.state FourierPilotCircleTree003507.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003506.covered FourierPilotCircleTree003507.covered
#print axioms covered
end FourierPilotCircleTree003505
