import FourierPilotCircleTree003732
import FourierPilotCircleTree003733
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003731
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003732.state FourierPilotCircleTree003733.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003732.covered FourierPilotCircleTree003733.covered
#print axioms covered
end FourierPilotCircleTree003731
