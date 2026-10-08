import FourierPilotCircleTree004719
import FourierPilotCircleTree004720
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004718
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![4, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004719.state FourierPilotCircleTree004720.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004719.covered FourierPilotCircleTree004720.covered
#print axioms covered
end FourierPilotCircleTree004718
