import FourierPilotCircleTree005669
import FourierPilotCircleTree005710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005669.state FourierPilotCircleTree005710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005669.covered FourierPilotCircleTree005710.covered
#print axioms covered
end FourierPilotCircleTree005668
