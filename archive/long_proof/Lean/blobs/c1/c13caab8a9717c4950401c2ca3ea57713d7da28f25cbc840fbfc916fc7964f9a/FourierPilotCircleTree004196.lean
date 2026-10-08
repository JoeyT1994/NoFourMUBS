import FourierPilotCircleTree004197
import FourierPilotCircleTree004202
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004196
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![57, 48, 32, 43, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004197.state FourierPilotCircleTree004202.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004197.covered FourierPilotCircleTree004202.covered
#print axioms covered
end FourierPilotCircleTree004196
