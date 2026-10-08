import FourierPilotCircleTree005390
import FourierPilotCircleTree005419
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005389
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 6, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005390.state FourierPilotCircleTree005419.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005390.covered FourierPilotCircleTree005419.covered
#print axioms covered
end FourierPilotCircleTree005389
