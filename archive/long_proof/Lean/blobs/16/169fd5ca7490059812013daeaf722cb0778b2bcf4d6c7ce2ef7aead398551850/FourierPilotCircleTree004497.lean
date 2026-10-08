import FourierPilotCircleTree004498
import FourierPilotCircleTree004507
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004497
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![93, 49, 32, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004498.state FourierPilotCircleTree004507.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004498.covered FourierPilotCircleTree004507.covered
#print axioms covered
end FourierPilotCircleTree004497
