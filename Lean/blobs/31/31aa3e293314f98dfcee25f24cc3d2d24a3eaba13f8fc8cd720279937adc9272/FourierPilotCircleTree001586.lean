import FourierPilotCircleTree001587
import FourierPilotCircleTree001596
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001586
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![57, 48, 16, 43, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001587.state FourierPilotCircleTree001596.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001587.covered FourierPilotCircleTree001596.covered
#print axioms covered
end FourierPilotCircleTree001586
