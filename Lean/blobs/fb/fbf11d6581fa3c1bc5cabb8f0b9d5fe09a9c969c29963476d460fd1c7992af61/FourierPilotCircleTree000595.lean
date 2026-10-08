import FourierPilotCircleTree000596
import FourierPilotCircleTree000597
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000595
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000596.state FourierPilotCircleTree000597.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000596.covered FourierPilotCircleTree000597.covered
#print axioms covered
end FourierPilotCircleTree000595
