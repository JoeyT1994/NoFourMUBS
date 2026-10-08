import FourierPilotCircleTree000507
import FourierPilotCircleTree000534
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000506
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![14, 14, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000507.state FourierPilotCircleTree000534.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000507.covered FourierPilotCircleTree000534.covered
#print axioms covered
end FourierPilotCircleTree000506
