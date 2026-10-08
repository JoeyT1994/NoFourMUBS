import FourierPilotCircleTree003954
import FourierPilotCircleTree003983
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003953
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003954.state FourierPilotCircleTree003983.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003954.covered FourierPilotCircleTree003983.covered
#print axioms covered
end FourierPilotCircleTree003953
