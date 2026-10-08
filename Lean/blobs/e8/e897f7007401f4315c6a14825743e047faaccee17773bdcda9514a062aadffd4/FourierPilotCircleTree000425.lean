import FourierPilotCircleTree000426
import FourierPilotCircleTree000429
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000425
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![77, 77, 32, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000426.state FourierPilotCircleTree000429.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000426.covered FourierPilotCircleTree000429.covered
#print axioms covered
end FourierPilotCircleTree000425
