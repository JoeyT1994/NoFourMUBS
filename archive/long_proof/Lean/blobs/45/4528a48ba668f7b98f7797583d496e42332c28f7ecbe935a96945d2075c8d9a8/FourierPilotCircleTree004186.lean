import FourierPilotCircleTree004187
import FourierPilotCircleTree004208
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004186
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![14, 24, 8, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004187.state FourierPilotCircleTree004208.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004187.covered FourierPilotCircleTree004208.covered
#print axioms covered
end FourierPilotCircleTree004186
