import FourierPilotCircleTree003413
import FourierPilotCircleTree003468
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003412
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003413.state FourierPilotCircleTree003468.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003413.covered FourierPilotCircleTree003468.covered
#print axioms covered
end FourierPilotCircleTree003412
