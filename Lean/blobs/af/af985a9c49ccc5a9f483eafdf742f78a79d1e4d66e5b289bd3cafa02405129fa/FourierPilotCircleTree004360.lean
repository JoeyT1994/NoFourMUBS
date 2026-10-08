import FourierPilotCircleTree004361
import FourierPilotCircleTree004362
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004360
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![27, 8, 20, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004361.state FourierPilotCircleTree004362.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004361.covered FourierPilotCircleTree004362.covered
#print axioms covered
end FourierPilotCircleTree004360
