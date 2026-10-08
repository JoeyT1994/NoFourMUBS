import FourierPilotCircleTree000748
import FourierPilotCircleTree000773
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000747
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 25, 27, 17, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000748.state FourierPilotCircleTree000773.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000748.covered FourierPilotCircleTree000773.covered
#print axioms covered
end FourierPilotCircleTree000747
