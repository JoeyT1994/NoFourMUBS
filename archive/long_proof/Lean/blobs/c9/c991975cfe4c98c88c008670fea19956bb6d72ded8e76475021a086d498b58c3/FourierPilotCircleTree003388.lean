import FourierPilotCircleTree003389
import FourierPilotCircleTree003390
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003388
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![23, 19, 15, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003389.state FourierPilotCircleTree003390.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003389.covered FourierPilotCircleTree003390.covered
#print axioms covered
end FourierPilotCircleTree003388
