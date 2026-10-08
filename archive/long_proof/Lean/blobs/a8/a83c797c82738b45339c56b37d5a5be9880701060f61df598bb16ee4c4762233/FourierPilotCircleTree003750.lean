import FourierPilotCircleTree003751
import FourierPilotCircleTree003752
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003750
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 7, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003751.state FourierPilotCircleTree003752.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003751.covered FourierPilotCircleTree003752.covered
#print axioms covered
end FourierPilotCircleTree003750
