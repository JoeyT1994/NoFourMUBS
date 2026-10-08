import FourierPilotCircleTree002677
import FourierPilotCircleTree002692
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![24, 28, 16, 16, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002677.state FourierPilotCircleTree002692.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002677.covered FourierPilotCircleTree002692.covered
#print axioms covered
end FourierPilotCircleTree002676
