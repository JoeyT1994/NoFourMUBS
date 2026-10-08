import FourierPilotCircleTree001662
import FourierPilotCircleTree001663
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001661
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![4, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001662.state FourierPilotCircleTree001663.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001662.covered FourierPilotCircleTree001663.covered
#print axioms covered
end FourierPilotCircleTree001661
