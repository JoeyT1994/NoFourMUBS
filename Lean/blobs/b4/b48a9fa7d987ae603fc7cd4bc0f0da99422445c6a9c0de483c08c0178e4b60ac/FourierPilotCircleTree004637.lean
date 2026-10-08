import FourierPilotCircleTree004638
import FourierPilotCircleTree004639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004637
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004638.state FourierPilotCircleTree004639.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004638.covered FourierPilotCircleTree004639.covered
#print axioms covered
end FourierPilotCircleTree004637
