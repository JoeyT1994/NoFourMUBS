import FourierPilotCircleTree000519
import FourierPilotCircleTree000520
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000518
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![57, 57, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000519.state FourierPilotCircleTree000520.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000519.covered FourierPilotCircleTree000520.covered
#print axioms covered
end FourierPilotCircleTree000518
