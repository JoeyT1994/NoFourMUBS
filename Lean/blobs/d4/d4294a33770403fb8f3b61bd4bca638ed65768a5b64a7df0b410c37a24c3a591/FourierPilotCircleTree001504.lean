import FourierPilotCircleTree001505
import FourierPilotCircleTree001560
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001504
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001505.state FourierPilotCircleTree001560.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001505.covered FourierPilotCircleTree001560.covered
#print axioms covered
end FourierPilotCircleTree001504
