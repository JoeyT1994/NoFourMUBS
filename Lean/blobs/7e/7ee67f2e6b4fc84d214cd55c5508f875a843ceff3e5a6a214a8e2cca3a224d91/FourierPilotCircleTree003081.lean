import FourierPilotCircleTree003082
import FourierPilotCircleTree003121
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003081
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003082.state FourierPilotCircleTree003121.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003082.covered FourierPilotCircleTree003121.covered
#print axioms covered
end FourierPilotCircleTree003081
