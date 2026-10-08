import FourierPilotCircleTree004757
import FourierPilotCircleTree004770
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004756
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004757.state FourierPilotCircleTree004770.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004757.covered FourierPilotCircleTree004770.covered
#print axioms covered
end FourierPilotCircleTree004756
