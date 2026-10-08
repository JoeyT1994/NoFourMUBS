import FourierPilotCircleTree003108
import FourierPilotCircleTree003109
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003107
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![58, 36, 31, 50, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003108.state FourierPilotCircleTree003109.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003108.covered FourierPilotCircleTree003109.covered
#print axioms covered
end FourierPilotCircleTree003107
