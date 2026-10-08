import FourierPilotCircleTree001877
import FourierPilotCircleTree001904
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001876
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![23, 24, 8, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001877.state FourierPilotCircleTree001904.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001877.covered FourierPilotCircleTree001904.covered
#print axioms covered
end FourierPilotCircleTree001876
