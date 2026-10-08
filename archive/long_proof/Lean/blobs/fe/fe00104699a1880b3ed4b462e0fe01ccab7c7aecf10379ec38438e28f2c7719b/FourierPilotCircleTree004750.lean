import FourierPilotCircleTree004751
import FourierPilotCircleTree004772
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004750
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004751.state FourierPilotCircleTree004772.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004751.covered FourierPilotCircleTree004772.covered
#print axioms covered
end FourierPilotCircleTree004750
