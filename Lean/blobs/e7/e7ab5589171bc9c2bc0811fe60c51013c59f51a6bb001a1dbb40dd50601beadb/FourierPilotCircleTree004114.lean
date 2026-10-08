import FourierPilotCircleTree004115
import FourierPilotCircleTree004166
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004114
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004115.state FourierPilotCircleTree004166.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004115.covered FourierPilotCircleTree004166.covered
#print axioms covered
end FourierPilotCircleTree004114
