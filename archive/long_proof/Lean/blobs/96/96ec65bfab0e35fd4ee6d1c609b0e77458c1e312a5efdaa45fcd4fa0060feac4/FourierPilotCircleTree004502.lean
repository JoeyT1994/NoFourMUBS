import FourierPilotCircleTree004503
import FourierPilotCircleTree004504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004502
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![93, 98, 64, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004503.state FourierPilotCircleTree004504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004503.covered FourierPilotCircleTree004504.covered
#print axioms covered
end FourierPilotCircleTree004502
