import FourierPilotCircleTree004884
import FourierPilotCircleTree004907
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004883
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![45, 46, 20, 26, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004884.state FourierPilotCircleTree004907.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004884.covered FourierPilotCircleTree004907.covered
#print axioms covered
end FourierPilotCircleTree004883
