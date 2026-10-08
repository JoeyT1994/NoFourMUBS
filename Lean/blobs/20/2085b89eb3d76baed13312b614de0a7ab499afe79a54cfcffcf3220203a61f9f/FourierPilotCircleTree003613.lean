import FourierPilotCircleTree003614
import FourierPilotCircleTree003615
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003613
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![11, 12, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003614.state FourierPilotCircleTree003615.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003614.covered FourierPilotCircleTree003615.covered
#print axioms covered
end FourierPilotCircleTree003613
