import FourierPilotCircleTree003216
import FourierPilotCircleTree003241
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003215
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 3, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003216.state FourierPilotCircleTree003241.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003216.covered FourierPilotCircleTree003241.covered
#print axioms covered
end FourierPilotCircleTree003215
