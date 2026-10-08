import FourierPilotCircleTree004776
import FourierPilotCircleTree004839
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004775
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004776.state FourierPilotCircleTree004839.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004776.covered FourierPilotCircleTree004839.covered
#print axioms covered
end FourierPilotCircleTree004775
