import FourierPilotCircleTree004583
import FourierPilotCircleTree004592
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004582
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004583.state FourierPilotCircleTree004592.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004583.covered FourierPilotCircleTree004592.covered
#print axioms covered
end FourierPilotCircleTree004582
