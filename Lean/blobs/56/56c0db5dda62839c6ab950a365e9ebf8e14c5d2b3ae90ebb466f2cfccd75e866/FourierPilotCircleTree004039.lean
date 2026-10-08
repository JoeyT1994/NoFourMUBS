import FourierPilotCircleTree004040
import FourierPilotCircleTree004053
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004039
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![19, 47, 31, 26, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004040.state FourierPilotCircleTree004053.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004040.covered FourierPilotCircleTree004053.covered
#print axioms covered
end FourierPilotCircleTree004039
