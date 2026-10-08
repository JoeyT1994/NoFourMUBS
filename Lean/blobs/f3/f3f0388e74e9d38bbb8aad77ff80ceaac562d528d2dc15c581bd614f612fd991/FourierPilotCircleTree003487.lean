import FourierPilotCircleTree003488
import FourierPilotCircleTree003489
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003487
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![7, 10, 13, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003488.state FourierPilotCircleTree003489.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003488.covered FourierPilotCircleTree003489.covered
#print axioms covered
end FourierPilotCircleTree003487
