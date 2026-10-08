import FourierPilotCircleTree001588
import FourierPilotCircleTree001595
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001587
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![57, 48, 32, 43, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001588.state FourierPilotCircleTree001595.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001588.covered FourierPilotCircleTree001595.covered
#print axioms covered
end FourierPilotCircleTree001587
