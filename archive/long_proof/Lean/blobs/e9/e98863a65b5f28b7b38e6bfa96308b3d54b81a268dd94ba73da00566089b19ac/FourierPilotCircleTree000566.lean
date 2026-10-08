import FourierPilotCircleTree000567
import FourierPilotCircleTree000574
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000566
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000567.state FourierPilotCircleTree000574.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000567.covered FourierPilotCircleTree000574.covered
#print axioms covered
end FourierPilotCircleTree000566
