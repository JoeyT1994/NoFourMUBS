import FourierPilotCircleTree002801
import FourierPilotCircleTree002802
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002800
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![12, 11, 4, 10, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002801.state FourierPilotCircleTree002802.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002801.covered FourierPilotCircleTree002802.covered
#print axioms covered
end FourierPilotCircleTree002800
