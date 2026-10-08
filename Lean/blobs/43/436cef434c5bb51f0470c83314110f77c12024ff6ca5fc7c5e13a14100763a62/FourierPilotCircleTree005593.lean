import FourierPilotCircleTree005594
import FourierPilotCircleTree005595
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005593
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![38, 38, 32, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005594.state FourierPilotCircleTree005595.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005594.covered FourierPilotCircleTree005595.covered
#print axioms covered
end FourierPilotCircleTree005593
