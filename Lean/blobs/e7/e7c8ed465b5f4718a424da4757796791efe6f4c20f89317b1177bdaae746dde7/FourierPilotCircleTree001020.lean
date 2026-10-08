import FourierPilotCircleTree001021
import FourierPilotCircleTree001052
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001020
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![9, 9, 15, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001021.state FourierPilotCircleTree001052.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001021.covered FourierPilotCircleTree001052.covered
#print axioms covered
end FourierPilotCircleTree001020
