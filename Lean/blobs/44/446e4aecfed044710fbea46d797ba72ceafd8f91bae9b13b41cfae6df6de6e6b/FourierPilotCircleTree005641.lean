import FourierPilotCircleTree005642
import FourierPilotCircleTree005643
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005641
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005642.state FourierPilotCircleTree005643.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005642.covered FourierPilotCircleTree005643.covered
#print axioms covered
end FourierPilotCircleTree005641
