import FourierPilotCircleTree004285
import FourierPilotCircleTree004286
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004284
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004285.state FourierPilotCircleTree004286.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004285.covered FourierPilotCircleTree004286.covered
#print axioms covered
end FourierPilotCircleTree004284
