import FourierPilotCircleTree000485
import FourierPilotCircleTree000486
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000484
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![6, 6, 7, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000485.state FourierPilotCircleTree000486.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000485.covered FourierPilotCircleTree000486.covered
#print axioms covered
end FourierPilotCircleTree000484
