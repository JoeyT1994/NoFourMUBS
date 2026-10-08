import FourierPilotCircleTree003486
import FourierPilotCircleTree003487
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003485
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![7, 10, 6, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003486.state FourierPilotCircleTree003487.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003486.covered FourierPilotCircleTree003487.covered
#print axioms covered
end FourierPilotCircleTree003485
