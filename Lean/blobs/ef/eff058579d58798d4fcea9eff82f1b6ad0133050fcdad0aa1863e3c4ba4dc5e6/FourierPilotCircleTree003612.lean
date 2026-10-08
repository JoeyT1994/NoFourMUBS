import FourierPilotCircleTree003613
import FourierPilotCircleTree003652
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003612
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![11, 6, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003613.state FourierPilotCircleTree003652.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003613.covered FourierPilotCircleTree003652.covered
#print axioms covered
end FourierPilotCircleTree003612
