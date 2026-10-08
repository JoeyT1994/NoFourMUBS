import FourierPilotCircleTree005121
import FourierPilotCircleTree005122
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005120
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005121.state FourierPilotCircleTree005122.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005121.covered FourierPilotCircleTree005122.covered
#print axioms covered
end FourierPilotCircleTree005120
