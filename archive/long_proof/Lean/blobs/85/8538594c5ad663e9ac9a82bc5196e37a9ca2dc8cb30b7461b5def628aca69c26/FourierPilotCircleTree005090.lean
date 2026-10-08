import FourierPilotCircleTree005091
import FourierPilotCircleTree005092
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005090
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![77, 38, 63, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005091.state FourierPilotCircleTree005092.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005091.covered FourierPilotCircleTree005092.covered
#print axioms covered
end FourierPilotCircleTree005090
