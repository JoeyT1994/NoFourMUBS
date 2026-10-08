import FourierPilotCircleTree003885
import FourierPilotCircleTree003886
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003884
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 10, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003885.state FourierPilotCircleTree003886.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003885.covered FourierPilotCircleTree003886.covered
#print axioms covered
end FourierPilotCircleTree003884
