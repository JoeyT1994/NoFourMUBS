import FourierPilotCircleTree004012
import FourierPilotCircleTree004013
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004011
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 5, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004012.state FourierPilotCircleTree004013.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004012.covered FourierPilotCircleTree004013.covered
#print axioms covered
end FourierPilotCircleTree004011
