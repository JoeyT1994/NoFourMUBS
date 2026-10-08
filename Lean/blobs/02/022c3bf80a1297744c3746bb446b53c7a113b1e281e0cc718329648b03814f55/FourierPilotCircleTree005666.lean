import FourierPilotCircleTree005667
import FourierPilotCircleTree005668
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005666
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005667.state FourierPilotCircleTree005668.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005667.covered FourierPilotCircleTree005668.covered
#print axioms covered
end FourierPilotCircleTree005666
