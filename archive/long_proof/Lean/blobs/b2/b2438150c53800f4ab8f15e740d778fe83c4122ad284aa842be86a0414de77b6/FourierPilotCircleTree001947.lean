import FourierPilotCircleTree001948
import FourierPilotCircleTree001965
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001947
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![49, 46, 31, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001948.state FourierPilotCircleTree001965.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001948.covered FourierPilotCircleTree001965.covered
#print axioms covered
end FourierPilotCircleTree001947
