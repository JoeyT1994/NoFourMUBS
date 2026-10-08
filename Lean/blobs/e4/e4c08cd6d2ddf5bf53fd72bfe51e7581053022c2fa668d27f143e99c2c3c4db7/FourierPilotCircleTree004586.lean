import FourierPilotCircleTree004587
import FourierPilotCircleTree004590
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004586
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004587.state FourierPilotCircleTree004590.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004587.covered FourierPilotCircleTree004590.covered
#print axioms covered
end FourierPilotCircleTree004586
