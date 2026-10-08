import FourierPilotCircleTree003434
import FourierPilotCircleTree003435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003433
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![9, 13, 10, 12, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003434.state FourierPilotCircleTree003435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003434.covered FourierPilotCircleTree003435.covered
#print axioms covered
end FourierPilotCircleTree003433
