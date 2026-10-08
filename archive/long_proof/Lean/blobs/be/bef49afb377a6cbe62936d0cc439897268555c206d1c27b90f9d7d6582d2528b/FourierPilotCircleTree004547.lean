import FourierPilotCircleTree004548
import FourierPilotCircleTree004549
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004547
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![24, 23, 15, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004548.state FourierPilotCircleTree004549.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004548.covered FourierPilotCircleTree004549.covered
#print axioms covered
end FourierPilotCircleTree004547
