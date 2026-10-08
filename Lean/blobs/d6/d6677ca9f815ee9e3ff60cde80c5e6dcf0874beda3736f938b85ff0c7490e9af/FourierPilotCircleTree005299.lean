import FourierPilotCircleTree005300
import FourierPilotCircleTree005301
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005299
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 9, 10, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005300.state FourierPilotCircleTree005301.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005300.covered FourierPilotCircleTree005301.covered
#print axioms covered
end FourierPilotCircleTree005299
