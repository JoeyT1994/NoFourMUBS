import FourierPilotCircleTree002108
import FourierPilotCircleTree002113
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002107
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 14, 8, 15, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002108.state FourierPilotCircleTree002113.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002108.covered FourierPilotCircleTree002113.covered
#print axioms covered
end FourierPilotCircleTree002107
