import FourierPilotCircleTree005673
import FourierPilotCircleTree005674
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005672
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![14, 14, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005673.state FourierPilotCircleTree005674.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005673.covered FourierPilotCircleTree005674.covered
#print axioms covered
end FourierPilotCircleTree005672
