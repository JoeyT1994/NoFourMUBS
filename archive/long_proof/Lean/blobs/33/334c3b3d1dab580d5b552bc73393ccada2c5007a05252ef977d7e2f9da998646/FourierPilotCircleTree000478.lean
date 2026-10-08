import FourierPilotCircleTree000479
import FourierPilotCircleTree000480
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000478
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![6, 6, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000479.state FourierPilotCircleTree000480.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000479.covered FourierPilotCircleTree000480.covered
#print axioms covered
end FourierPilotCircleTree000478
