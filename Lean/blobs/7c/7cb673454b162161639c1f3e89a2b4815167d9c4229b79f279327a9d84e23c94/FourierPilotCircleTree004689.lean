import FourierPilotCircleTree004690
import FourierPilotCircleTree004691
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004689
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 41, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004690.state FourierPilotCircleTree004691.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004690.covered FourierPilotCircleTree004691.covered
#print axioms covered
end FourierPilotCircleTree004689
