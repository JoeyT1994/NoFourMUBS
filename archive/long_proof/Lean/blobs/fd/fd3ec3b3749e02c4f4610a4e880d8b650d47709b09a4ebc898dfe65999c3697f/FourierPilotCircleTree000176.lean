import FourierPilotCircleTree000177
import FourierPilotCircleTree000188
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000176
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 23, 15, 21, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000177.state FourierPilotCircleTree000188.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000177.covered FourierPilotCircleTree000188.covered
#print axioms covered
end FourierPilotCircleTree000176
