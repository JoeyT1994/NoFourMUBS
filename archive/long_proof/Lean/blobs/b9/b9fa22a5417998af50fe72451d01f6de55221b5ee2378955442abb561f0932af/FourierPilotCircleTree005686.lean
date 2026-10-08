import FourierPilotCircleTree005687
import FourierPilotCircleTree005688
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005686
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![28, 28, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005687.state FourierPilotCircleTree005688.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005687.covered FourierPilotCircleTree005688.covered
#print axioms covered
end FourierPilotCircleTree005686
