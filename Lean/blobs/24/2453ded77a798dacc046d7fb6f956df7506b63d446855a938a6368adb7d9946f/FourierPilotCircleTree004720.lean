import FourierPilotCircleTree004721
import FourierPilotCircleTree004722
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004720
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![4, 5, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004721.state FourierPilotCircleTree004722.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004721.covered FourierPilotCircleTree004722.covered
#print axioms covered
end FourierPilotCircleTree004720
