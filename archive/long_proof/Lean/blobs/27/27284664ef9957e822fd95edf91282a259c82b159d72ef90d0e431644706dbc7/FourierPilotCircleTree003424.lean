import FourierPilotCircleTree003425
import FourierPilotCircleTree003464
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003424
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 6, 5, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003425.state FourierPilotCircleTree003464.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003425.covered FourierPilotCircleTree003464.covered
#print axioms covered
end FourierPilotCircleTree003424
