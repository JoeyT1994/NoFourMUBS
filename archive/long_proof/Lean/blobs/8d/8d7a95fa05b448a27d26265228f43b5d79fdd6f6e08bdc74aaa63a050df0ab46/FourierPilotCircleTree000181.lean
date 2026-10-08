import FourierPilotCircleTree000182
import FourierPilotCircleTree000183
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000181
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![28, 23, 31, 21, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000182.state FourierPilotCircleTree000183.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000182.covered FourierPilotCircleTree000183.covered
#print axioms covered
end FourierPilotCircleTree000181
