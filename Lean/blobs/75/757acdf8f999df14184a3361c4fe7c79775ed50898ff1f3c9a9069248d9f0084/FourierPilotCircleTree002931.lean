import FourierPilotCircleTree002932
import FourierPilotCircleTree002933
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002931
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![20, 13, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002932.state FourierPilotCircleTree002933.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002932.covered FourierPilotCircleTree002933.covered
#print axioms covered
end FourierPilotCircleTree002931
