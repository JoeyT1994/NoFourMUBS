import FourierPilotCircleTree000542
import FourierPilotCircleTree000565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000541
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000542.state FourierPilotCircleTree000565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000542.covered FourierPilotCircleTree000565.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree000541
