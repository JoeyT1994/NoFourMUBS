import FourierPilotCircleTree005093
import FourierPilotCircleTree005094
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005092
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![77, 77, 63, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005093.state FourierPilotCircleTree005094.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005093.covered FourierPilotCircleTree005094.covered
#print axioms covered
end FourierPilotCircleTree005092
