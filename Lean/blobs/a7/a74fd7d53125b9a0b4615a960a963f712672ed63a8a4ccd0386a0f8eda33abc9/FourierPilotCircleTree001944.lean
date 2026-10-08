import FourierPilotCircleTree001945
import FourierPilotCircleTree001946
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001944
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![24, 23, 31, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001945.state FourierPilotCircleTree001946.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001945.covered FourierPilotCircleTree001946.covered
#print axioms covered
end FourierPilotCircleTree001944
