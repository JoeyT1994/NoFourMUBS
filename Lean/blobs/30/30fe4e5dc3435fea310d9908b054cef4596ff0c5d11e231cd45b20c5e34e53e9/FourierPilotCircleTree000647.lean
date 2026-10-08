import FourierPilotCircleTree000648
import FourierPilotCircleTree000649
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000647
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![93, 91, 82, 123, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000648.state FourierPilotCircleTree000649.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000648.covered FourierPilotCircleTree000649.covered
#print axioms covered
end FourierPilotCircleTree000647
