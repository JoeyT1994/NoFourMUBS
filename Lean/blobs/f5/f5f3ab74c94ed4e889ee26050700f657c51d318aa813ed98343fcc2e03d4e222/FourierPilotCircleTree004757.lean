import FourierPilotCircleTree004758
import FourierPilotCircleTree004769
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004757
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 6, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004758.state FourierPilotCircleTree004769.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004758.covered FourierPilotCircleTree004769.covered
#print axioms covered
end FourierPilotCircleTree004757
