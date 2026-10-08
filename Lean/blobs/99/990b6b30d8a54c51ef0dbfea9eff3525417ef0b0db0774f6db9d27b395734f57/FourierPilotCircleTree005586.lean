import FourierPilotCircleTree005587
import FourierPilotCircleTree005608
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005586
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![19, 19, 16, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005587.state FourierPilotCircleTree005608.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005587.covered FourierPilotCircleTree005608.covered
#print axioms covered
end FourierPilotCircleTree005586
