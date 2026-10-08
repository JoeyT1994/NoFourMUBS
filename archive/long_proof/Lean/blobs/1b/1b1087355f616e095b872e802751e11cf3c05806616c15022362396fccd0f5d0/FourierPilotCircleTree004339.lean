import FourierPilotCircleTree004340
import FourierPilotCircleTree004411
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004339
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004340.state FourierPilotCircleTree004411.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004340.covered FourierPilotCircleTree004411.covered
#print axioms covered
end FourierPilotCircleTree004339
