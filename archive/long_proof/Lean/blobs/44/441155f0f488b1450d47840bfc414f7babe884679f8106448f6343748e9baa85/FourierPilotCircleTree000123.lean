import FourierPilotCircleTree000124
import FourierPilotCircleTree000125
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000123
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![13, 9, 10, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000124.state FourierPilotCircleTree000125.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000124.covered FourierPilotCircleTree000125.covered
#print axioms covered
end FourierPilotCircleTree000123
