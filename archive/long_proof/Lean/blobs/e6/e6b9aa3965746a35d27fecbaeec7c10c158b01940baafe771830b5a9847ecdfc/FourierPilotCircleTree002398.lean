import FourierPilotCircleTree002399
import FourierPilotCircleTree002400
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002398
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![28, 23, 15, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002399.state FourierPilotCircleTree002400.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002399.covered FourierPilotCircleTree002400.covered
#print axioms covered
end FourierPilotCircleTree002398
