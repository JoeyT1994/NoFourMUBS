import FourierPilotCircleTree005067
import FourierPilotCircleTree005068
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005066
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005067.state FourierPilotCircleTree005068.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005067.covered FourierPilotCircleTree005068.covered
#print axioms covered
end FourierPilotCircleTree005066
