import FourierPilotCircleTree004543
import FourierPilotCircleTree004544
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004542
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![12, 11, 7, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004543.state FourierPilotCircleTree004544.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004543.covered FourierPilotCircleTree004544.covered
#print axioms covered
end FourierPilotCircleTree004542
