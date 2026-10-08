import FourierPilotCircleTree004429
import FourierPilotCircleTree004434
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004428
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![24, 9, 8, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004429.state FourierPilotCircleTree004434.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004429.covered FourierPilotCircleTree004434.covered
#print axioms covered
end FourierPilotCircleTree004428
