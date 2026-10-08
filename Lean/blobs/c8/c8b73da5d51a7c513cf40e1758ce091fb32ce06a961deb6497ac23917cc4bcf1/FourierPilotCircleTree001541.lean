import FourierPilotCircleTree001542
import FourierPilotCircleTree001543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001541
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![54, 74, 41, 32, 102]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001542.state FourierPilotCircleTree001543.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001542.covered FourierPilotCircleTree001543.covered
#print axioms covered
end FourierPilotCircleTree001541
