import FourierPilotCircleTree003616
import FourierPilotCircleTree003651
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003615
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![11, 12, 7, 13, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003616.state FourierPilotCircleTree003651.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003616.covered FourierPilotCircleTree003651.covered
#print axioms covered
end FourierPilotCircleTree003615
