import FourierPilotCircleTree005125
import FourierPilotCircleTree005166
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005124
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005125.state FourierPilotCircleTree005166.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005125.covered FourierPilotCircleTree005166.covered
#print axioms covered
end FourierPilotCircleTree005124
