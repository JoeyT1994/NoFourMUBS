import FourierPilotCircleTree003548
import FourierPilotCircleTree003565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003547
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![24, 28, 16, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003548.state FourierPilotCircleTree003565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003548.covered FourierPilotCircleTree003565.covered
#print axioms covered
end FourierPilotCircleTree003547
