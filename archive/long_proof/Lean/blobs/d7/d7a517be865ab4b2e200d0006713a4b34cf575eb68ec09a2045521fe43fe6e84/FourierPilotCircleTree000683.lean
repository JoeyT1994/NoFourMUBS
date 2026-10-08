import FourierPilotCircleTree000684
import FourierPilotCircleTree000685
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000683
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000684.state FourierPilotCircleTree000685.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000684.covered FourierPilotCircleTree000685.covered
#print axioms covered
end FourierPilotCircleTree000683
