import FourierPilotCircleTree004692
import FourierPilotCircleTree004693
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004691
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 41, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004692.state FourierPilotCircleTree004693.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004692.covered FourierPilotCircleTree004693.covered
#print axioms covered
end FourierPilotCircleTree004691
