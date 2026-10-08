import FourierPilotCircleTree000635
import FourierPilotCircleTree000636
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000634
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![93, 45, 40, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000635.state FourierPilotCircleTree000636.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000635.covered FourierPilotCircleTree000636.covered
#print axioms covered
end FourierPilotCircleTree000634
