import FourierPilotCircleTree005661
import FourierPilotCircleTree005662
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005660
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005661.state FourierPilotCircleTree005662.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005661.covered FourierPilotCircleTree005662.covered
#print axioms covered
end FourierPilotCircleTree005660
