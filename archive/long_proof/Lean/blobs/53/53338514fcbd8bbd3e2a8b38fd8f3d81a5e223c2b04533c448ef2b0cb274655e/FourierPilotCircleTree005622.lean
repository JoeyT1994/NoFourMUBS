import FourierPilotCircleTree005623
import FourierPilotCircleTree005624
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005622
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![5, 5, 4, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005623.state FourierPilotCircleTree005624.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005623.covered FourierPilotCircleTree005624.covered
#print axioms covered
end FourierPilotCircleTree005622
