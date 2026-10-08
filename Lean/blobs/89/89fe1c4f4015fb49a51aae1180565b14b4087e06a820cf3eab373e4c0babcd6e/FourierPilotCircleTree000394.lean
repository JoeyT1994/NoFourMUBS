import FourierPilotCircleTree000395
import FourierPilotCircleTree000444
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000394
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000395.state FourierPilotCircleTree000444.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000395.covered FourierPilotCircleTree000444.covered
#print axioms covered
end FourierPilotCircleTree000394
