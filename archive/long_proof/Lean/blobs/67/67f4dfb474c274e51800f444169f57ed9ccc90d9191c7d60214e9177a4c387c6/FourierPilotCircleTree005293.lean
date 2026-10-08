import FourierPilotCircleTree005294
import FourierPilotCircleTree005295
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005293
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 4, 10, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005294.state FourierPilotCircleTree005295.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005294.covered FourierPilotCircleTree005295.covered
#print axioms covered
end FourierPilotCircleTree005293
