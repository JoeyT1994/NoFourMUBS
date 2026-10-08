import FourierPilotCircleTree000216
import FourierPilotCircleTree000217
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000215
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![4, 6, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000216.state FourierPilotCircleTree000217.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000216.covered FourierPilotCircleTree000217.covered
#print axioms covered
end FourierPilotCircleTree000215
