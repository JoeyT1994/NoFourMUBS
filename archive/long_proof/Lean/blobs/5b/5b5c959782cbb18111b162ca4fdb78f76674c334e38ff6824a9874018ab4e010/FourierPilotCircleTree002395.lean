import FourierPilotCircleTree002396
import FourierPilotCircleTree002397
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002395
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![14, 23, 15, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002396.state FourierPilotCircleTree002397.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002396.covered FourierPilotCircleTree002397.covered
#print axioms covered
end FourierPilotCircleTree002395
