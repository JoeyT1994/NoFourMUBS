import FourierPilotCircleTree001527
import FourierPilotCircleTree001528
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001526
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![13, 9, 10, 8, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001527.state FourierPilotCircleTree001528.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001527.covered FourierPilotCircleTree001528.covered
#print axioms covered
end FourierPilotCircleTree001526
