import FourierPilotCircleTree001074
import FourierPilotCircleTree001113
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001073
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001074.state FourierPilotCircleTree001113.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001074.covered FourierPilotCircleTree001113.covered
#print axioms covered
end FourierPilotCircleTree001073
