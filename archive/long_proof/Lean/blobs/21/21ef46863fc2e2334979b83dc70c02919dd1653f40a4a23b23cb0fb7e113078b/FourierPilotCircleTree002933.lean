import FourierPilotCircleTree002934
import FourierPilotCircleTree002963
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002933
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![20, 27, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002934.state FourierPilotCircleTree002963.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002934.covered FourierPilotCircleTree002963.covered
#print axioms covered
end FourierPilotCircleTree002933
