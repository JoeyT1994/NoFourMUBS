import FourierPilotCircleTree004097
import FourierPilotCircleTree004098
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004096
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![41, 58, 54, 63, 89]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004097.state FourierPilotCircleTree004098.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004097.covered FourierPilotCircleTree004098.covered
#print axioms covered
end FourierPilotCircleTree004096
