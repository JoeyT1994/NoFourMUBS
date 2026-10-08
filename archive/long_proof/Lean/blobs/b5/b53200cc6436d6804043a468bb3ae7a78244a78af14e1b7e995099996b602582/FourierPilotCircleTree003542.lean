import FourierPilotCircleTree003543
import FourierPilotCircleTree003568
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003542
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![12, 14, 8, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003543.state FourierPilotCircleTree003568.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003543.covered FourierPilotCircleTree003568.covered
#print axioms covered
end FourierPilotCircleTree003542
