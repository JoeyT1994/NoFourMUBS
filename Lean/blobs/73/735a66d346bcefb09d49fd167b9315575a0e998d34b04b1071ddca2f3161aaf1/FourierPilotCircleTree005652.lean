import FourierPilotCircleTree005653
import FourierPilotCircleTree005654
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005652
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![6, 6, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005653.state FourierPilotCircleTree005654.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005653.covered FourierPilotCircleTree005654.covered
#print axioms covered
end FourierPilotCircleTree005652
