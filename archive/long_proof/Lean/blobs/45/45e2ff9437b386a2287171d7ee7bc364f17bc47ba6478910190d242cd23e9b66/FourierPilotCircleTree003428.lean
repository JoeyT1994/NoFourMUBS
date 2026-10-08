import FourierPilotCircleTree003429
import FourierPilotCircleTree003462
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003428
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 13, 5, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003429.state FourierPilotCircleTree003462.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003429.covered FourierPilotCircleTree003462.covered
#print axioms covered
end FourierPilotCircleTree003428
