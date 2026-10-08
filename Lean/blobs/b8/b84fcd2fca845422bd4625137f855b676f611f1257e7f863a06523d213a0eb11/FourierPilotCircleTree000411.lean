import FourierPilotCircleTree000412
import FourierPilotCircleTree000413
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000411
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![19, 9, 8, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000412.state FourierPilotCircleTree000413.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000412.covered FourierPilotCircleTree000413.covered
#print axioms covered
end FourierPilotCircleTree000411
