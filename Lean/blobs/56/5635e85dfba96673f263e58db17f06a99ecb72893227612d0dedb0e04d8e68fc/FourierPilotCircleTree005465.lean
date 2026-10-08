import FourierPilotCircleTree005466
import FourierPilotCircleTree005551
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005465
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005466.state FourierPilotCircleTree005551.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005466.covered FourierPilotCircleTree005551.covered
#print axioms covered
end FourierPilotCircleTree005465
