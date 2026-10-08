import FourierPilotCircleTree000767
import FourierPilotCircleTree000772
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000766
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 55, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000767.state FourierPilotCircleTree000772.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000767.covered FourierPilotCircleTree000772.covered
#print axioms covered
end FourierPilotCircleTree000766
