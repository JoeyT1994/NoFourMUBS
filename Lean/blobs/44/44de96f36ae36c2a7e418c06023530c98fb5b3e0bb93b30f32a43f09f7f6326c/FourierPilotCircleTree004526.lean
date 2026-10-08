import FourierPilotCircleTree004527
import FourierPilotCircleTree004528
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004526
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004527.state FourierPilotCircleTree004528.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004527.covered FourierPilotCircleTree004528.covered
#print axioms covered
end FourierPilotCircleTree004526
