import FourierPilotCircleTree000027
import FourierPilotCircleTree000052
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000026
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 6, 4, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000027.state FourierPilotCircleTree000052.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000027.covered FourierPilotCircleTree000052.covered
#print axioms covered
end FourierPilotCircleTree000026
