import FourierPilotCircleTree004196
import FourierPilotCircleTree004203
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004195
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![57, 48, 32, 43, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004196.state FourierPilotCircleTree004203.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004196.covered FourierPilotCircleTree004203.covered
#print axioms covered
end FourierPilotCircleTree004195
