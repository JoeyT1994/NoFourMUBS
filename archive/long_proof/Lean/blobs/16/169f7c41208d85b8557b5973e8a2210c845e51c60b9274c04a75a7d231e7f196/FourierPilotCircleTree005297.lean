import FourierPilotCircleTree005298
import FourierPilotCircleTree005299
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005297
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 9, 10, 15, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005298.state FourierPilotCircleTree005299.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005298.covered FourierPilotCircleTree005299.covered
#print axioms covered
end FourierPilotCircleTree005297
