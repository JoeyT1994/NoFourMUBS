import FourierPilotCircleTree000508
import FourierPilotCircleTree000533
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000507
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![28, 14, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000508.state FourierPilotCircleTree000533.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000508.covered FourierPilotCircleTree000533.covered
#print axioms covered
end FourierPilotCircleTree000507
