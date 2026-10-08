import FourierPilotCircleTree000590
import FourierPilotCircleTree000683
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000589
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000590.state FourierPilotCircleTree000683.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000590.covered FourierPilotCircleTree000683.covered
#print axioms covered
end FourierPilotCircleTree000589
