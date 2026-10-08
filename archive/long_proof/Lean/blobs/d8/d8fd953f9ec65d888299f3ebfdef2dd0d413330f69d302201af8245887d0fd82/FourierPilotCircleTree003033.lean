import FourierPilotCircleTree003034
import FourierPilotCircleTree003075
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003033
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 5, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003034.state FourierPilotCircleTree003075.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003034.covered FourierPilotCircleTree003075.covered
#print axioms covered
end FourierPilotCircleTree003033
