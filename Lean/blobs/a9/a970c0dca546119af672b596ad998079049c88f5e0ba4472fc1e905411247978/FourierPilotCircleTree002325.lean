import FourierPilotCircleTree002326
import FourierPilotCircleTree002327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002325
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 7, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002326.state FourierPilotCircleTree002327.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002326.covered FourierPilotCircleTree002327.covered
#print axioms covered
end FourierPilotCircleTree002325
