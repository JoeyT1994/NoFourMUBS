import FourierPilotCircleTree004175
import FourierPilotCircleTree004218
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004174
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 6, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004175.state FourierPilotCircleTree004218.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004175.covered FourierPilotCircleTree004218.covered
#print axioms covered
end FourierPilotCircleTree004174
