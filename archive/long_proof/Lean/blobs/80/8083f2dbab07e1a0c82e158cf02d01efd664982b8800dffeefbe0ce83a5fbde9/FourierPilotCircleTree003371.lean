import FourierPilotCircleTree003372
import FourierPilotCircleTree003373
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003371
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![5, 4, 7, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003372.state FourierPilotCircleTree003373.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003372.covered FourierPilotCircleTree003373.covered
#print axioms covered
end FourierPilotCircleTree003371
