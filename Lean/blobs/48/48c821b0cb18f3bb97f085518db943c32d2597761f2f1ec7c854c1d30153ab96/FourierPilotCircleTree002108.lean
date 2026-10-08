import FourierPilotCircleTree002109
import FourierPilotCircleTree002112
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002108
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 14, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002109.state FourierPilotCircleTree002112.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002109.covered FourierPilotCircleTree002112.covered
#print axioms covered
end FourierPilotCircleTree002108
