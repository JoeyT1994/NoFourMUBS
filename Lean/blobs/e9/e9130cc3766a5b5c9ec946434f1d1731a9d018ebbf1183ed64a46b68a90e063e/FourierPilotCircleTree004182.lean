import FourierPilotCircleTree004183
import FourierPilotCircleTree004210
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004182
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![14, 12, 8, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004183.state FourierPilotCircleTree004210.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004183.covered FourierPilotCircleTree004210.covered
#print axioms covered
end FourierPilotCircleTree004182
