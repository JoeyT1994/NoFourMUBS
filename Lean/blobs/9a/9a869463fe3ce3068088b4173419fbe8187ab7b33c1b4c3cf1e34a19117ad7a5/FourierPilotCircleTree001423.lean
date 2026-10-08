import FourierPilotCircleTree001424
import FourierPilotCircleTree001425
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001423
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![9, 23, 15, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001424.state FourierPilotCircleTree001425.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001424.covered FourierPilotCircleTree001425.covered
#print axioms covered
end FourierPilotCircleTree001423
