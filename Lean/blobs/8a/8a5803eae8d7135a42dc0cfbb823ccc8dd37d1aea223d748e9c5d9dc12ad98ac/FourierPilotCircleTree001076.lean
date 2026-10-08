import FourierPilotCircleTree001077
import FourierPilotCircleTree001110
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001076
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 14, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001077.state FourierPilotCircleTree001110.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001077.covered FourierPilotCircleTree001110.covered
#print axioms covered
end FourierPilotCircleTree001076
