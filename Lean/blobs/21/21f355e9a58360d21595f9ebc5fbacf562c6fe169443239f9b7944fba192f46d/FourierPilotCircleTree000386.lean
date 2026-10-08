import FourierPilotCircleTree000387
import FourierPilotCircleTree000464
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000386
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000387.state FourierPilotCircleTree000464.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000387.covered FourierPilotCircleTree000464.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree000386
