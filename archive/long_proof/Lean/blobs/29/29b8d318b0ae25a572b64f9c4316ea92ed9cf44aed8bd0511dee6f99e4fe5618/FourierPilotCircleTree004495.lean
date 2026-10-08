import FourierPilotCircleTree004496
import FourierPilotCircleTree004497
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004495
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![46, 49, 32, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004496.state FourierPilotCircleTree004497.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004496.covered FourierPilotCircleTree004497.covered
#print axioms covered
end FourierPilotCircleTree004495
