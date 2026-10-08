import FourierPilotCircleTree004421
import FourierPilotCircleTree004422
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004420
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![12, 4, 4, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004421.state FourierPilotCircleTree004422.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004421.covered FourierPilotCircleTree004422.covered
#print axioms covered
end FourierPilotCircleTree004420
