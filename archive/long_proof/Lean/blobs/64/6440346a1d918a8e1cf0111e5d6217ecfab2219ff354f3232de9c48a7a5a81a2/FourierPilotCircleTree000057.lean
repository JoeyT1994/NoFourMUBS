import FourierPilotCircleTree000058
import FourierPilotCircleTree000061
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000057
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000058.state FourierPilotCircleTree000061.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000058.covered FourierPilotCircleTree000061.covered
#print axioms covered
end FourierPilotCircleTree000057
