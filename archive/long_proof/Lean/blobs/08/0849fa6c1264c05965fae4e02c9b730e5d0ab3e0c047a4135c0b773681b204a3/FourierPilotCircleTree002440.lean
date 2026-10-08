import FourierPilotCircleTree002441
import FourierPilotCircleTree002470
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002440
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![15, 20, 27, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002441.state FourierPilotCircleTree002470.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002441.covered FourierPilotCircleTree002470.covered
#print axioms covered
end FourierPilotCircleTree002440
