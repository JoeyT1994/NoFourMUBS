import FourierPilotCircleTree005293
import FourierPilotCircleTree005314
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005292
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 4, 10, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005293.state FourierPilotCircleTree005314.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005293.covered FourierPilotCircleTree005314.covered
#print axioms covered
end FourierPilotCircleTree005292
