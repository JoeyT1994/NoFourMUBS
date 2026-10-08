import FourierPilotCircleTree000669
import FourierPilotCircleTree000670
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 5, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000669.state FourierPilotCircleTree000670.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000669.covered FourierPilotCircleTree000670.covered
#print axioms covered
end FourierPilotCircleTree000668
