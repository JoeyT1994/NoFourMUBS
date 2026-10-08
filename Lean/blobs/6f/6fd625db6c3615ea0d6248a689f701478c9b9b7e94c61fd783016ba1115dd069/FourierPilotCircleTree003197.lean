import FourierPilotCircleTree003198
import FourierPilotCircleTree003199
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003197
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 7, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003198.state FourierPilotCircleTree003199.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003198.covered FourierPilotCircleTree003199.covered
#print axioms covered
end FourierPilotCircleTree003197
