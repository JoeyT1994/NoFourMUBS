import FourierPilotCircleTree000493
import FourierPilotCircleTree000494
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000492
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000493.state FourierPilotCircleTree000494.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000493.covered FourierPilotCircleTree000494.covered
#print axioms covered
end FourierPilotCircleTree000492
