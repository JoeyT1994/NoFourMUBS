import FourierPilotCircleTree002382
import FourierPilotCircleTree002383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002381
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002382.state FourierPilotCircleTree002383.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002382.covered FourierPilotCircleTree002383.covered
#print axioms covered
end FourierPilotCircleTree002381
