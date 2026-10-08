import FourierPilotCircleTree002454
import FourierPilotCircleTree002455
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002453
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![60, 80, 54, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002454.state FourierPilotCircleTree002455.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002454.covered FourierPilotCircleTree002455.covered
#print axioms covered
end FourierPilotCircleTree002453
