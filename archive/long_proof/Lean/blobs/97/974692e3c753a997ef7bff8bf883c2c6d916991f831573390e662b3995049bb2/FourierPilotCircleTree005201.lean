import FourierPilotCircleTree005202
import FourierPilotCircleTree005203
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005201
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 12, 4, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005202.state FourierPilotCircleTree005203.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005202.covered FourierPilotCircleTree005203.covered
#print axioms covered
end FourierPilotCircleTree005201
