import FourierPilotCircleTree004794
import FourierPilotCircleTree004797
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004793
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 25, 27, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004794.state FourierPilotCircleTree004797.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004794.covered FourierPilotCircleTree004797.covered
#print axioms covered
end FourierPilotCircleTree004793
