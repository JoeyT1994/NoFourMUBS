import FourierPilotCircleTree004420
import FourierPilotCircleTree004437
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004419
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![6, 4, 4, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004420.state FourierPilotCircleTree004437.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004420.covered FourierPilotCircleTree004437.covered
#print axioms covered
end FourierPilotCircleTree004419
