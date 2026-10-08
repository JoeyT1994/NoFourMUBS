import FourierPilotCircleTree000457
import FourierPilotCircleTree000460
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000456
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000457.state FourierPilotCircleTree000460.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000457.covered FourierPilotCircleTree000460.covered
#print axioms covered
end FourierPilotCircleTree000456
