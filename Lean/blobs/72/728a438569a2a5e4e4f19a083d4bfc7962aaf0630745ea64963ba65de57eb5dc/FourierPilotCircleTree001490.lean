import FourierPilotCircleTree001491
import FourierPilotCircleTree001492
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001490
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![41, 117, 54, 63, 89]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001491.state FourierPilotCircleTree001492.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001491.covered FourierPilotCircleTree001492.covered
#print axioms covered
end FourierPilotCircleTree001490
