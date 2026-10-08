import FourierPilotCircleTree005571
import FourierPilotCircleTree005572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005570
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005571.state FourierPilotCircleTree005572.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005571.covered FourierPilotCircleTree005572.covered
#print axioms covered
end FourierPilotCircleTree005570
