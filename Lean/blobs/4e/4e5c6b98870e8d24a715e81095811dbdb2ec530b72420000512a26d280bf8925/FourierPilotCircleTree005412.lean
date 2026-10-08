import FourierPilotCircleTree005413
import FourierPilotCircleTree005414
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005412
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![18, 27, 20, 51, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005413.state FourierPilotCircleTree005414.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005413.covered FourierPilotCircleTree005414.covered
#print axioms covered
end FourierPilotCircleTree005412
