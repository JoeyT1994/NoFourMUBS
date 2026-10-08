import FourierPilotCircleTree001073
import FourierPilotCircleTree001114
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001072
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001073.state FourierPilotCircleTree001114.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001073.covered FourierPilotCircleTree001114.covered
#print axioms covered
end FourierPilotCircleTree001072
