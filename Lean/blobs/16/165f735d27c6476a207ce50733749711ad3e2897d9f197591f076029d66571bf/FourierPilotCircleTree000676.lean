import FourierPilotCircleTree000677
import FourierPilotCircleTree000678
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 11, 7, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000677.state FourierPilotCircleTree000678.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000677.covered FourierPilotCircleTree000678.covered
#print axioms covered
end FourierPilotCircleTree000676
