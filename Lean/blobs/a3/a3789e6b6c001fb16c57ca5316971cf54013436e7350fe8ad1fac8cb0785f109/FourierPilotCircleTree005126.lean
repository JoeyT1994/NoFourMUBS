import FourierPilotCircleTree005127
import FourierPilotCircleTree005164
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005126
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005127.state FourierPilotCircleTree005164.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005127.covered FourierPilotCircleTree005164.covered
#print axioms covered
end FourierPilotCircleTree005126
