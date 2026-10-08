import FourierPilotCircleTree003625
import FourierPilotCircleTree003626
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003624
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![23, 24, 15, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003625.state FourierPilotCircleTree003626.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003625.covered FourierPilotCircleTree003626.covered
#print axioms covered
end FourierPilotCircleTree003624
