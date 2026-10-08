import FourierPilotCircleTree004895
import FourierPilotCircleTree004896
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004894
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![45, 46, 41, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004895.state FourierPilotCircleTree004896.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004895.covered FourierPilotCircleTree004896.covered
#print axioms covered
end FourierPilotCircleTree004894
