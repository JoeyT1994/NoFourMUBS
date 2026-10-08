import FourierPilotCircleTree003675
import FourierPilotCircleTree003708
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003674
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![12, 11, 4, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003675.state FourierPilotCircleTree003708.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003675.covered FourierPilotCircleTree003708.covered
#print axioms covered
end FourierPilotCircleTree003674
